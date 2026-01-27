resource "aws_cloudwatch_log_group" "event_driven_function_cloudwatch_log" {
  name = "/aws/lambda/${var.lambda_name}"

  retention_in_days = var.cloudwatch_retention

  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}