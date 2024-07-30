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
     # {
      #  Action = [
         # "ec2:CreateSnapshot",
        #  "ec2:CreateTags",
       #   "ec2:DeleteSnapshot"
      #  ],
     #   Effect   = "Allow",
     #   Resource = "*",
     # },
      {
        Action   = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject"
        ],
        Effect   = "Allow",
        Resource = [
          "arn:aws:s3:::hclaa",
          "arn:aws:s3:::hclaa/*"
        ],  
      },
    ],
  })
}

resource "aws_iam_role_policy_attachment" "ec2_backup_policy_attachment" {
  policy_arn = aws_iam_policy.ec2_backup_policy.arn
  role       = aws_iam_role.ec2_backup_role.name
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_instance_profile"
  role = aws_iam_role.ec2_backup_role.name
}


