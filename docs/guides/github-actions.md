---
title: "GitHub Actions Guide"
description: "Integrating IOBend with GitHub Actions."
keywords: ["github actions", "ci", "cd", "pipelines", "iobend"]
---

# GitHub Actions Guide

Integrating IOBend into your GitHub Actions pipelines ensures that your CI runs exactly the same way as your local environment.

## Generating a Workflow

You can instantly generate a GitHub Actions workflow optimized for IOBend:

```bash
iobend generate github-actions
```

This creates `.github/workflows/ci.yml` in your repository.

## Example Workflow

Here is a standard workflow that installs IOBend, runs diagnostics, and executes your project's test suite:

```yaml
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  build-and-test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: "18"

      - name: Install IOBend
        run: npm install -g iobend

      - name: Run Diagnostics
        run: iobend doctor --json > diagnostics.json

      - name: Run Tests
        run: iobend run test
```

## Handling Authentication

If your CI pipeline needs to push containers or deploy infrastructure, it needs authentication. Use GitHub Secrets combined with IOBend's token support.

```yaml
- name: Authenticate IOBend
  run: iobend auth login --provider aws --token ${{ secrets.AWS_SESSION_TOKEN }}
```

> [!WARNING]
> Never hardcode tokens in your YAML files. Always use `${{ secrets.NAME }}`.
