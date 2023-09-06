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

variable "courses" {
  default = {
    terraform = {
      name = "terraform with any cloud"
      topics = ["terraform", "aws basics", "azure adminstrator"]
    }
    devops = {
      name = "devops"
      topics = ["aws", "terraform", "ansible", "containers"]
    }
    docker = {
      name = "docker"
    }
  }
}

output "devops_topics" {
  value = var.courses["devops"]["topics"]
}

output "docker_topics" {
  value = lookup(var.courses, "docker", null)
}