resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.vpc-cidr}"
    tags = {
    Name = "tamilan-vpc"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.private_subnet}"
  availability_zone = "us-west-2b"
 tags = {
    Name = "private-subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.public_subnet}"
  availability_zone = "us-west-2a"
 tags = {
    Name = "public-subnet"
  }
}