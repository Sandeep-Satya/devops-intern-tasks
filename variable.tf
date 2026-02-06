variable "aws_region" {
  default = "us-east-1"
}


variable "instance_type" {
  default = "t2.micro"
}

variable "my_ip" {
  description = "Your public IP with /32"
}

variable "vpc_id" {
  description = "VPC ID where resources will be created"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}