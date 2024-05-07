# main.tf

# Define provider
provider "aws" {
  region = "ap-south-1"  # Specify your desired region
}

# Define EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-05295b6e6c790593e"  # Specify the AMI ID for your desired OS
  instance_type = "t2.micro"               # Specify the instance type
  key_name      = "jenkinspipe.pem"     # Specify the key pair name to access the instance
}

# Output the public IP address of the instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
