resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id = var.public_subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids = [var.ec2_sg_id]
  key_name               = var.key_name

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "strapi-ec2"
  }
}
