output "ec2_instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = module.ec2_instances.instance_ids
}

output "ec2_public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = module.ec2_instances.public_ips
}

output "ec2_private_ips" {
  description = "The private IPs of the EC2 instances"
  value       = module.ec2_instances.private_ips
}

output "ec2_security_group_ids" {
  description = "The security group IDs attached to the EC2 instances"
  value       = module.ec2_instances.security_group_ids
}

output "ec2_instance_arns" {
  description = "The ARNs of the EC2 instances"
  value       = module.ec2_instances.instance_arns
}

output "ec2_instance_availability_zones" {
  description = "The availability zones of the EC2 instances"
  value       = module.ec2_instances.instance_availability_zones
}

output "ec2_instance_tags" {
  description = "The tags associated with the EC2 instances"
  value       = module.ec2_instances.instance_tags
}

output "security_group_ids" {
  description = "The IDs of the created security groups"
  value       = module.security_groups.security_group_ids
}

