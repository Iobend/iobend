---
title: "IOBend Documentation"
description: "Developer environment manager for diagnostics, setup, and DevOps automation."
keywords: ["iobend", "cli", "devops", "platform engineering", "developer experience"]
---

# IOBend Documentation

Welcome to the official documentation for **IOBend** – the developer environment manager for diagnostics, setup, and DevOps automation.

## What is IOBend?

IOBend is a modern, cross-platform CLI tool built to unify the way developers and platform engineers configure, manage, and debug their workspaces. It draws inspiration from industry standards like Docker, Terraform, and the GitHub CLI to provide an intuitive, robust, and extensible interface.

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
