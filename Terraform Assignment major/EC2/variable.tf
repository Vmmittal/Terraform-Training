variable tags_groupA {
    type = map(any)
}

variable "sub_id " {
    type = string
  
}

variable "ami_id" {
  type = string
}
variable "no_of_ec2" {
    type = number

    default = 1
  
}