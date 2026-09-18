terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "terraform-aws-lab-state-328e9a24"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
