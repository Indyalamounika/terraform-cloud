resource "aws_s3_bucket" "example" {
  bucket = "mouni-indyala-demo-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
