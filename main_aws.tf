 "aws" ">provider "aws" {
  region = "us-east-1"
}

"aws_instance"">resource "aws_instance" "example" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI (Região us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-instance"
  }
}

 "instance_id" ">output "instance_id" {
  value = aws_instance.example.id
}
