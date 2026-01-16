# IAM User
resource "aws_iam_user" "my_user" {
  name = "user-demo"
}

# Attach Policy S3 Full Access
resource "aws_iam_user_policy_attachment" "s3_access" {
  user       = "user-demo"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

