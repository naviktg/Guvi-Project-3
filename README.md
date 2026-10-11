# GUVI Project 3
## AWS Infrastructure Automation Using Terraform & GitHub Actions

### Objective
Provision AWS infrastructure using Terraform and automate
deployment through GitHub Actions.

### AWS Resources
- Amazon VPC
- Two public subnets
- Internet Gateway
- Public route table and associations
- Security Group
- EC2 instance
- Elastic IP
- Amazon S3 bucket
- IAM Role and Instance Profile

### Terraform Modules

#### Networking
Creates the VPC, public subnets, Internet Gateway,
route table, and subnet associations.

#### Compute
Creates the Security Group, EC2 instance, and Elastic IP.

### Remote State
Terraform state is stored in Amazon S3.
S3 native state locking is enabled using use_lockfile.

### EC2 Web Server
EC2 User Data installs and starts Nginx and configures
a custom landing page.

### S3 Security
- Versioning enabled
- Server-side encryption enabled
- Public access blocked

### GitHub Actions Pipeline
1. Checkout
2. Terraform Format
3. Terraform Init
4. Terraform Validate
5. Terraform Plan
6. Upload Plan Artifact
7. Manual Approval
8. Terraform Apply
9. Terraform Outputs
10. Infrastructure Validation

### Outputs
- VPC ID
- EC2 Instance ID
- Elastic IP
- Application URL
- S3 Bucket Name
- Security Group ID
- IAM Role Name

### Deployment Evidence
Screenshots, successful GitHub Actions runs, and the
final application URL will be added after deployment.