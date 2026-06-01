output "public_ip" {
  description = "Public IP address of the EC2 instance (use as EC2_HOST GitHub Secret)"
  value       = aws_instance.app.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app.id
}

output "security_group_id" {
  description = "ID of the application security group"
  value       = aws_security_group.app.id
}

output "ssh_command" {
  description = "Example SSH command to connect to the instance"
  value       = "ssh -i <your-key.pem> ec2-user@${aws_instance.app.public_ip}"
}
