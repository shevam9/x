output "instance_ids" {
  value = aws_instance.instances[*].id
}

output "instance_public_ips" {
  value = aws_instance.instances[*].public_ip
}
