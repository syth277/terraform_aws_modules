terraform {
  backend "s3" {
    encrypt = true
    bucket  = var.s3_terraform_bucket
    key     = "${var.env}/terraform.tfstate"
    region  = var.region
  }
}

##------------------------------------------------------------------------


##------------------------------------------------------------------------
#Sourcing Variables
variable "env" {
  description = "Environment name"
}

variable "region" {
  description = "AWS region"
}

variable "s3_terraform_bucket" {
  description = "S3 bucket name for storing Terraform state"
}