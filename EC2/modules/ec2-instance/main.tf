resource "aws_instance" "ec2" {
  for_each                    = var.instance_details
  ami                         = each.value.ami_id
  instance_type               = each.value.instance_type
  associate_public_ip_address = each.value.public_ip
  key_name                    = each.value.key_name
  subnet_id                   = each.value.subnet_id

  vpc_security_group_ids = var.security_group_ids

  root_block_device {
    volume_size = each.value.volume_size
    volume_type = each.value.volume_type
  }

  tags = merge(
    {
      Name   = each.value.name,
      BU     = var.bu[each.key],
      Ticket = var.ticket[each.key],
      Owner  = var.owner[each.key]
    },
    each.value.tags
  )
}

