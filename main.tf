provider "aws" {
  region = "us-east-1"
  profile = var.aws_profile
}

resource "aws_instance" "example" {
  ami           = "ami-08e637cea2f053dfa"
  instance_type = "t2.micro"
  key_name      = "devops"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("devops.pem")
  }
}
