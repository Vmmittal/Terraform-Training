# # VPC configuration
# resource "aws_vpc" "groupA_vpc" {
#   cidr_block = "10.0.0.0/16"

#   tags = var.tags_groupA
# }

# # Subnet configurations
# resource "aws_subnet" "groupA_private_subnet" {
#   vpc_id            = aws_vpc.groupA_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "us-east-1a"

#   tags = var.tags_groupA
# }

# resource "aws_subnet" "groupA_public_subnet" {
#   vpc_id            = aws_vpc.groupA_vpc.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = "us-east-1a"

#   tags = var.tags_groupA
# }

# # Internet Gateway configuration
# resource "aws_internet_gateway" "groupA_igw" {
#   vpc_id = aws_vpc.groupA_vpc.id

#   tags = var.tags_groupA
# }

# # Route Table configuration
# resource "aws_route_table" "groupA_route_table" {
#   vpc_id = aws_vpc.groupA_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.groupA_igw.id
#   }

#   tags = var.tags_groupA
# }

# # Associate subnets with route table
# resource "aws_route_table_association" "groupA_private_subnet_association" {
#   subnet_id      = aws_subnet.groupA_private_subnet.id
#   route_table_id = aws_route_table.groupA_route_table.id
# }

# resource "aws_route_table_association" "groupA_public_subnet_association" {
#   subnet_id      = aws_subnet.groupA_public_subnet.id
#   route_table_id = aws_route_table.groupA_route_table.id
# }
