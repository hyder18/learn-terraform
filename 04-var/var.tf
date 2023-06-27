variable "sample" {
  default = "hello world"
}

output "sample" {
  value = var.sample
}

variable "hyder" {}

output "hyder" {
  value = var.hyder
}

variable "sample5" {
  default = "hyder"
}

variable "sample6" {
  default = [
  "hello",
    "world",
    1000,
    true
  ]
}

variable "sample7" {
  default = {
    name = "shami"
    job = "working"
    salary = 25000
    boolean = true
  }
}

output "types" {
  value = "variable sample5 - ${var.sample5},first value of the list ${var.sample6[0]},boolean value of map - ${var.sample7["boolean"]}"
}

variable "d1" {
  default = [
    {
      course_name = "aws"
      trainer_name = "hyder"
    },
    {
      course_name = "devops"
      trainer_name = "shami"
    }
  ]
}
output "course_name" {
  value = var.d1.*.trainer_name
}