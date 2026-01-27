resource "aws_cloudwatch_log_group" "event_driven_function_cloudwatch_log" {
  name = "/aws/lambda/event_driven_function"

  retention_in_days = 1

  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}