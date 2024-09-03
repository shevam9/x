
output "security_group_ids" {
  description = "The IDs of the created security groups."
  value       = [for sg in aws_security_group.this : sg.id]
}


