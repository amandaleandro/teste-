provider "aws" {
  region = var.region
}
resource "aws_vpc" "newvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "newsubnet" {
  vpc_id            = aws_vpc.newvpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2a"
}

resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Security group for instance"
  vpc_id      = aws_vpc.newvpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }
}

resource "aws_instance" "newintancia" {
  ami           = "ami-0c55b159cbfafe1f0" # AMI padrão da AWS (Amazon Linux 2)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.newsubnet.id

  tags = {
    Name = "newintancia"
  }
}

