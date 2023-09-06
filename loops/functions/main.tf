variable "upper" {
  default = "lower to upper conversion"
}

output "upper_conversion" {
  value = upper(var.upper)
}