variable "instance_tags" {
  description = "Tags for EC2 instances"
  type        = list(map(string))
  default = [
    { Name = "myinstance", Label = "Dev" },
    { Name = "myinstance", Label = "Prod" },
    { Name = "myinstance", Label = "Test" },
    
  ]
}

variable "ami_id" {
  description = "Your AMI ID"
  default = "ami-0cd3c7f72edd5b06d"
}

variable "instance_type" {
  description = "Your Instance Type"
  default = "t2.micro"
}

variable "subnet_id" {
  description = "Your subnet ID"
  default = "subnet-01df44e92246404d9"
}
