resource "aws_s3_bucket" "my_bucket" {
  bucket = var.my_bucket_name
}

# # If you want to see the resource in the AWS Console before running terraform destroy, you can use this:
# provider "time" {}
#
# resource "time_sleep" "wait_5_minutes" {
#   depends_on = [aws_s3_bucket.my_bucket]
#   create_duration = "1m"
# }
