terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
  cloud {
    organization = "example-org-6c6356"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}


resource "aws_iam_user" "demouser" {
  name = "terraformuser"
  path = "/system/"

  tags = {
    name = "terraformuser"
  }
}
