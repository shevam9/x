variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "bastion_instance_type" {
  description = "Instance type for bastion host"
  type        = string
}

variable "private_instance_type" {
  description = "Instance type for private instances"
  type        = string
}

variable "private_instance_count" {
  description = "Number of private instances"
  type        = number
}

variable "ami" {
  description = "AMI ID for the instances"
  type        = string
}

variable "key_name" {
  description = "The key name to use for SSH access"
  type        = string
}

variable "bastion_policy_arns" {
  description = "List of IAM policy ARNs for the bastion host"
  type        = list(string)
}

variable "private_policy_arns" {
  description = "List of IAM policy ARNs for the private instances"
  type        = list(string)
}

