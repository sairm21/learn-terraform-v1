variable "name" {
  default = {
    emp_name = "sairam"
  }
}

variable "details" {
  default = {
    emp_id = 4001
    designation = "sr.DevOps Associate"
  }
}

output "employee_details" {
  value = merge(var.name, var.details)
}