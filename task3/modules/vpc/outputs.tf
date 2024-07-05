output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "bastion_sg_id" {
  value = aws_security_group.bastion.id
}

output "private_instance_sg_id" {
  value = aws_security_group.private_instance.id
}
