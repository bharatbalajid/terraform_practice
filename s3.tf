# # to create random pet name
resource "random_pet" "balaji" {
  length = 7


}
# # create a s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket   = random_pet.balaji.id
  provider = aws.aws-west-1
  # # region = "us-east-1"  
  # # acl    = "public-read"

}