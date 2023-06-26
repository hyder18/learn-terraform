variable "sample" {
  default = "hello world"
}

output "sample" {
  value = "var.hello world"
}

variable "hyder" {}

output "hyder" {
  value = "var.hyder"
}