resource "aws_s3_bucket" "example" {
  bucket = "long-term-storage"
  acl    = "private"
  region = "us-east-1"
  server_side_encryption = "AES256"
  
  tags = {
    Function = "Long-Term-Storage"
  }
}
