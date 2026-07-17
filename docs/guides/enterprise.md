---
title: "Enterprise Guide"
description: "Using IOBend in large organizations."
keywords: ["enterprise", "teams", "rbac", "policies", "iobend"]
---

# Enterprise Guide

For organizations with dozens or hundreds of developers, IOBend provides governance, standardized tooling, and telemetry.

## Centralized Templates

Instead of letting teams guess how to set up a new microservice, Platform Engineers can define custom templates hosted in a central Git repository.

```bash
iobend config set templates.registry "git@github.com:my-org/iobend-templates.git" --global
```

Developers then run:
```bash
iobend generate our-standard-api
```

## Role-Based Access Control (RBAC)

Integrate IOBend with your Identity Provider (IdP) via OIDC to enforce which developers can deploy to specific environments.

## Auditing and Telemetry

IOBend can send structured usage data and error logs to your internal observability stack (like Datadog or Splunk) to help Platform teams identify failing builds before developers even report them.

```bash
iobend config set telemetry.endpoint "https://observability.my-org.internal/ingest" --global
```

## Custom CLI Plugins

Enterprise customers can write custom Go or Node.js plugins to extend `iobend` with company-specific commands (e.g., `iobend vpn connect`).

> [!IMPORTANT]
> Some Enterprise features require a commercial license. See the [Enterprise section](../enterprise.md) for details on self-hosting and cloud offerings.
