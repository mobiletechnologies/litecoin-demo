
provider "aws" {
  region = var.aws_region
}

terraform {
  # Using a local backend for terraform state
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "aws_iam_role" "ci_role" {
  name               = "${var.name_prefix}-ci-role"
  path               = var.path

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Action    = "sts:AssumeRole",
        Principal = { "AWS" : "arn:aws:iam::${var.aws_account_id}:root" }
    }]
  })
}

resource "aws_iam_group" "ci_group" {
  name = "${var.name_prefix}-ci-group"
  path = var.path
}

# Policy to enable group members to assume role
resource "aws_iam_policy" "assume_ci_role_policy" {
  name        = "${var.name_prefix}-assume-ci-role-policy"
  description = "Allow assuming ${var.name_prefix} role"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "sts:AssumeRole",
        Resource = "arn:aws:iam::${var.aws_account_id}:role${var.path}${var.name_prefix}-ci-role"
    }]
  })
}

resource "aws_iam_group_policy" "ci_access" {
  name   = "${var.name_prefix}-ci-group-policy"
  group  = aws_iam_group.ci_group.id
  policy = aws_iam_policy.assume_ci_role_policy.policy
}

# New Username creation
resource "aws_iam_user" "user" {
  name = var.username
  path = var.path
}

# Add user to the required group
resource "aws_iam_group_membership" "ci_team" {
  name = "${var.name_prefix}-ci-group-membership"

  users = [
    aws_iam_user.user.name,
  ]

  group = aws_iam_group.ci_group.name
}