terraform {
  required_version = ">= 1.3.0"  # Ensuring compatibility with Terraform 1.3+

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider to use the EC2 IAM role
provider "aws" {
  region = "ap-south-1"

  default_tags {
    tags = {
      Project     = "Super Mario EKS Deployment"
      Environment = "Production"
    }
  }
}

