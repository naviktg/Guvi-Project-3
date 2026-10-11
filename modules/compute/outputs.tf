output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "elastic_ip" {
  description = "Elastic IP address of the web server"
  value       = aws_eip.web.public_ip
}

output "security_group_id" {
  description = "ID of the web security group"
  value       = aws_security_group.web.id
}