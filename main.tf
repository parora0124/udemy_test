terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "pankaj_test"

    workspaces {
      name = "udemy_test"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

resource "aws_s3_bucket" "test" {
    bucket_prefix = "test-"
  
}