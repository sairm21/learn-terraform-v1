resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  count = length(var.instances)

  tags = {
    Name = "HelloWorld"
  }
}

data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent = true
}

variable "instances" {
  default = ["frontend", "catalogue", "user"]
}