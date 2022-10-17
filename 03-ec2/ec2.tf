resource "aws_instance" "demo" {
  ami           = "ami-00ff427d936335825"
  instance_type = "t2.micro"



  tags = {
    Name = "linux-terraform"
  }
}