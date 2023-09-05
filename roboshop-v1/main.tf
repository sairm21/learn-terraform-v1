module "Frontend" {
  source = "./ec2"
  name = "Frontend"
}

module "MongoDB" {
  source = "./ec2"
  name = "MongoDB"
}

module "Catalogue" {
  source = "./ec2"
  name = "Catalogue"
}

module "Redis" {
  source = "./ec2"
  name = "Redis"
}

module "User" {
  source = "./ec2"
  name = "User"
}

module "Cart" {
  source = "./ec2"
  name = "Cart"
}

module "MySQL" {
  source = "./ec2"
  name = "MySQL"
}

module "Shipping" {
  source = "./ec2"
  name = "Shipping"
}

module "RabbitMQ" {
  source = "./ec2"
  name = "RabbitMQ"
}

module "Payment" {
  source = "./ec2"
  name = "Payment"
}

module "Dispatch" {
  source = "./ec2"
  name = "Dispatch"
}