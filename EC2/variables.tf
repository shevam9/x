variable "vpc_id" {
  description = "The ID of the VPC where the security groups and EC2 instances will be created."
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

variable "common_tags" {
  description = "Common tags to apply to all resources."
  type        = map(string)
  default     = {}
}

variable "instance_details" {
  description = "Details of the EC2 instances to be created."
  type = map(object({
    ami_id              = string
    instance_type       = string
    public_ip           = bool
    key_name            = string
    subnet_id           = string
    volume_size         = number
    volume_type         = string
    name                = string
    security_group_ids  = list(string)
    tags                = map(string)
  }))
}

variable "bu" {
  description = "Business unit tags for instances."
  type        = map(string)
}

variable "ticket" {
  description = "Ticket tags for instances."
  type        = map(string)
}

variable "owner" {
  description = "Owner tags for instances."
  type        = map(string)
}


variable "region" {
  description = "Name of region"
  type        = string
  default     = ""
}
