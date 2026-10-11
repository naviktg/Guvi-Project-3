locals {
  name_prefix = "guvi-p3-${var.environment}"
}

module "networking" {
  source = "./modules/networking"

  name                = local.name_prefix
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones

  tags = {
    Project     = "GUVI-Project-3"
    Environment = var.environment
  }
}

module "compute" {
  source = "./modules/compute"

  name                  = local.name_prefix
  vpc_id                = module.networking.vpc_id
  subnet_id             = module.networking.public_subnet_ids[0]
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  ssh_cidr              = var.ssh_cidr
  instance_profile_name = aws_iam_instance_profile.ec2.name
  user_data             = file("${path.root}/user_data.sh")

  tags = {
    Project     = "GUVI-Project-3"
    Environment = var.environment
  }
}