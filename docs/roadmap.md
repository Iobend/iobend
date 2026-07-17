---
title: "Roadmap"
description: "Upcoming features and future vision for IOBend."
keywords: ["roadmap", "future", "planned", "vision", "iobend"]
---

# Roadmap

Our vision for IOBend is to be the undisputed standard for local developer environments and DevOps automation. Below is our current roadmap.

> [!NOTE]
> This roadmap is a living document. Priorities may shift based on community feedback.

## Current Status
We have just released **v1.0.0**, focusing on core stability, the `doctor` diagnostic tool, container orchestration, and scaffolding templates.

## Q4 2026: The Extensibility Update

**Upcoming Features:**
- **Plugin System (Planned):** Allow users to write and share custom CLI plugins using Go or Node.js.
- **Advanced GitOps (In Progress):** Native integration with ArgoCD and Flux for scaffolding GitOps repositories.
- **Kubernetes Cluster Generation (Planned):** Spin up complex local K8s topologies using `k3d` directly from `iobend.json`.

## Q1 2027: Enterprise & Security

**Upcoming Features:**
- **Enterprise Dashboard (Planned):** A self-hosted web UI for Platform teams to manage templates and view telemetry.
- **Role-Based Access Control (Planned):** Connect `iobend auth` to OIDC providers for fine-grained permissions on who can run deployments.
- **Secret Scanning (Planned):** Built-in pre-commit hooks to prevent developers from accidentally committing secrets.

## Q2 2027: The "Smart" CLI

**Upcoming Features:**
- **Deep LLM Integration (Planned):** Expanding our MCP support so AI assistants can not just read, but *write* and fix IOBend configurations automatically.
- **Automated Upgrades (Planned):** The CLI will be able to automatically update deprecated dependencies in your `package.json` or `Dockerfile` safely.

## Planned Integrations
- HashiCorp Vault (Secrets backend)
- Pulumi (Infrastructure templates)
- Snyk (Security scanning)
- Vercel (Frontend deployment)

## Future Vision

We envision a world where a new developer can clone a repository on their first day, run `iobend start`, and have a perfectly configured, secure, and performant environment within seconds—without needing a 20-page onboarding wiki.
