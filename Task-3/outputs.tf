output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "ssh_command" {
  value = "ssh -i strapi-key.pem ubuntu@${module.ec2.public_ip}"
}

output "key_name" {
  value = module.keypair.key_name
}