# 
# VPC Creation
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block                #"172.16.0.0/16"

  tags = {
    name =  var.name                         #"vpc"
  }
  
}
