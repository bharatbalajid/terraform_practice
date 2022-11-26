# Create VPC
resource "aws_vpc" "vpc-dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-dev"
  }
}

# Create Subnet
resource "aws_subnet" "vpc-dev-public-1" {
  vpc_id                  = aws_vpc.vpc-dev.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}
# Create Internet Gateway
resource "aws_internet_gateway" "vpc-dev-igw" {
  vpc_id = aws_vpc.vpc-dev.id

}
# Create Route Table
resource "aws_route_table" "vpc-dev-public-rt" {
  vpc_id = aws_vpc.vpc-dev.id

}
# Create Route in Route Table for Internet Access
resource "aws_route" "vpc-dev-public-rt-route" {
  route_table_id         = aws_route_table.vpc-dev-public-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.vpc-dev-igw.id


}
# Associate Route Table with Subnet
resource "aws_route_table_association" "vpc-dev-rta" {
  route_table_id = aws_route_table.vpc-dev-public-rt.id
  subnet_id      = aws_subnet.vpc-dev-public-1.id

}
# Create Security Group in the VPC with port 80, 22 as inbound open
resource "aws_security_group" "dev-sg" {
  name        = "dev-vpc-default-sg"
  description = "Dev Vpc Default Security Group"
  vpc_id      = aws_vpc.vpc-dev.id

  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all ip and ports outboun"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
