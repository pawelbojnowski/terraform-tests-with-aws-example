
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }

  # Local state isted of S3 and DynamoDb
  # backend "s3" {
  #   bucket = "terraform-test-with-aws-example"
  #   key    = "terraform-test-with-aws-example.tfstate"
  #   region = "eu-west-1"
  # }
}

