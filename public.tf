resource "aws_subnet" "curso_subnet_pub_1a" {
  vpc_id                  = aws_vpc.curso_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "Curso_subnet-1a"
      "kubernetes.io/role/elb" = "1"
    }
  )
}

resource "aws_subnet" "curso_subnet_pub_1b" {
  vpc_id                  = aws_vpc.curso_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "Curso_subnet-1b"
      "kubernetes.io/role/elb" = "1"
    }
  )
}
