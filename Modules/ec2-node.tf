resource "aws_instance" "ec2_module" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  count           = var.instance_count
  key_name        = var.key
  security_groups = var.sg_id
  subnet_id       = var.subnet_id
  # subnet_id       = element(var.subnet_id, count.index)

  tags = {
    Name        = "${var.name}"
    environment = "${var.environment}"
    role        = "${var.role}"
  }

  # tags = {
  #   Name        = element(var.name, count.index)
  #   environment = element(var.environment, count.index)
  #   role        = "${var.role}"
  # }
}