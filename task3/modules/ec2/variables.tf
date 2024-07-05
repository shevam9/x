variable "subnet_id" {
  description = "The subnet ID to launch instances in"
  type        = string
}

variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
}

variable "instance_type" {
  description = "Instance type to use for the instances"
  type        = string
}

variable "ami" {
  description = "AMI ID for the instances"
  type        = string
}

variable "key_name" {
  description = "The key name to use for SSH access"
  type        = string
}

variable "security_groups" {
  description = "List of security groups to associate with the instances"
  type        = list(string)
}

variable "instance_name" {
  description = "Name to use for the instances"
  type        = string
}

variable "policy_arns" {
  description = "List of IAM policy ARNs to attach to the instance profile"
  type        = list(string)
}

