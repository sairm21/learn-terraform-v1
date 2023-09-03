variable "sample" {
  default = 100
}

variable "demo" {
  default = "demo"
}

output "sam" {
  value = var.sample
}

output "dem" {
  value = var.demo
}


output "variable_in_strig" {
  value = "value of demo is ${var.demo}"
}