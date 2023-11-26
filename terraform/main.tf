provider "aws" {
  region = "ap-southeast-2"
}

variable "bucket_prefix" {
  type = string
}

resource "aws_s3_bucket" "this" {
  bucket_prefix = var.bucket_prefix
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}
