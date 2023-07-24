provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1" 
}

resource "aws_instance" "dev" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  count = 3
  tags = {
    Name = "dev-${count.index}"
  }
  vpc_security_group_ids = ["sg-0993f8f3e84a36366"]
}

resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"

    cidr_blocks = ["170.78.250.10/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh"
  }
}
