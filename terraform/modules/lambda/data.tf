data "aws_lambda_function" "cron-lambda" {
  function_name = "event_driven_function" // Real world this lambda could be a bool value in ssm with deployed or not 
}

