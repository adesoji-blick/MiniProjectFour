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

  ami           = data.aws_ami.java-ami.id
  instance_type = var.instance_type
  key_name      = var.ssh_key
  user_data     = data.template_file.ansible_installation.template
  # vpc_security_group_ids = [aws_security_group.sg_module.id]
  # ami           = data.aws_ami.java-ami[count.index].id
  # count         = var.instance_count
  # subnet_id              = aws_subnet.training_subnet[count.index].id
  # vpc_security_group_ids = [aws_security_group.sg_module[count.index].id]

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
  httpport       = var.httpport
  httpport2      = var.httpport2
  protocol       = var.protocol
  sg-name        = var.sg-name
  # name           = element(var.tag_name, count.index)
}
