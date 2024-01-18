provider "aws" {
  region = "us-east-2"  
}


resource "aws_instance" "example" {
  count = length(var.instance_tags)
  ami           = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  tags = var.instance_tags[count.index]
}