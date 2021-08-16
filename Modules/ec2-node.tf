## creating ec2 instance from module #

resource "aws_instance" "ec2_module" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key
  security_groups = var.sg_id
  subnet_id       = var.subnet_id
  # security_groups = aws_security_group.app_sg.id

  tags = {
    Name        = "${var.name}"
    environment = "${var.environment}"
    role        = "${var.role}"
  }
}
