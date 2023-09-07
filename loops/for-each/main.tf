resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = lookup(each.value, "instance_type", "t3.micro")
  for_each = var.instances

  tags = {
    Name = each.key
  }
}

data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent = true
}

variable "instances" {
  default = {
    frontend= {
      name = "frontend"
      }
    mogodb= {
      name = "mongodb"
      instance_type = "t3.nano"
    }
    catalogue= {
      name = "catalogue"
      instance_type = "t3.small"
    }
  }
}