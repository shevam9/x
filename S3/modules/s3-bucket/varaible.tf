variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}



variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use (AES256 or aws:kms)"
  type        = string
  default     = "AES256"
}

variable "enable_policy" {
  description = "Enable a custom bucket policy on the S3 bucket"
  type        = bool
  default     = false
}

variable "bucket_policy" {
  description = "Custom bucket policy JSON"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}

