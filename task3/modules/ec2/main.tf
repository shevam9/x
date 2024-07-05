resource "aws_instance" "instances" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  iam_instance_profile = aws_iam_instance_profile.instance_profile.name

  tags = {
    Name = "${var.instance_name}-${count.index}"
  }

  vpc_security_group_ids = var.security_groups
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = var.instance_name
  role = aws_iam_role.role.name
}

resource "aws_iam_role" "role" {
  name = var.instance_name

  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  count      = length(var.policy_arns)
  role       = aws_iam_role.role.name
  policy_arn = element(var.policy_arns, count.index)
}

