# use ubuntu 20 AMI for EC2 instance
data "aws_ami" "ubuntu" {
    most_recent = true
# provision to us-east-2 region
provider "aws" {
  region  = "ap-south-1"
}
resource "aws_instance" "app_server" {
  ami           = ami-007020fd9c84e18c7
  instance_type = "t2.micro"
  key_name      = "jenkinspipe.pem"
tags = {
    Name = var.ec2_name
  }
}
