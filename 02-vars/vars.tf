variable "test"{
    default = "testing the output value"
}

output "sample" {
    value = var.test
}

variable "sample"{
    default = "hello world"
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
    default = [
            "raji",
            09,
            true,
            "AWS",
            "DEvops",
            "chinni"
    ]
}

output "ex-list-op" {
    value = "Welcome to ${var.list-ex[2]} Training and this contains  ${var.list-ex[0]} and the trainer name is  ${var.list-ex[5]}"
}

# Declaring a map variable 
variable "ex-map" {
     default = {
        Class = "DevOps",
        Duration = 85
        Trainer  = "Verma", 
        Batch    = "0600AM"
     }
}

output "ex-map" {
    value = "Welcome to ${var.ex-map["Class"]} Training and the duration of the training is ${var.ex-map["Duration"]} hours and the schedule time ${var.ex-map["Batch"]}  "
}

variable "City" {}

output "city" {
    value = "City name is ${var.City}"
}

# Declaring an empty variable 

variable "State" {} # whenit is declared emptym looks for tfvars file for values, or take it from CLI

output "state" {
    value = var.State
}


# outputs are displayed in the alphabetic order of output names.

# cmd to execute when varfile exits; terraform apply -auto-approve -var-file=vars.tfvars
# ; terraform apply -auto-approve -var-file=vars.tfvars -var State="karnataka"; it take karanataka as first priority value
# from she; export TF_VAR_State=jammu 

