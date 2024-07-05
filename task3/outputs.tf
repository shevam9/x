
output "bastion_public_ip" {
  value = module.bastion.instance_public_ips[0]
}

output "private_instance_ids" {
  value = module.private_instances.instance_ids
}


