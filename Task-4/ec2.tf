module "vpc" {
  source = "./module/01-vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
}
module "sg" {
  source = "./module/02-sg"

  vpc_id = module.vpc.vpc_id
}
module "alb" {
  source = "./module/03-alb"

  vpc_id         = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnet_ids
  alb_sg_id      = module.sg.alb_sg_id
  instance_id    = module.ec2.instance_id 
}
module "ec2" {
  source = "./module/04-ec2"
  
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  private_subnet_id = module.vpc.private_subnet_ids[0]
  ec2_sg_id         = module.sg.ec2_sg_id
  key_name          = var.key_name
  target_group_arn  = module.alb.target_group_arn
}
