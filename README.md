# Terraform tests – AWS example

### Overview

This repository shows a simple example of how to use Terraform tests.

The tests create real resources in AWS and verify them using example assertions.

### Setup

Before running the tests, you need to configure your AWS credentials.

You can find more information in the official AWS documentation:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html

## Run

#### Command line

```bash
terraform init && terraform test
```

#### Output:

```
Initializing the backend...
Initializing modules...
Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.54.1

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see                                                                                                                                                                 
any changes that are required for your infrastructure. All Terraform commands                                                                                                                                                                 
should now work.                                                                                                                                                                                                                              
                                                                                                                                                                                                                                              
If you ever set or change modules or backend configuration for Terraform,                                                                                                                                                                     
rerun this command to reinitialize your working directory. If you forget, other                                                                                                                                                               
commands will detect it and remind you to do so if necessary.                                                                                                                                                                                 
tests/test_change_user_name.tftest.hcl... in progress
  run "create_user_plan"... pass
  run "create_user_apply"... pass
  run "change_username_apply"... pass
tests/test_change_user_name.tftest.hcl... tearing down
tests/test_change_user_name.tftest.hcl... pass
```

### Helpful tip

If you want to see the resource in the AWS Console before running terraform destroy, you can use the following
configuration:

```terraform
provider "time" {}

resource "time_sleep" "wait_5_minutes" {
  depends_on = [aws_iam_user.my_user]
  create_duration = "2m"
}

```

**Learn and have fun! 🎉**

