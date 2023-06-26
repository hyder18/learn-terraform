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