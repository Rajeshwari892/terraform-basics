variable "test"{
    default = "testing the output value"
}

output "sample" {
    value = var.test
}