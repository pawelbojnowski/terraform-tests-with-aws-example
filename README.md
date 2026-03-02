# Terraform tests with aws example

### Overview

This repository provides a simple example of how to use Terraform tests.

The tests create real resources on AWS and perform proper example assertions.

### Setup

This project requires AWS credentials to be configured before running the tests.

More information is available in the official AWS documentation:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html

### RUN

#### Command line:

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

**Learn and have fun! 🎉**

