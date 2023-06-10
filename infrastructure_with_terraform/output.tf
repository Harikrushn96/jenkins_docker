output "instance_publicip" {
  description = "public ip of ec2 instance"
  value       = aws_instance.jenkins.public_ip
}

output "instance_privateip" {
  description = "private ip of ec2 instance"
  value       = aws_instance.jenkins.private_ip
}