variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_account_id" {
  description = "The ID of the AWS Account."
  type        = string
}

variable "name_prefix" {
  description = "Include this value as a prefix in the name of every IAM role created by this module. This is useful to prepend, for example, '<account-name>-' to every IAM role name: e.g., ci-role becomes stage-ci-role."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to apply to the IAM roles."
  type        = map(string)
  default     = {}
}

variable "username" {
  description = "Username to create"
  type        = string
}

variable "path" {
  description = "IAM path"
  default     = "/"
  type        = string
}