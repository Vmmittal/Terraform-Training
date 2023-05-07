output "buckets_id" {
    value = [for x in var.aws_s3_bucket.groupA_S3 : x.id]
  
}