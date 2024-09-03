output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.id]
}

output "public_ips" {
  description = "The public IPs of the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.public_ip]
}

output "private_ips" {
  description = "The private IPs of the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.private_ip]
}

output "security_group_ids" {
  description = "The security group IDs attached to the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.vpc_security_group_ids]
}

output "instance_arns" {
  description = "The ARNs of the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.arn]
}

output "instance_availability_zones" {
  description = "The availability zones of the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.availability_zone]
}

output "instance_tags" {
  description = "The tags associated with the EC2 instances"
  value       = [for instance in aws_instance.ec2 : instance.tags]
}





