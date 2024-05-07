# Provider configuration for AWS
provider "aws" {
  region = "ap-south-1" # Replace with your desired AWS region
}

# Create an S3 bucket
resource "aws_s3_bucket" "new_bucket" {
  bucket = "ash12619bktp" # Replace with your desired bucket name
}

# IAM role for EC2 instance
#resource "aws_iam_role" "ec2_role" {
 # name = "ec2_role"

  #assume_role_policy = jsonencode({
   # Version = "2012-10-17",
    #Statement = [{
     # Effect = "Allow",
      #Principal = {
      #  Service = "ec2.amazonaws.com"
     # },
     # Action = "sts:AssumeRole"
    #}]
  #})
#}

# IAM policy granting S3 access
#resource "aws_iam_policy" "s3_access_policy" {
 # name        = "s3_access_policy"
  #description = "Allows access to S3 bucket"

#  policy = jsonencode({
 #   Version = "2012-10-17",
  #  Statement = [{
  #    Effect = "Allow",
   #   Action = [
    #    "s3:GetObject",
     #   "s3:PutObject",
      #  "s3:ListBucket"
      #],
      #Resource = [
      #  aws_s3_bucket.new_bucket.arn,
      #  "${aws_s3_bucket.new_bucket.arn}/*"
      #]
    #}]
  #})
#}

# Attach S3 access policy to the IAM role
#resource "aws_iam_role_policy_attachment" "s3_access_attach" {
#  role       = aws_iam_role.ec2_role.name
#  policy_arn = aws_iam_policy.s3_access_policy.arn
#}

# Create an EC2 instance with IAM role
resource "aws_instance" "ec2_instance" {
  ami           = "ami-0f58b397bc5c1f2e8" # Replace with your desired AMI ID
  instance_type = "t2.micro"

#  iam_instance_profile {
 #   name = aws_iam_role.ec2_role.name
 # }

#iam_instance_profile = aws_iam_role.ec2_role.name

  // Other EC2 instance configuration options

  tags = {
    Name = "DemoInstance"
  }
}
