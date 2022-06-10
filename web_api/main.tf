module "check_function" {
  source           = "./lambda_function"
  function_name    = "registration-function"
  role             = aws_iam_role.lambda_role.arn
  filename         = "registration_function.py"
  archive_filename = "registration_function_archive_file.zip"
}

#   function_name    = "news-list-get"
#   role             = aws_iam_role.api_gateway_lambda_role.arn
#   filename         = "news_list_get.py"
#   archive_filename = "news_list_get_archive_file.zip"
#   execution_arn    = aws_api_gateway_rest_api.turnip_api.execution_arn
#   method           = "GET"
#   path             = "/news/list"