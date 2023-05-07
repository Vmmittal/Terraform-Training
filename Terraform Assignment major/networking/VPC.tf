# VPC configuration
resource "aws_vpc" "groupA_vpc" {
  
  cidr_block = "10.0.0.0/16"

  tags = var.tags_groupA
}