

module "s3_bucket" {
  source  = "./modules/s3"
  bucket_name = var.bucket_name
}

module "iam_role" {
  source  = "./modules/iam"
  s3_bucket_arn = module.s3_bucket.bucket_arn
}

module "ec2_instance" {
  source               = "./modules/ec2"
  ami_id               = data.aws_ami.ubuntu.id
  instance_type        = var.instance_type
  key_name             = var.key_name
  iam_instance_profile = module.iam_role.instance_profile_name
  
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


