resource "aws_security_group" "this" {
  for_each = { for sg_key, sg_value in var.security_groups : sg_key => sg_value if sg_value.create_sg }

  name   = each.value.name
  vpc_id = var.vpc_id

  ingress {
    from_port   = each.value.from_port
    to_port     = each.value.to_port
    protocol    = each.value.protocol
    cidr_blocks = each.value.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    {
      Name = each.value.name,
    },
    var.tags
  )
}




