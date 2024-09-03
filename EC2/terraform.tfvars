vpc_id = "vpc-03498411996872a9e"

instance_details = {
  "instance1" = {
    ami_id            = "ami-0e86e20dae9224db8"
    instance_type     = "t2.micro"
    public_ip         = true
    key_name          = "R"
    subnet_id         = "subnet-01f76ea6478faf308"
    volume_size       = 8
    volume_type       = "gp2"
    name              = "Instance1"
    security_group_ids = []
    tags              = { "Env" = "Dev" }
  }
}

security_groups = {
  "sg1" = {
    create_sg   = true
    name        = "Instance1-SG"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

bu = {
  "instance1" = "BusinessUnit1"
}

ticket = {
  "instance1" = "TICKET-1234"
}

owner = {
  "instance1" = "Owner1"
}

common_tags = {
  Project = "MyProject"
}

region = "us-east-1"