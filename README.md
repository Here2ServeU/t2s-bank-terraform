# Deploying A complete Core Banking System on AWS using Terraform

This repository contains Terraform configurations for provisioning A complete Core Banking System on AWS. 

---

## Prerequisites

[Terraform](https://www.terraform.io/downloads.html) (version >= 0.12)

AWS CLI configured with appropriate IAM permissions

An AWS account

---

## Steps

### Step 1: Clone the Repository

```bash
git clone https://github.com/Here2ServerU/t2s-bank-terraform.git
cd t2s-bank-terraform
```

Create an S3 Bucket and name it, "t2s-bank-tf-state."
```bash
aws s3api delete-bucket --bucket t2s-bank-tf-state --region us-east-1
```

### Step 2: Initialize Terraform

Initialize envs/dev
```bash
cd t2s-bank/envs/dev
terraform init
```

Initialize envs/stage
```bash
cd t2s-bank/envs/stage
terraform init
```

Initialize envs/prod
```bash
cd t2s-bank/envs/stage
terraform init
```

```bash
cd t2s-bank/envs/prod
terraform init
```

### Step 3: Plan and Review Terraform

For Dev Environment
```bash
cd t2s-bank/envs/dev
terraform plan
```

For Stage Environment
```bash
cd t2s-bank/envs/stage
terraform plan
```

For Prod Environment
```bash
cd t2s-bank/envs/prod
terraform plan
```

### Step 4: Apply The Terraform Configuration

For Dev Environment
```bash
cd t2s-bank/envs/dev
terraform apply
```

For Stage Environment
```bash
cd t2s-bank/envs/stage
terraform apply
```

For Prod Environment
```bash
cd t2s-bank/envs/prod
terraform apply
```

### Step 5: Clean Up

For Dev Environment
```bash
cd t2s-bank/envs/dev
terraform destroy
```

For Stage Environment
```bash
cd t2s-bank/envs/stage
terraform destroy
```

For Prod Environment
```bash
cd t2s-bank/envs/prod
terraform destroy
```

## Troubleshooting
If you encounter any issues, please check the following:

- Ensure your AWS CLI is configured correctly and you have the necessary permissions.
- Verify that your Terraform configurations are correct and all required variables are set.
- Check the AWS Management Console for any errors related to the resources being created.

## Contributing
Feel free to customize this `README.md` file according to your specific requirements and project details.

