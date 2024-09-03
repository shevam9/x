module "s3_bucket" {
  source = "./modules/s3-bucket"

  bucket_name         = var.bucket_name
  enable_versioning   = var.enable_versioning
  sse_algorithm       = var.sse_algorithm
  enable_policy       = var.enable_policy
  bucket_policy       = var.bucket_policy
  tags                = var.tags
}
