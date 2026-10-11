aws_region  = "ap-south-1"
environment = "dev"

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

instance_type = "t3.micro"

ami_id = "ami-08e3b3155fc937a94"

ssh_cidr = "103.181.148.218/32"

s3_bucket_name = "guvi-p3-app-471443767061-navikaran-2026"