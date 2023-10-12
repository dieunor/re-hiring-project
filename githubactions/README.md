# Static Web Application Deployment

This repository contains a GitHub Actions workflow for deploying a static web application to different environments using Amazon S3.

## Workflow Description

The workflow is triggered on pushes to the `main` branch, as well as on pull requests targeting the `prod` branch. It performs the following tasks:

### Deploy to Development Environment

- When changes are pushed to the repository, the workflow deploys the static web application to the development environment.
- The development environment is represented by an S3 bucket named `dev-hello-world-bucket`.

### Deploy to Production Environment

- If the push is directly to the `prod` branch or a pull request targets the `prod` branch, the workflow deploys the static web application to the production environment.
- The production environment is represented by an S3 bucket named `prod-hello-world-bucket`.

## Secrets

Before running the workflow, ensure the following secrets are set up in your repository:

- `AWS_ACCESS_KEY_ID`: Your AWS access key ID.
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key.
- `AWS_REGION`: Your AWS region.
- `DEV_BUCKET_NAME`: The name of the S3 bucket for the development environment.
- `PROD_BUCKET_NAME`: The name of the S3 bucket for the production environment.

## Usage

1. Clone this repository to your local machine.
2. Make the necessary changes to the static web application in the `app` directory.
3. Push your changes to the `main` branch or create a pull request targeting the `prod` branch.
4. The GitHub Actions workflow will automatically deploy the web application to the respective environments.

## Branches

- `main`: This branch is used for development and testing. Changes pushed to this branch trigger deployment to the development environment.
- `prod`: This branch represents the production environment. Changes pushed directly to this branch, or via pull requests, trigger deployment to the production environment.
