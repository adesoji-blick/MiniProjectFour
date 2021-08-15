resource "aws_instance" "ec2_module" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.instance_count
  key_name      = var.key
  # vpc_security_group_ids = [aws_security_group.sg_module.id]
  #   subnet_id       = aws_subnet.subnet_1.id
  #   security_groups = [aws_security_group.tool_server_sg.id]


  tags = {
    Name        = element(var.name, count.index)
    environment = "${var.environment}"
    role        = "${var.role}"
  }
}