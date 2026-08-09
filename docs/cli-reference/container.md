---
title: "iobend container"
description: "Manage local and remote containers effortlessly."
keywords:
  ["cli", "container", "docker", "kubernetes", "iobend", "orchestration"]
---

# `iobend container`

## Purpose

The `iobend container` command acts as an abstraction layer over container runtimes (like Docker or Podman). It allows you to build, start, stop, and inspect containers without needing to memorize complex, runtime-specific flags.

## Syntax

```bash
iobend container <action> [container_name] [options]
```

## Actions

- `start`: Start a container or service.
- `stop`: Stop a running container.
- `build`: Build a container image from a Dockerfile.
- `logs`: Fetch the logs of a container.
- `ls`: List active containers.

## Arguments

| Argument         | Description                                             | Required               |
| ---------------- | ------------------------------------------------------- | ---------------------- |
| `action`         | The action to perform (`start`, `stop`, `build`, etc.). | Yes                    |
| `container_name` | The name or ID of the container to act upon.            | Yes (for most actions) |

## Options

| Option           | Description                                      | Default       |
| ---------------- | ------------------------------------------------ | ------------- |
| `--env`, `-e`    | Pass environment variables to the container.     | None          |
| `--port`, `-p`   | Map ports (e.g., `8080:80`).                     | None          |
| `--follow`, `-f` | Follow log output (for `logs` action).           | `false`       |
| `--engine`       | Specify the backend engine (`docker`, `podman`). | Auto-detected |

## Examples

**List all running containers:**

```bash
iobend container ls
```

**Build an image in the current directory:**

```bash
iobend container build . --name my-app:latest
```

**Start a container with environment variables:**

```bash
iobend container start my-app --port 3000:3000 --env NODE_ENV=development
```

**View live logs:**

```bash
iobend container logs my-app --follow
```

## Expected Output

_Build Output:_

```text
🐳 Building container 'my-app:latest' using Docker engine...
[+] Building 2.5s (8/8) FINISHED
 => [internal] load build definition from Dockerfile
 => => transferring dockerfile: 32B
...
✅ Build successful!
```

## Common Errors

- **`EngineNotRunning`**: IOBend could not detect an active container engine (Docker daemon might be stopped).
- **`PortAlreadyInUse`**: The requested host port is already bound by another process.
- **`ImageNotFound`**: Attempted to start a container using an image that has not been built or pulled.

## Tips

- IOBend automatically falls back to `podman` if `docker` is not available, provided `--engine` is not explicitly set.

## Best Practices

- Use `iobend doctor` to verify your container engine health if commands begin to hang or fail unexpectedly.
