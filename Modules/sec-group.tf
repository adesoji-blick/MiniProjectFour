resource "aws_security_group" "sg_module" {
  name   = "${var.sg_name}-Sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = var.httpport
    to_port     = var.httpport
    protocol    = var.ingress_protocol
    cidr_blocks = var.sg_cidr_block
  }
  ingress {
    from_port   = var.httpport2
    to_port     = var.httpport2
    protocol    = var.ingress_protocol
    cidr_blocks = var.sg_cidr_block
  }

  egress {
    from_port   = var.httpport3
    to_port     = var.httpport3
    protocol    = var.egress_protocol
    cidr_blocks = var.sg_cidr_block
  }

  tags = {
    Name = "${var.sg_name}"
  }
}