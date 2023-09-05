terraform {
  backend "s3" {
    bucket = "terraform-remotestate-backend"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

output "demo" {
  value = "helloworld"
}