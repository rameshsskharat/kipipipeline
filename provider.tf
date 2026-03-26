terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }
}


terraform {
  cloud {
    organization = "kipiorg"
    hostname = app.terraform.io
    workspaces {
      name = "kipipipeline"
    }
  }
}

provider "aws" {
  # Configuration options
  access_key = var.akey
  secret_key = var.skey
  region     = "ap-south-1"
}