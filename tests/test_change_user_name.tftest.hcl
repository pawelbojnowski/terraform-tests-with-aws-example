run "create_user" {
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

run "change_username" {
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
    condition     = aws_iam_user.my_user.unique_id == run.create_user.my_user_unique_id
    error_message = "Unique id of user has been changed but should be the same"
  }

}
