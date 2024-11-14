terraform {
  backend "s3" {
    bucket         = "t2s-bank-tf-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
