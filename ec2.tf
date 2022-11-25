# Create a EC2 instance
resource "aws_instance" "ec2" {
    ami = "ami-0b0dcb5067f052a63"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    tags = {
      "Name" = "myweb"
    }
}