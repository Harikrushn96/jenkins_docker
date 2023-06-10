variable "ami" {
  description = "ec2 instance id(redhat9)"
  type        = string
  #default = "ami-016eb5d644c333ccb" #redhat
  default = "ami-053b0d53c279acc90" #ubuntu
}

variable "aws_region" {
  description = "region where ec2 will create"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "size of ec2 instance"
  type        = string
  default     = "t2.medium"
}

variable "instance_keypair" {
  description = "logging key for ec2"
  type        = string
  default     = "mac"
}

data "aws_security_group" "kube-master-sg" {
  id = "sg-096f72d27bd7f143b"
}