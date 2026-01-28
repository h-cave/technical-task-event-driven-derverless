# Cloudwatch event rule and schedule
resource "aws_cloudwatch_event_rule" "test_lambda_event" {
  name                = "TestEventLambda"
  description         = "Hit lambda every 10 minutes"
  schedule_expression = "rate(10 minutes)"
}

# Links the rule to the lambda and descibes the payload
resource "aws_cloudwatch_event_target" "cloudwatch_event_target" {
  arn  = var.lambda_arn
  rule = aws_cloudwatch_event_rule.test_lambda_event.id

  input_transformer {
    input_template = <<EOF
{
  "name": "gary",
  "age": "20"
}
EOF
  }
}
## Allows execution of lambda from event bridge 
resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowExecutionFromEventBridge"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.test_lambda_event.arn
}