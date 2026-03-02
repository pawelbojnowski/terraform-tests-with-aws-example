resource "aws_iam_user" "my_user" {
  name = var.my_user_name
}

# # If you want to see the resource in the AWS Console before running terraform destroy, you can use this:
# provider "time" {}
#
# resource "time_sleep" "wait_5_minutes" {
#   depends_on = [aws_iam_user.my_user]
#   create_duration = "2m"
# }
