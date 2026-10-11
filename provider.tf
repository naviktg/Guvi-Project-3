provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "GUVI-Project-3"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}