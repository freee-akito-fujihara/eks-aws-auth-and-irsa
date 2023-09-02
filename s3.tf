resource "aws_s3_bucket" "node-role-access" {
  bucket = "node-role-access"
}

resource "aws_s3_bucket" "irsa-access" {
  bucket = "irsa-access"
}
