---
title: "IOBend Documentation"
description: "Legacy documentation for IOBend CLI."
keywords:
  ["iobend", "cli", "devops", "platform engineering", "developer experience"]
---

# IOBend Documentation
 
> [!WARNING]
> **LEGACY / ARCHIVED DOCUMENTATION**  
> This documentation represents an earlier, CLI-only stage of IOBend. For current documentation covering the complete **IOBend Unified Developer Experience Platform and Ecosystem** (Web, CLI, IDE Extensions, SDK), please visit the official live documentation at [iobend.com/docs](https://iobend.com/docs).

Welcome to the legacy documentation archive for **IOBend CLI** — part of the IOBend Unified Developer Experience Platform.

## What is IOBend?

IOBend is a Unified Developer Experience Platform connecting workspaces, developer environments, secrets, tools, and workflows.

Whether you're a student setting up your first project or an enterprise team orchestrating complex microservices, IOBend helps you get to work faster.

## Why IOBend?

> [!TIP]
> **Focus on code, not configuration.**

- **Easy to Learn:** A thoughtful, beginner-friendly command structure.
- **Enterprise Ready:** Advanced secret management, telemetry controls, and RBAC support.
- **Diagnostics First:** Stop guessing why builds fail locally. `iobend doctor` tells you exactly what is missing.
- **Platform Agnostic:** Built to seamlessly integrate with Node.js, Docker, Kubernetes, AWS, and more.

## Supported Platforms

IOBend provides native support for:

- **macOS** (Apple Silicon & Intel)
- **Linux** (x64, arm64)
- **Windows** (x64 via native installer and WSL2)

## Quick Example

Ready to see IOBend in action? Start by diagnosing your system:

```bash
iobend doctor
```

Then, scaffold a complete, Docker-ready environment in seconds:

```bash
iobend generate --template docker-node-app
```

## Where to go next?

- **[Getting Started](getting-started.md)**: Install IOBend and run your first commands.
- **[CLI Reference](cli-reference/README.md)**: Explore the detailed documentation for every command.
- **[Configuration](configuration.md)**: Learn how to customize IOBend globally and per project.
- **[Guides](guides/README.md)**: Dive into specific use cases like CI/CD, AWS, and Kubernetes.
