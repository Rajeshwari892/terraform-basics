terraform {
  backend "s3" {
    bucket = "b50-cl-terraform-state-bucket"
    key    = "test/env/terraform.tfstate"
    region = "us-east-1"
  }
}
