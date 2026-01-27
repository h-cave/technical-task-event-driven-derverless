module "eventbridge" {
    source = "../eventBridge"

    lambda_arn = data.aws_lambda_function.cron-lambda.arn
    lambda_name = var.lambda_name
  
}