provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "terraformExample" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
