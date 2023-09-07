module "roboshop_instances" {
  source = "./ec2"
  name = each.key
  for_each = var.instances
}

variable "instances" {
  default = {
    Frontend ={}
    MongoDB ={}
    Catalogue ={}
    Redis ={}
    User ={}
    Cart ={}
    MySQL ={}
    Shipping ={}
    RabbitMQ ={}
    Payment ={}
    Dispatch ={}
  }
}