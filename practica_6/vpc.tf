resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    "name" = "VPC_VIRGINIA"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_virginia.id # This field needs the ID of the resource
  cidr_block              = var.subnets[0]
  map_public_ip_on_launch = true # Convert in a public subnet, have public routing
  tags = {
    "name" = "virginia_public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_virginia.id
  cidr_block = var.subnets[1]
  tags = {
    "name" = "virginia_private_subnet"
  }
}
