resource "aws_instance" "jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.kube-master-sg.id]
  key_name               = var.instance_keypair
  user_data              = file("jenkins_docker.sh")
  tags = {
    Name = "Jenkins"
  }
}

