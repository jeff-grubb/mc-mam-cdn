#data "aws_ssm_parameter" "FastlyToken" {
#  provider = aws.ue1
#  name     = "/fastly/account/api_token"
#}

# Configure the Fastly Provider
provider "fastly" {
  #api_key = data.aws_ssm_parameter.FastlyToken.value
}

# Configure the AWS Provider
#provider "aws" {
#  region = "us-east-1"
#  alias  = "ue1"
#}
