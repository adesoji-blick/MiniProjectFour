resource "aws_security_group" "sg_module" {
  name = "${var.sg-name}-Sg"

  ingress {
    from_port   = var.httpport
    to_port     = var.httpport
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.httpport2
    to_port     = var.httpport2
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.sg-name}"
  }
}