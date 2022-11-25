terraform {
  required_version = "~> 0.14"
  required_providers {
    # AWS Provider
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.41"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}