# Define the provider and region
provider "aws" {
region = "us-west-2"
}

# Create the VPC
resource "aws_vpc" "my_vpc" {
cidr_block = "10.0.0.0/16"

}

# Create the public subnet
resource "aws_subnet" "public_subnet" {
vpc_id= aws_vpc.my_vpc.id
cidr_block = "10.0.1.0/24"
}

# Create the private subnet
resource "aws_subnet" "private_subnet" {
vpc_id = aws_vpc.my_vpc.id
cidr_block = "10.0.2.0/24"

}

