# Create a vpc in east region
resource "aws_vpc" "myvpceast" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "myvpceast"
  }
}
# Create a vpc in west region
# resource "aws_vpc" "myvpcwest1" {
#   cidr_block = "10.0.0.0/16"
#   provider   = aws.aws-west-1
#   tags = {
#     "Name" = "myvpcwest1"
#   }
# }