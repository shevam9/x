provider "aws" {
  region = "us-west-1" # Set your desired AWS region
}

resource "aws_s3_bucket" "bucket" {
  bucket = "hcla" # Set your desired bucket name
  
}
     

   resource "aws_iam_role" "ec2_backup_role" {
  name = "ec2-backup-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy" "ec2_backup_policy" {
  name        = "ec2-backup-policy"
  description = "Permissions for EC2 instances to take backups and upload to S3"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "ec2:CreateSnapshot",
          "ec2:CreateTags",
          "ec2:DeleteSnapshot"
        ],
        Effect   = "Allow",
        Resource = "*",
      },
      {
        Action   = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListObject"
        ],
        Effect   = "Allow",
        Resource = aws_s3_bucket.bucket.arn,
      },
    ],
  })
}

resource "aws_iam_role_policy_attachment" "ec2_backup_policy_attachment" {
  policy_arn = aws_iam_policy.ec2_backup_policy.arn
  role       = aws_iam_role.ec2_backup_role.name
}

data "aws_ami" "ubuntu" {
  most_recent = true
  # owners      = ["d5d6565432de5e6dba2d167435ac30ef9d5c94d281e82f7f0b6c386276b9a28c"]  # Canonical's AWS account ID
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


resource "aws_instance" "ec2_s3" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type   
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  key_name = var.key_name
  
  tags = {
    Name = "EC2 Instance"
  }
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_instance_profile"
  role = aws_iam_role.ec2_backup_role.name
}        