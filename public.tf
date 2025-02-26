resource "aws_subnet" "curso_subnet_pub_1a" {
  vpc_id                  = aws_vpc.curso_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true


  tags = {
    Name = "Curso_subnet-1a"
  }
}


resource "aws_subnet" "curso_subnet_pub_1b" {
  vpc_id                  = aws_vpc.curso_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Curso_subnet-1b"
  }
}