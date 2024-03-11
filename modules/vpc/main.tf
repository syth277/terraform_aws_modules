provider "aws" {
  region = "us-east-1"
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

resource "aws_subnet" "my_private_subnet" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.private_avl_zone
  tags =  {

    Name = "prod-private-subnet"

  }

}

resource "aws_subnet" "my_public_subnet" {

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.public_avl_zone
  tags =  {

    Name = "prod-private-subnet"

  }



}