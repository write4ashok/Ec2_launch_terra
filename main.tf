provider "aws" {
  region = "ap-south-1" # Change to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0f58b397bc5c1f2e8" # Change to your desired AMI ID
  instance_type = "t2.micro"     # Change to your desired instance type
}
