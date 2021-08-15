variable "region" {
  default = "ca-central-1"
}

variable "profile" {
  default = "default"
}

variable "ssh_key" {
  default = "devOps-Project"
}

variable "ami_filter" {
  default = "packer-java-ami"
  # default = ["packer-amazon-linux-ami1", "packer-amazon-linux-ami2", "packer-ubuntu-ami"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = "3"
}

variable "tag_name2" {
  default = "Tool Server"
  # default = ["Jenkins server", "Dev-App server", "Prod-App server"]
}

variable "tag_name" {
  # default = "App Server"
  default = ["Jenkins server", "Dev-App server", "Prod-App server"]
}

variable "sg-name" {
  default = "App Project"
  # default = ["Jenkins server", "Dev-App server", "Prod-App server"]
}

variable "environment" {
  default = "development"
}

variable "environment2" {
  default = "project"
}

variable "role" {
  default = "Ansible-user"
}

variable "role2" {
  default = "devops-user"
}

variable "httpport" {
  default = "22"
}

variable "httpport2" {
  default = "8080"
}

variable "protocol" {
  default = "tcp"
}

# variable "subnet_cidr_block" {
#   default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
# }

# variable "rt_cidr_block" {
#   default = "0.0.0.0/24"
# }

# variable "sg_cidr_block" {
#   default = "0.0.0.0/0"
# }

# variable "availability_zone" {
#   default = ["ca-central-1a", "ca-central-1b", "ca-central-1a"]
# }

# variable "sg_name" {
#   default = ["tool_server_sg1", "tool_server_sg2", "build_server_sg"]
# }

# variable "ingress_protocol" {
#   default = "tcp"
# }

# variable "egress_protocol" {
#   default = "-1"
# }

# variable "port_id" {
#   default = ["80", "80", "8080"]
# }