variable "upper" {
  default = "lower to upper conversion"
}

output "upper_conversion" {
  value = upper(var.upper)
}

variable "length" {
  default = ["string1", "string2", "string3"]
}

output "length_output" {
  value = length(var.length)
}

output "string_length" {
  value = length(var.upper)
}