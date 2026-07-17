---
title: "AWS Integration"
description: "Deploy and manage AWS infrastructure with IOBend."
keywords: ["aws", "amazon web services", "cloud", "deploy", "iobend"]
---

# AWS Integration

IOBend simplifies AWS deployments by abstracting the complexity of the AWS CLI and Terraform, while still allowing you to drop down to those tools if needed.

## Authentication

First, connect IOBend to your AWS account. You can use SSO, IAM users, or temporary tokens.

```bash
iobend auth login --provider aws
```

If you are running in an EC2 instance or ECS task, IOBend will automatically discover IAM roles attached to the instance.

## Generating AWS Infrastructure

You can scaffold standard AWS architecture (like VPCs, ECS Clusters, or Serverless APIs) using IOBend templates:

```bash
iobend generate infrastructure --provider aws --type serverless
```
This generates an infrastructure-as-code template (compatible with Terraform or AWS CDK) pre-configured with best practices.

## Deploying to AWS

Once your project is ready, use the built-in deploy script if configured in `iobend.json`:

```json
{
  "scripts": {
    "deploy": "iobend run terraform apply -auto-approve"
  }
}
```

Then run:
```bash
iobend run deploy
```

## ECR Docker Workflow

IOBend streamlines pushing images to Amazon Elastic Container Registry (ECR).

```bash
# Authenticate Docker to ECR automatically
iobend auth ecr

# Build and push
iobend container build . --name my-app
iobend container push my-app 123456789012.dkr.ecr.us-east-1.amazonaws.com/my-app:latest
```
