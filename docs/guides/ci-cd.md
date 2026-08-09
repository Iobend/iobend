---
title: "CI/CD Integration"
description: "How to use IOBend in your CI/CD workflows."
keywords:
  [
    "ci",
    "cd",
    "continuous integration",
    "continuous deployment",
    "pipelines",
    "iobend",
  ]
---

# CI/CD Integration

IOBend is built to eliminate the "it works on my machine" problem. By using IOBend in your CI/CD pipelines, you guarantee that your build agents run the exact same diagnostic checks, tests, and builds as your developers.

## The Problem with Traditional CI

Traditionally, developers maintain a `Dockerfile` for local development, a `.gitlab-ci.yml` or GitHub Actions workflow for CI, and Terraform for deployment. Keeping these synchronized is error-prone.

## The IOBend Approach

With IOBend, the configuration is centralized in `iobend.json`.

Your CI script simply becomes:

```bash
iobend install
iobend doctor --json > report.json
iobend run test
iobend container build .
```

## Supported Providers

IOBend can run inside any standard CI/CD provider:

- **GitHub Actions**: See the [GitHub Actions Guide](github-actions.md).
- **GitLab CI**: Use our official GitLab Docker image `registry.iobend.dev/cli:latest`.
- **CircleCI**: Execute IOBend commands directly via the `run` step.
- **Jenkins**: Install the binary on your agent nodes and call it within your `Jenkinsfile`.

## Managing Secrets in CI

Do not commit `.env` files. Instead, load secrets natively into your CI provider's environment variable manager. IOBend will automatically read `IOBEND_` prefixed variables or any variables referenced in your `iobend.json`.

```bash
# Example Jenkinsfile step
sh 'iobend auth login --provider aws --token ${AWS_TOKEN}'
sh 'iobend deploy --env production'
```
