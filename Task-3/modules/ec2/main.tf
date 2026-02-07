resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.subnet_id

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y nodejs npm
    npm install -g yarn
    npx create-strapi-app strapi --quickstart
  EOF

  tags = {
    Name = "strapi-ec2"
  }
}
