variable "test"{
    default = "testing the output value"
}

output "sample" {
    value = var.test
}

output "sample-op1" {
    value = "Value is ${var.sample}"
}

# A variable can be accessed with or without ${} only if the variable is called. But in case if it is needed to add with some other strings then we need to use double
# There is no concept of single quores in terraform.

variable "number" {
    default = 100 
}

output "number" {
    value = var.number  
}

variable "list-ex"{
    defualt = [
            "raji",
            09,
            true
    ]
}
