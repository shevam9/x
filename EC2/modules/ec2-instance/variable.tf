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

variable "security_group_ids" {
  description = "List of security group IDs to attach to EC2 instances."
  type        = list(string)
}


