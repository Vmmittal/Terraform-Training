# Route Table configuration
resource "aws_route_table" "groupA_route_table" {
  vpc_id = aws_vpc.groupA_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.groupA_igw.id
  }

  tags = var.tags_groupA
}

# Associate subnets with route table
# resource "aws_route_table_association" "groupA_private_subnet_association" {

#   subnet_id      = aws_subnet.groupA_private_subnet.id

#   route_table_id = aws_route_table.groupA_route_table.id

# }

resource "aws_route_table_association" "groupA_public_subnet_association" {
  subnet_id      = aws_subnet.groupA_public_subnet.id
  route_table_id = aws_route_table.groupA_route_table.id
}
