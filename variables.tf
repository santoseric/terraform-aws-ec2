variable "region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default     = "terraform"
}

variable "instance_type" {
  default = "t2.micro"
}


variable "ami" {
  default = "ami-08e637cea2f053dfa"
}

variable "key_name" {
  default = "devops"
}

variable "private_key_path" {
  default = "devops.pem"
}

variable "user" {
  default = "ec2-user"
}
