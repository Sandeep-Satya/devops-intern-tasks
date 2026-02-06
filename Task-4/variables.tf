variable "region" {}

variable "vpc_cidr" {}
variable "public_subnet_cidrs" { type = list(string) }
variable "private_subnet_cidrs" { type = list(string) }
variable "azs" { type = list(string) }

variable "instance_type" {}
variable "ami_id" {}
variable "key_name" {}
