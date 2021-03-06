##############################################################################################
#  https://learn.hashicorp.com/tutorials/terraform/aws-outputs?in=terraform/aws-get-started  #
##############################################################################################

# terraform apply -auto-approve
# terraform destroy -auto-approve

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = var.AWS_PROFILE
  region  = var.AWS_REGION
}

module "common_vars" {
  source = "./mod"
}

# https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_instance" "app_server" {
  ami           = module.common_vars.aws_instance_app_server_ami
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

resource "aws_cloudfront_function" "test" {
  name    = "test"
  runtime = "cloudfront-js-1.0"
  comment = "my function"
  publish = true
  code    = file("${path.module}/cf-function.js")
}
