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

variable "insurance" {
  default = "general insurance"
}

variable "general_insurance" {
  default = ["car","bike","health"]
}

variable "insurance_details" {
  default = {
    bike = {
      registration = "mh075824"
      mobile = 7508509501
      previous_poloicy = "expired"
    }
    health = {
      adults = 2
      children = 2
      pincode = 560259
      mobile = 7508509501
    }
  }
}

output "gen_ins_types" {
  value = var.general_insurance[2]
}

output "insurance_details" {
  value = var.insurance_details["health"]
}