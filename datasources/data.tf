data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-west-2a"

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





