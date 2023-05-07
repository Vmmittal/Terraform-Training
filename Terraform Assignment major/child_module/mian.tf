module "ec2_module" {
    no_of_ec2=1
    source = "../EC2"
    ami_id =  "ami-0bde1eb2c18cb2abe"  
    inst_type = "t2.micro"   
    sub_id  = module.networkong_module.private_subnet_id
    tags_groupA = var.tags_child__groupA
}


module "networkong_module" {
    source = "../networking" 
}

module "s3_module" {
    source = "../s3"
    bucket_name = ["buck1","buck2","buck3"]
}
