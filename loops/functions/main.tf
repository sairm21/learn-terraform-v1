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
  value = lookup(var.courses, "docker", null) # if docker map is not available then lookup will through null instead of error
}

output "docker_topics_tasks" {
  value = lookup(lookup(var.courses, "docker", null), "topics", null) # if topics key in docker map is not available then lookup will through null instead of error
}

output "docker_topics_tasks_message" {
  value = lookup(lookup(var.courses, "docker", null), "topics", "no topics") # insted of null we can use custom message
}

output "length_4" {
  value = element(var.length, 4) #element will circle the list again from intial point
}

variable "conditions" {
  default = 100
}

output "condition_output" {
  value = var.conditions > 50 ? "enough quantity" : "less quantity"
}