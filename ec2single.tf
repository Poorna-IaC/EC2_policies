terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

 # required_version = ">= 0.14.9"

provider "aws" {
  profile = "default"
  region  = "us-west-27"
}

 #text
 
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e2"
  instance_type = "t2.micro"
  ingress_cidr_blocks = ["0.0.0.0/16"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
