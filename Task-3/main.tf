module "keypair" {
  source = "./modules/keypair"
}

module "security_group" {
  source = "./modules/security_group"
  my_ip  = var.my_ip
  vpc_id = var.vpc_id
}

module "ec2" {
  source          = "./modules/ec2"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  key_name        = module.keypair.key_name
  subnet_id       = var.subnet_id
  security_group  = module.security_group.sg_id

  depends_on = [module.keypair]
}
