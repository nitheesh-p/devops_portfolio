provider "aws" {
  region = "us-east-1" # Change to your preferred AWS region
}

resource "aws_s3_bucket" "simple_bucket" {
  bucket = "my-simple-s3-bucket-521"  # Replace with a unique bucket name
}
