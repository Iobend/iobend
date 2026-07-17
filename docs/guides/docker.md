---
title: "Docker Guide"
description: "Container management with IOBend and Docker."
keywords: ["docker", "containers", "orchestration", "iobend", "podman"]
---

# Docker Guide

The `iobend container` command provides a unified, cross-platform way to interact with Docker (or Podman).

## Why use IOBend for Docker?

While the Docker CLI is powerful, it can be verbose. IOBend abstracts common workflows, integrates directly with your project's `iobend.json`, and handles environment variable injection automatically.

## Building Images

IOBend reads your `iobend.json` to infer build contexts and arguments.

```bash
iobend container build .
```
If your project requires specific build args (e.g., `GITHUB_TOKEN`), IOBend can securely inject them from your authenticated profile without leaving them in the shell history.

## Starting Environments

If your project contains a `docker-compose.yml`, IOBend will automatically detect it.

```bash
iobend container start
```
*This wraps `docker compose up -d`, streaming logs cleanly and waiting for health checks to pass.*

## Troubleshooting Containers

If a container fails to start, use IOBend's diagnostic tools:

```bash
# View live logs
iobend container logs my-app --follow

# Restart a specific service
iobend container restart my-app
```

> [!TIP]
> If you prefer Podman over Docker, run `iobend config set runtime.engine podman --global`. IOBend will transparently route all container commands to Podman.
