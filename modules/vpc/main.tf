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

#Public-Subnet-1-----------------------------------------------------#

resource "aws_subnet" "my_public_subnet_1" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet_cidr_1
  availability_zone = var.public_avl_zone_1
  tags =  {

    Name = "prod-public-subnet-1"

  }

}

resource "aws_route_table" "my_public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.public_route_cidr
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "prod-public-route-table"
  }
}

resource "aws_route_table_association" "my_public_route_table_association_1" {
  subnet_id      = aws_subnet.my_public_subnet_1.id
  route_table_id = aws_route_table.my_public_route_table.id
}

#Public-Subnet-2-----------------------------------------------------#

resource "aws_subnet" "my_public_subnet_2" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet_cidr_2
  availability_zone = var.public_avl_zone_2
  tags =  {

    Name = "prod-public-subnet-2"

  }

}

resource "aws_route_table_association" "my_public_route_table_association_2" {
  subnet_id      = aws_subnet.my_public_subnet_2.id
  route_table_id = aws_route_table.my_public_route_table.id
}

#--------------------------------------------------------------------#

#Private-Network-Setup------------------------------------------------#

resource "aws_eip" "my_eip" {
  domain = var.attach
}

resource "aws_nat_gateway" "my_nat" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.my_public_subnet_1.id

  tags = {
    Name = "prod-NAT"
  }

  depends_on = [aws_internet_gateway.my_igw]

}

#Private-Subnet-1----------------------------------------------------#

resource "aws_subnet" "my_private_subnet_1" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr_1
  availability_zone = var.private_avl_zone_1
  tags =  {

    Name = "prod-private-subnet-1"

  }

}

resource "aws_route_table" "my_private_route_table_1" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.private_route_cidr_1
    gateway_id = aws_nat_gateway.my_nat.id
  }

  tags = {
    Name = "prod-private-route-table-1"
  }
}

resource "aws_route_table_association" "my_private_route_table_association_1" {
  subnet_id      = aws_subnet.my_private_subnet_1.id
  route_table_id = aws_route_table.my_private_route_table_1.id
}

#Private-Subnet-2----------------------------------------------------#

resource "aws_subnet" "my_private_subnet_2" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr_2
  availability_zone = var.private_avl_zone_2
  tags =  {

    Name = "prod-private-subnet-2"

  }

}

resource "aws_route_table" "my_private_route_table_2" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = var.private_route_cidr_2
    gateway_id = aws_nat_gateway.my_nat.id
  }

  tags = {
    Name = "prod-private-route-table-1"
  }
}

resource "aws_route_table_association" "my_private_route_table_association_2" {
  subnet_id      = aws_subnet.my_private_subnet_2.id
  route_table_id = aws_route_table.my_private_route_table_2.id
}

#--------------------------------------------------------------------#