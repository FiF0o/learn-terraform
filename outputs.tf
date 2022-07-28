# terraform output cmd
# outputs generated from main.tf aws_instance.app_server

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "cf_function_arn" {
  value       = aws_cloudfront_function.test.arn
}

# Lambda & APIG
output "lambda_bucket_name" {
  description = "Name of the S3 bucket used to store function code."

  value = aws_s3_bucket.lambda_bucket.id
}

output "function_name" {
  description = "Name of the Lambda function."

  value = aws_lambda_function.hello_world.function_name
}

# output "base_url" {
#   description = "Base URL for API Gateway stage."

#   value = aws_apigatewayv2_stage.lambda.invoke_url
# }