# Terraform Infrastructure for Static Web Application Deployment

This repository contains the Terraform code to set up the infrastructure for deploying a static web application on AWS using S3 buckets.

## Overview

The Terraform scripts in this repository automate the creation of AWS resources necessary for hosting a static web application. These resources include S3 buckets and necessary configurations.

## Requirements

Before you begin, make sure you have the following:

- AWS account and credentials configured on your local machine.
- Terraform installed on your local machine.

## Usage

Follow these steps to deploy the infrastructure:

1. Clone this repository to your local machine.
2. Navigate to the `terraform` directory.
3. Initialize the Terraform workspace by running `terraform init`.
4. Apply the changes by running `terraform apply`. Review the changes and type `yes` to proceed.
5. Once the resources are created, Terraform will output the S3 endpoint URL for your web application.

## Project Structure

- `main.tf`: Defines the AWS provider and resources (S3 bucket for web hosting).
- `variables.tf`: Contains variable declarations (e.g., bucket name).
- `outputs.tf`: Specifies the outputs to display after applying Terraform changes.
- `data.tf` : contains the policy
- `dev.tfvars`: here we modify the the variables
## Customization

- You can customize the `main.tf` file to include additional AWS resources or configurations as needed.
- Update the variables in `dev.tfvars` to reflect your specific environment or preferences.

## Clean-Up

To tear down the infrastructure, run:

```bash
terraform destroy
