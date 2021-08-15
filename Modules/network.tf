# VPC Network Creation Module #

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "App-project VPC"
  cidr = "10.0.0.0/16"

  azs             = ["ca-central-1a", "ca-central-1b"]
 # private_subnets = ["10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]

  # enable_nat_gateway = false
  # enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

# provider "aws" {
#   profile = var.profile
#   region  = var.region
# }