terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.94"
    }
  }
}
provider "aws" {
  region = var.aws_region
}