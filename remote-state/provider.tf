terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }
  }


  backend "s3" {
    bucket       = "remote-state-suresh86s"
    key          = "remote-state-demo"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
provider "aws" {
  region = "us-east-1"
  # Configuration options
}