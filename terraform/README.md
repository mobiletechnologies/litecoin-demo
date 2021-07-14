# Step 6 (Terraform)

## Description

This is deployed using [terragrunt](https://github.com/gruntwork-io/terragrunt) a thin wrapper for Terraform that supports locking and enforces best.
The `terragrunt.hcl` contains the values we want to use by our modules:

```terraform
inputs = {
  aws_account_id = "111111111111"
  username       = "john_doe_1"
  name_prefix    = "prod"
  path           = "/prod/"
}
```

### Module ci-access

This module create the required iam policies, group and user.


### Results

Using IAM Policy Simulator to test:

![](PolicyTest.png)