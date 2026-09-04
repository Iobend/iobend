---
title: "Enterprise"
description: "IOBend for Teams and Organizations."
keywords:
  [
    "enterprise",
    "teams",
    "cloud",
    "self-hosted",
    "licensing",
    "policies",
    "iobend",
  ]
---

# IOBend Enterprise

For organizations scaling beyond a single team, IOBend Enterprise offers advanced governance, security, and observability features to standardize developer environments company-wide.

## Why IOBend Enterprise?

While the open-source CLI is perfect for individual developers and small teams, large organizations need guarantees:

- **Consistency**: Ensure every developer is using approved container base images and verified dependencies.
- **Security**: Prevent hardcoded secrets from entering local environments.
- **Observability**: Track deployment success rates and local build times.

## Deployment Models

We offer two deployment models for the Enterprise control plane:

### 1. IOBend Cloud (SaaS)

The easiest way to get started. We host the management dashboard, telemetry ingestion, and template registry for you. It integrates directly with your existing OIDC provider (Okta, Azure AD, Google Workspace).

### 2. Self-Hosted (On-Premise / VPC)

For highly regulated industries (Finance, Healthcare, Defense), you can deploy the IOBend control plane entirely within your own infrastructure (Kubernetes or ECS). No data ever leaves your network.

## Key Features

### Centralized Policies

Platform engineers can enforce rules globally. For example, rejecting any `iobend container build` command if the underlying Dockerfile uses an untrusted base image.

### Teams and RBAC

Organize developers into Teams. Assign permissions so that only the "Backend Team" can deploy to the `production-api` Kubernetes namespace using `iobend deploy`.

### Audit Logs

Every destructive action taken via the CLI (like pushing a container or applying infrastructure) is securely logged to the Enterprise Dashboard for SOC2/ISO27001 compliance.

## Licensing

IOBend Enterprise is licensed on a per-seat (per-developer) basis.
To request a demo, start a trial, or view pricing tiers, please visit [iobend.com/pricing](https://iobend.com/pricing) or contact our sales team at **sales@iobend.com**.
