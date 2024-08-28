resource "aws_s3_bucket"  "Orion_Practice" {
   bucket = var.bucketname
   tags = {
    name        = var.name
    environment = var.env
  }
}
resource "aws_s3_bucket_accelerate_configuration" "Orion_Practice" {
  bucket = aws_s3_bucket.Orion_Practice.id
  status = var.status                                   #"disabled"
}
resource "aws_s3_bucket_public_access_block" "Orion_Practice" {
  bucket = aws_s3_bucket.Orion_Practice.id

  block_public_acls       = var.block_public_acls                         #true
  block_public_policy     = var.block_public_policy                      # true
  ignore_public_acls      = var.ignore_public_acls                       # true
  restrict_public_buckets = var.restrict_public_buckets                  # true
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.Orion_Practice.id
  versioning_configuration {
    status = var.versioning_status                                      #disabled                                                  
  }
}
