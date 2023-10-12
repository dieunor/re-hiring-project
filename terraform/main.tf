provider "aws" {
  region = var.region
}


resource "aws_s3_bucket" "hello_world_bucket" {
  bucket = "hello-world-bucket-${var.environment}"
  acl    = "public-read"
  policy = data.aws_iam_policy_document.website_policy.json

  website {
    index_document = "index.html"
  }
}
