resource "aws_instance" "public_instance" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    name = "Test Public Instance"
  }
}
