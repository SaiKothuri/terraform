#Creating EC2
#Using Resource Block
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
resource "aws_instance" "ec2" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  }
