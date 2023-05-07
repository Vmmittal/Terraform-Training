# Internet Gateway configuration
resource "aws_internet_gateway" "groupA_igw" {
  
  vpc_id = aws_vpc.groupA_vpc.id

  tags = var.tags_groupA
}