terraform {
  backend "s3" {
    bucket         = "malik-28-1997"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-table"

  }
}