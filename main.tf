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

  ami                    = data.aws_ami.java-ami.id
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  user_data              = data.template_file.ansible_installation.template
  vpc_security_group_ids = ["aws_security_group.sg_module.id"]
  subnet_id              = "aws_subnet.vpc_module_subnet[count.index].id"

  tags = {
    Name        = var.tag_name2
    environment = "${var.environment2}"
    role        = "${var.role2}"
  }
}

module "App-Project" {
  source                 = "./Modules"
  instance_count         = var.instance_count
  ami_id                 = data.aws_ami.java-ami.id
  key                    = var.ssh_key
  instance_type          = var.instance_type
  name                   = var.tag_name
  environment            = var.environment
  role                   = var.role
  sg_name                = var.sg_name
  httpport               = var.httpport
  httpport2              = var.httpport2
  httpport3              = var.httpport3
  ingress_protocol       = var.ingress_protocol
  egress_protocol        = var.egress_protocol
  sg_cidr_block          = var.sg_cidr_block
  vpc_name               = var.vpc_name
  vpc_cidr_block         = var.vpc_cidr_block
  network_instance_count = var.network_instance_count
  subnet_cidr_block      = var.subnet_cidr_block
  availability_zone      = var.availability_zone
  map_public_ip          = var.map_public_ip
  rt_cidr_block          = var.rt_cidr_block
  sg_id                  = ["aws_security_group.sg_module.id"]
  subnet_id              = ["aws_subnet.vpc_module_subnet[count.index].id"]
  vpc_id                 = var.vpc_id
}