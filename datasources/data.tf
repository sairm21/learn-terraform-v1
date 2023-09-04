data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "spot_price_id" {
  value = data.aws_ec2_spot_price.example.id
}

output "spot_price" {
  value = data.aws_ec2_spot_price.example.spot_price
}

output "spot_price_time_stamp" {
  value = data.aws_ec2_spot_price.example.spot_price_timestamp
}

data "aws_security_group" "selected" {
  name = "allow-all"
}

output "sg_description" {
  value = data.aws_security_group.selected.description
}

output "sg_id" {
  value = data.aws_security_group.selected.id
}

data "aws_ami" "example" {
  owners = ["973714476881"]
}

output "ami_data" {
  value = data.aws_ami.example.creation_date
}





