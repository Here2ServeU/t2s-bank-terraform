# Creating a complete Core Banking System on AWS using Terraform

This repository contains Terraform configurations for provisioning Auto Scaling groups and SNS topics on AWS.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (version >= 0.12)
- AWS CLI configured with appropriate IAM permissions
- An AWS account

## Steps

### Step 1. **Clone the repository**

   -> git clone https://github.com/Messites/t2s-bank-terraform.git
   
   -> cd t2s-bank-terraform

### Step 2. **Initialize and apply the bootstrap configuration**

   -> cd t2s-bank/bootstrap

   -> terraform init

   -> terraform apply


### Step 3. **Initialize, Review, and Deploy Terraform**

#### **Go to Dev Environment**

  -> cd t2s-bank/environments/dev

  -> terraform init

  -> terraform apply


#### **Go to Stage Environment**

  -> cd ../stage

  -> terraform init

  -> terraform apply


#### **Go Prod Environment**

  -> cd ../prod

  -> terraform init

  -> terraform plan

  -> terraform apply


#### **Go to the Primariy Directory**

  -> cd 

  -> terraform init

  -> terraform plan

  -> terraform apply


## **Clean up whenever necessary**

    -> terraform destroy

## Troubleshooting
If you encounter any issues, please check the following:

- Ensure your AWS CLI is configured correctly and you have the necessary permissions.
- Verify that your Terraform configurations are correct and all required variables are set.
- Check the AWS Management Console for any errors related to the resources being created.

## Contributing
Feel free to customize this `README.md` file according to your specific requirements and project details.



