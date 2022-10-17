provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-00ff427d936335825"
  instance_type = "t2.micro"

  tags = {
    Name = "linux-terraform"
  }
  output "public_ip" {
    value = "aws_instance.demo.public_ip"
  }
}


# Note:
# attach iam role to the instance om aws machine to authenticate to provide the infra