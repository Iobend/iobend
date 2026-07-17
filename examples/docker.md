# Docker Examples

## Overview

This document provides realistic command examples for managing Docker with `iobend container`.

## Usage Examples

### 1. Validating the Setup

Check if your Dockerfile and Compose files adhere to best practices.

```bash
iobend container validate
```

### 2. Deep Cleanup

Remove all stopped containers, dangling images, and unused volumes safely.

```bash
iobend container clean --volumes
```

### 3. Restarting the Stack

Quickly restart all containers defined in the project.

```bash
iobend container restart
```

### 4. Viewing Logs

Tail logs for a specific service defined in `docker-compose.yml`.

```bash
iobend container logs web-backend --follow
```

## Expected output

Example output of `clean`:

```
🧹 Cleaning Docker resources...

- Removed 3 dangling images (Saved 1.2GB)
- Removed 2 stopped containers
- Removed 1 unused volume

✅ Cleanup complete. Total space reclaimed: 1.2GB.
```
