# Call through to create an event bridge with lambda source 
module "eventbridge" {
    source = "../eventBridge"

    lambda_arn = aws_lambda_function.event_driven_function.arn
    lambda_name = var.lambda_name

    depends_on = [
        aws_lambda_function.event_driven_function
  ]
  
}