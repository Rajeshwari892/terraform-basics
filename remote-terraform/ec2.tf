provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami             = "ami-00ff427d936335825"
  instance_type   = "t2.micro"
  vpc_security_group_ids =  [aws_security_group.allows_ssh.id]

  tags = {
    Name = "linux-terraform"
  }
}

  output "public_ip" {
    value = aws_instance.demo.public_ip
  }

# Note:
# attach iam role to the instance om aws machine to authenticate to provide the infra

resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh"
  description = "Allow ssh inbound traffic"
  

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allows_ssg_sg"
  }
}

# dont use terraform state files locally; instead use s3 bucket ( remote- anywhere of oour choice )
