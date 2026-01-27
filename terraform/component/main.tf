module "lambda_function" {
  source = "../modules/lambda"

  lambda_name = "event_driven_function"

  cloudwatch_retention = var.cloudwatch_retention
}