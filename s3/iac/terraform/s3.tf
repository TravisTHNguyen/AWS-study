# terraform init
# terraform plan
# terraform delete
resource "aws_s3_bucket" "by-s3-bucket" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
