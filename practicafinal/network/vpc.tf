resource "aws_vpc" "vpc" {
  cidr_block = lookup (var.vpc_cidr, terraform.workspace)
  tags = {
    #owner = lookup (var.tag, terraform.workspace)
    owner = var.tag.owner
    Name = "VPC ${terraform.workspace}"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = lookup (var.subnet_cidr, terraform.workspace)

  tags = {
    #owner = lookup (var.tag, terraform.workspace)
    owner = var.tag.owner
    Name = "VPC ${terraform.workspace}"
  }
}