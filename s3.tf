#create random pet name
resource "random_pet" "balaji" {
  length = 7
resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    dev  = "my-blue-app"
    qa   = "my-green-app"
    prod = "my-red-app"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    Eachvalue   = each.value
  }
}