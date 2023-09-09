terraform {
  backend "s3" {
    bucket = "my-1997-bucket"
    key    = "tfvars/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-table"
  }
}