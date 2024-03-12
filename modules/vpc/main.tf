provider "aws" {
  region = var.region
}

resource "aws_vpc" "my_vpc" {

  cidr_block = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy
  enable_dns_support = var.dns_support
  enable_dns_hostnames = var.dns_hostnames
  tags = {

    Name = "production-vpc"

  }

}

#Public-Network-Setup------------------------------------------------#

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "prod-igw"
  }
}

resource "aws_subnet" "my_public_subnet" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.public_avl_zone
  tags =  {

    Name = "prod-public-subnet"

  }

}

resource "aws_route_table" "my_public_route_table1" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.public_route1_cidr
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "prod-public-route-table-1"
  }
}

resource "aws_route_table_association" "my_public_route_table_association" {
  subnet_id      = aws_subnet.my_public_subnet.id
  route_table_id = aws_route_table.my_public_route_table1.id
}


#Private-Network-Setup------------------------------------------------#

resource "aws_eip" "my_eip" {
  domain = var.attach
}

resource "aws_nat_gateway" "my_nat" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.my_public_subnet.id

  tags = {
    Name = "prod-NAT"
  }

  depends_on = [aws_internet_gateway.my_igw]

}

resource "aws_subnet" "my_private_subnet" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.private_avl_zone
  tags =  {

    Name = "prod-private-subnet"

  }

}

resource "aws_route_table" "my_private_route_table1" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.private_route1_cidr
    gateway_id = aws_nat_gateway.my_nat.id
  }

  tags = {
    Name = "prod-private-route-table-1"
  }
}

resource "aws_route_table_association" "my_private_route1_table_association" {
  subnet_id      = aws_subnet.my_private_subnet.id
  route_table_id = aws_route_table.my_private_route_table1.id
}