resource "aws_subnet" "sub1" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = var.subnet_name
  }
}