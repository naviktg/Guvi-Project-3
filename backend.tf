terraform {
  backend "s3" {
    bucket       = "guvi-p3-tfstate-471443767061-navikaran-2026"
    key          = "project3/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}