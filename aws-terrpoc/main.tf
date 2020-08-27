
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terpoc-s3buck"
    key            = "global/terraform.tfstate"
    region         = "ap-south-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "ter-dynamo"
    encrypt        = true
  }
}
provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
}
resource "aws_instance" "azuretfinstance" {
     ami = "ami-02b5fbc2cb28b77b8"
     instance_type = "t2.micro"
     tags = {
       Name = "pavan"
   }
}