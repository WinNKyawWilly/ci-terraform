terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
  profile = "wnk-master"
  region  = "ap-southeast-1"
}
