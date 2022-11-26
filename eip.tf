# Create Elastic ip
/*resource "aws_eip" "dev-eip" {
  instance   = aws_instance.my-dev-app.id
  vpc        = true
  depends_on = [aws_internet_gateway.vpc-dev-igw]

}*/