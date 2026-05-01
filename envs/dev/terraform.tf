terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Uncomment when S3 backend is bootstrapped
  # backend "s3" {
  #   bucket   = "my-terraform-state-bucket"
  #   key      = "dev/terraform.tfstate"
  #   region   = "us-east-1"
  #   encrypt  = true
  # }
}

provider "aws" {
  region = var.aws_region
}