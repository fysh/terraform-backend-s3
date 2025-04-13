# How to connect this module 

## main.tf
locals {
  tags = {
    environment = var.environment
    project     = var.project
    terraform   = true
  }
}

## Examples
#Local connect to module
module "terraform_tfstate" {
  source          = "../../modules/terraform_tfstate"
  bucket_name     = "${var.project}-tfstate-${var.environment}"
  tags            = local.tags
}

# Remote connect to module
module "terraform_tfstate" {
  source = "github.com/fysh/terraform-modules-collection"
  bucket_name     = "${var.project}-tfstate-${var.environment}"
  tags            = local.tags
}

##variables.tf
variable "aws_region" {}
variable "environment" {}
variable "project" {}