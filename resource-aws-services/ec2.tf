terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "5.90.1"
        }
    }
}
provider "aws" {
    region = "us-east-1"
    profile = "default"
}

resource "aws_instance" "myserver" {
    instance_type = "t2.micro"
    ami = "ami-08b5b3a93ed654d19"
    tags = {
        Name = "my-server-1"
    }
}
    