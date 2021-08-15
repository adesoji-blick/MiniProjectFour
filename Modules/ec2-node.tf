resource "aws_instance" "ec2_module" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  count                  = var.instance_count
  key_name               = var.key
  vpc_security_group_ids = var.sg_id
  subnet_id              = element(var.subnet_id, count.index)

  tags = {
    Name        = element(var.name, count.index)
    environment = element(var.environment, count.index)
    role        = "${var.role}"
  }
}