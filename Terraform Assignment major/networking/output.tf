output "vpc_id"{
    value = aws_vpc.groupA_vpc.id
}

output "public_subnet_id" {
    value = aws_subnet.groupA_public_subnet.id
}

output "private_subnet_id" {
    value = aws_subnet.groupA_private_subnet.id
}

output "gateway_id" {
    value = aws_internet_gateway.groupA_igw.id 
}
