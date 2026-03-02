# Run terraform plan – now we can assert what changes would be applied.
run "create_user_plan" {
  command = apply

  module {
    source = "./user"
  }

  variables {
    my_user_name = "my_test_user"
  }

  assert {
    condition     = aws_iam_user.my_user.name == "my_test_user"
    error_message = "Bucket name after first apply is not the expected old name"
  }
}

# Run terraform apply – now we can assert what was created in AWS,
# for example, the resource ID.
run "create_user_apply" {
  command = apply

  module {
    source = "./user"
  }

  variables {
    my_user_name = "my_test_user"
  }

  assert {
    condition     = aws_iam_user.my_user.name == "my_test_user"
    error_message = "Bucket name after first apply is not the expected old name"
  }

}

# Run terraform apply once again – now we can assert what was created or changed in AWS.
# For example, we can confirm that the resource ID has not changed.
run "change_username_apply" {
  command = apply

  module {
    source = "./user"
  }

  variables {
    my_user_name = "my_test_user_proper_name"
  }

  assert {
    condition     = aws_iam_user.my_user.name == "my_test_user_proper_name"
    error_message = "User name is inccorect"
  }

  assert {
    condition     = aws_iam_user.my_user.unique_id == run.create_user_apply.my_user_unique_id
    error_message = "Unique id of user has been changed but should be the same"
  }

}

# All resources are removed after the tests finish.
# It does not matter whether the tests passed or failed.
