variable "lambda_name" {
    type = string
    default = "event_driven_function"
}

variable "cloudwatch_retention" {
    type = number
    default = 1
}