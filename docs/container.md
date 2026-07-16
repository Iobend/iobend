# Container

## Overview

The `ashgrid container` command provides seamless validation, orchestration, and diagnostics for your local Docker and Kubernetes environments. It helps resolve common issues like port conflicts, missing networks, and misconfigured contexts.

## Usage

```bash
ashgrid container <subcommand> [options]
```

**Subcommands:**
- `validate`: Check if Docker/Kubernetes configurations are valid.
- `clean`: Remove dangling images, stopped containers, and unused volumes.
- `context`: Manage and switch Kubernetes/Docker contexts safely.

## Examples

Validate your `docker-compose.yml` and `Dockerfile`:
```bash
ashgrid container validate
```

Clean up unused container resources to free up disk space:
```bash
ashgrid container clean --all
```

## Expected output

When running `ashgrid container validate`:

```
🐳 Validating container configurations...

✅ Docker daemon is running (v24.0.5)
✅ docker-compose.yml syntax is valid
❌ Port conflict detected: Port 5432 is already in use by a local postgres process.
⚠️ Dockerfile: Consider using a specific tag instead of 'latest' for 'node' image.

💡 Suggestion: Stop the local postgres instance or change the mapped port in docker-compose.yml.
```

## Common problems

- **Docker daemon not running**: Ensure Docker Desktop or the Docker daemon is started before running container commands.
- **Permission denied**: On Linux, ensure your user is added to the `docker` group, or run the command with appropriate permissions.

## Related commands

- [`ashgrid doctor`](doctor.md)
