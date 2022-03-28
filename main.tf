terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
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


resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 10

  tags = {
    Name = "TerraformVolume"
  }
}
