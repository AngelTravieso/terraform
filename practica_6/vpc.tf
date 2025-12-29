resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
    env  = "Dev"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_virginia.id # This field needs the ID of the resource
  cidr_block              = var.public_subnet
  map_public_ip_on_launch = true # Convert in a public subnet, have public routing
  tags = {
    name      = "virginia_public_subnet"
    terraform = true
    env       = "Dev"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_virginia.id
  cidr_block = var.private_subnet
  tags = {
    name      = "virginia_private_subnet"
    terraform = true
    env       = "Dev"
  }
}
