# Subnet configurations
resource "aws_subnet" "groupA_private_subnet" {
  vpc_id            = aws_vpc.groupA_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = var.tags_groupA
}

resource "aws_subnet" "groupA_public_subnet" {
  vpc_id            = aws_vpc.groupA_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = var.tags_groupA
}