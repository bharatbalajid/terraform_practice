# to create random pet name
resource "random_pet" "balaji" {
  length    = 8
  

}
# create a s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = random_pet.balaji.id
# region = "us-east-1"  
# acl    = "public-read"

}