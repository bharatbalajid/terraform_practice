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