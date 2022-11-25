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