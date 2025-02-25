output "lambda_function_name" {
  value = aws_lambda_function.lambda_function.function_name
}

output "api_gateway_url" {
  value = aws_apigatewayv2_api.lambda_api.api_endpoint
}