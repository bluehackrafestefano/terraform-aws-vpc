locals {
  tftag = "terraform"
}

resource "aws_vpc" "module_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${local.tftag}-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  cidr_block = var.public_subnet_cidr
  vpc_id     = aws_vpc.module_vpc.id
  tags = {
    Name = "${local.tftag}-public-subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  cidr_block = var.private_subnet_cidr
  vpc_id     = aws_vpc.module_vpc.id
  tags = {
    Name = "${local.tftag}-private-subnet"
  }
}