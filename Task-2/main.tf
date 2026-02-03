provider "aws" {    
    region = "us-east-1"
}

 resource "aws_instance" "ec2_instance" {
   ami           = "ami-0532be01f26a3de55"
   instance_type = "t3.micro"
   
 }

