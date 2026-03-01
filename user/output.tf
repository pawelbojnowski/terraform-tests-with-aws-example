output "my_user_name" {
  value = aws_iam_user.my_user.name
}

output "my_user_unique_id" {
  value = aws_iam_user.my_user.unique_id
}
