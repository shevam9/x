
module "vpc" {
  source           = "./modules/vpc"
  vpc_cidr         = var.vpc_cidr
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
}

module "bastion" {
  source           = "./modules/ec2"
  subnet_id        = module.vpc.public_subnets[0]
  instance_count   = 1
  instance_type    = var.bastion_instance_type
  ami              = var.ami
  key_name         = var.key_name
  security_groups  = [module.vpc.bastion_sg_id]
  instance_name    = "BastionHost"
  policy_arns      = var.bastion_policy_arns
}

module "private_instances" {
  source           = "./modules/ec2"
  subnet_id        = module.vpc.private_subnets[0]
  instance_count   = var.private_instance_count
  instance_type    = var.private_instance_type
  ami              = var.ami
  key_name         = var.key_name
  security_groups  = [module.vpc.private_instance_sg_id]
  instance_name    = "PrivateInstance"
  policy_arns      = var.private_policy_arns
}

module "iam_role_bastion" {
  source           = "./modules/iam"
  role_name        = "bastion_role"
  policy_arns      = var.bastion_policy_arns
}

module "iam_role_private" {
  source           = "./modules/iam"
  role_name        = "private_instance_role"
  policy_arns      = var.private_policy_arns
}


