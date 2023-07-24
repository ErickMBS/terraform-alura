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
}
