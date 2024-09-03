variable "vpc_id" {
  description = "The ID of the VPC where the security groups will be created."
  type        = string
}

variable "security_groups" {
  description = "A map of security group configurations."
  type = map(object({
    name            = string
    create_sg       = bool
    from_port       = number
    to_port         = number
    protocol        = string
    cidr_blocks     = list(string)
  }))
}

variable "tags" {
  description = "Tags to apply to the security groups."
  type        = map(string)
}
