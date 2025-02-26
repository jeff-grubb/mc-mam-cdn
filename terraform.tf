terraform {
  required_providers {
    fastly = {
      source  = "fastly/fastly"
      version = ">= 5.13.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.67.0"
    }
  }
  required_version = ">= 0.13"
}
