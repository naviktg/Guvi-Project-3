output "vpc_id" {
  description = "VPC ID"
  value       = module.networking.vpc_id
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.compute.instance_id
}

output "elastic_ip" {
  description = "EC2 Elastic IP"
  value       = module.compute.elastic_ip
}

output "application_url" {
  description = "Website URL"
  value       = "http://${module.compute.elastic_ip}"
}

output "s3_bucket_name" {
  description = "Application S3 bucket name"
  value       = aws_s3_bucket.app.bucket
}

output "security_group_id" {
  description = "Web server security group ID"
  value       = module.compute.security_group_id
}

output "iam_role_name" {
  description = "EC2 IAM role"
  value       = aws_iam_role.ec2.name
}

output "instance_profile_name" {
  description = "EC2 instance profile"
  value       = aws_iam_instance_profile.ec2.name
}