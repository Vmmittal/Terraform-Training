# Public EC2 instance configuration
resource "aws_instance" "groupA_public_instance" {
  ami           =    var.ami_id      
  instance_type = var.inst_type  

  subnet_id     =  var.sub_id              
  # key_name         = "KEY_PAIR_NAME"  
  associate_public_ip_address = true

  tags = var.tags_groupA

  volume_tags = var.tags_groupA
}

# Private EC2 instance configuration
# resource "aws_instance" "groupA_private_instance" {
#   ami           = "ami-0bde1eb2c18cb2abe"  
#   instance_type = "t2.micro"  
#   subnet_id  = aws_subnet.groupA_private_subnet.id
#   # key_name   = "KEY_PAIR_NAME"  

#   tags = merge(var.tags_groupA, { "Name" = "${var.tags_groupA["Name"]}-EC2-2" })

#   volume_tags = var.tags_groupA
# }