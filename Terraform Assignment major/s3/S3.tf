# S3 bucket configurations
resource "aws_s3_bucket" "groupA_S3" {

    count = length(var.bucket_name)

    bucket = var.bucket_name[count.index]

    tags = var.tags_groupA
}

resource "aws_s3_bucket_ownership_controls" "groupA_S3_ownership_controls" {

  count  = length(var.bucket_name)

  bucket = aws_s3_bucket.groupA_S3[count.index].id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "groupA_S3_acl" {

  count  = length(var.bucket_name)

  depends_on = [aws_s3_bucket_ownership_controls.groupA_S3_ownership_controls]

  bucket = aws_s3_bucket.groupA_S3[count.index].id

  acl    = "private"
}

resource "aws_s3_bucket_versioning" "groupA_S3_versioning" {


  count  = length(var.bucket_name)

  bucket = aws_s3_bucket.groupA_S3[count.index].id

  versioning_configuration {
    status = "Enabled"
  }
}

