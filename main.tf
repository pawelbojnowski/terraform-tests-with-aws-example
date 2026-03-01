module "s3" {
  source      = "./s3"
  my_bucket_name = var.bucket_name
}
