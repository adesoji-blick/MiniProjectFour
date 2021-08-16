terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

resource "aws_instance" "mini_project4" {

  ami             = data.aws_ami.java-ami.id
  instance_type   = var.instance_type
  key_name        = var.ssh_key
  user_data       = data.template_file.ansible_installation.template
  security_groups = [aws_security_group.app_sg.id]
  subnet_id       = aws_subnet.app_vpc_subnet.id
  # subnet_id       = "aws_subnet.app_vpc_subnet[count.index].id"

  tags = {
    Name        = var.tag_name2
    environment = "${var.environment2}"
    role        = "${var.role2}"
  }
}

module "App-Project" {
  source         = "./Modules"
  instance_count = var.instance_count
  ami_id         = data.aws_ami.java-ami.id
  key            = var.ssh_key
  instance_type  = var.instance_type
  name           = var.tag_name
  environment    = var.environment
  role           = var.role
  sg_id          = [aws_security_group.app_sg.id]
  subnet_id      = aws_subnet.app_vpc_subnet.id
}