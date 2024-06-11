terraform {
  backend "s3" {
    bucket         = "t2s-bank-terraform-state"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
