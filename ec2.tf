# Create a EC2 instance
resource "aws_instance" "my-dev-app" {
  ami             = "ami-0b0dcb5067f052a63"
  instance_type   = "t2.micro"
  key_name        = "mytfkey"
  subnet_id       = aws_subnet.vpc-dev-public-1.id
  security_groups = [aws_security_group.dev-sg.id]
  user_data       = file("apache.sh")
/*  count = 5
  tags = {
    "Name" = "web-app-${count.index}"
  }*/
}