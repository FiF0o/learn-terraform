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
