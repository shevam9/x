
module "security_groups" {
  source           = "./modules/security-group"
  vpc_id           = var.vpc_id
  security_groups  = var.security_groups
  tags             = var.common_tags
}

module "ec2_instances" {
  source           = "./modules/ec2-instance"
  instance_details = var.instance_details
  bu               = var.bu
  ticket           = var.ticket
  owner            = var.owner

  # Pass the security group IDs from the SG module
  security_group_ids = module.security_groups.security_group_ids
}

