#Creating EC2
#Using Resource Block
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
resource "aws_instance" "ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # us-west-2
  instance_type = "t2.micro"
network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }
  }
# VPC Creation
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "vpc"
  }
}
# Subnet Creation
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet"
  }
}

# Network Interface
resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

