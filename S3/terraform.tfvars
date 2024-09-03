bucket_name         = "shevam-store"

enable_versioning   = true
sse_algorithm       = "AES256"
enable_policy       = false  # Set to true if a custom bucket policy is required

tags = {
  Environment = "prod"
  Project     = "Pro"
}

region = "us-east-1"