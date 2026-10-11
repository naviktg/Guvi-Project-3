resource "aws_iam_role" "ec2" {
  name = "guvi-p3-ec2-role-471443767061"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Project   = "GUVI-Project-3"
    ManagedBy = "Terraform"
  }
}

resource "aws_iam_role_policy" "ec2_s3_read" {
  name = "guvi-p3-app-s3-read"
  role = aws_iam_role.ec2.id

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ]

        Resource = [
          aws_s3_bucket.app.arn,
          "${aws_s3_bucket.app.arn}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_instance_profile" "ec2" {
  name = "guvi-p3-ec2-profile-471443767061"
  role = aws_iam_role.ec2.name

  tags = {
    Project   = "GUVI-Project-3"
    ManagedBy = "Terraform"
  }
}