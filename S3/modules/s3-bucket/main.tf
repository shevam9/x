resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags   = var.tags

  # Optional bucket policy
  lifecycle {
    prevent_destroy = false
  }
}

# Versioning configuration
resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }
}

# Server-side encryption configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}

# Optional bucket policy
resource "aws_s3_bucket_policy" "this" {
  count  = var.enable_policy ? 1 : 0
  bucket = aws_s3_bucket.this.id
  policy = var.bucket_policy
}


