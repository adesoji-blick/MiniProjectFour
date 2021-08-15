## ec2-node Module Variables #
variable "ami_id" {}
variable "instance_type" {}
variable "instance_count" {}
variable "key" {}
variable "sg_id" {}
variable "subnet_id" {}
variable "name" {}
variable "environment" {}
variable "role" {}

## sec-group Module Variables #
variable "sg_name" {}
variable "vpc_id" {}
variable "httpport" {}
variable "httpport2" {}
variable "httpport3" {}
variable "ingress_protocol" {}
variable "egress_protocol" {}
variable "sg_cidr_block" {}

## network Module Variables #
variable "vpc_cidr_block" {}
variable "vpc_name" {}
variable "network_instance_count" {}
variable "subnet_cidr_block" {}
variable "availability_zone" {}
variable "map_public_ip" {}
variable "rt_cidr_block" {}
