provider "aws" {
  region = "us-east-1"
  profile = var.aws_profile
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("devops.pem")
  }
}
