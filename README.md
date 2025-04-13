# How to connect this module 

## main.tf
```
locals {
  tags = {
    environment = var.environment
    project     = var.project
    terraform   = true
  }
}
```
# Examples
## Local connect to module
```
module "terraform_tfstate" {
  source          = "./modules/terraform_tfstate"
  bucket_name     = "${var.project}-tfstate-${var.environment}"
  tags            = local.tags
}
```
## Remote connect to module
```
module "terraform_tfstate" {
  source = "github.com/fysh/terraform-backend-s3?ref=v0.1"
  bucket_name     = "${var.project}-tfstate-${var.environment}"
  tags            = local.tags
}
```
## Define variables
```
variable "aws_region" {}
variable "environment" {}
variable "project" {}
```
## Optional for variables-general.auto.tfvars
```
aws_region  = "eu-central-1"
environment = "production"
project     = "project"
```
## Outputs example (see all list in module outputs.tf)
```
output "bucket_name" {
  value = module.terraform_tfstate.aws_bucket_name
}
```
