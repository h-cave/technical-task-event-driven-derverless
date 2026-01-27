module "lambda_function" {
  source = "../modules/lambda"

  lambda_name = "event_driven_function"
}