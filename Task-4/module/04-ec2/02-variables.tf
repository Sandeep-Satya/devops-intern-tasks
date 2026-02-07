variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "ec2_sg_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "target_group_arn" {
  type = string
}

variable "app_port" {
  type    = number
  default = 1337
}
