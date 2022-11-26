terraform {
  required_providers {
    # AWS Provider
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.41"
    }
    # Random Provider
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}
#provider for us-east-1 region
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
# provider for us-west-1 region
provider "aws" {
  profile = "default"
  region  = "us-west-1"
  alias   = "aws-west-1"
} 