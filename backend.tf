terraform {
  backend "s3" {
    bucket = "t2s-bank-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}
