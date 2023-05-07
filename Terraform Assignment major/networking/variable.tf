variable tags_groupA {
    type = map(any)

    default = {
        Name : "Group-A-assignment",
        Purpose : "Training",
        Owner : "ronak.bali@cloudeq.com"
        }
}

variable "bucket_name" {
    type = list(string)

    default = [ "Group-A-bucket-01","Group-A-bucket-02" ]
  
}