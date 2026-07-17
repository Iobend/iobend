---
title: "Local Development"
description: "Optimizing your local development loop with IOBend."
keywords: ["local development", "workflow", "hot reload", "iobend"]
---

# Local Development

IOBend is designed to get out of your way and let you code, while ensuring that the environment your code runs in is robust and reproducible.

## Hot Reloading

When starting a project locally, IOBend automatically detects frameworks that support hot-reloading (like Next.js, Vite, or Nodemon) and exposes the necessary ports and volume mounts.

```bash
iobend run dev
```

If you are running inside a container, IOBend maps your local source directory to the container so you don't have to rebuild the image on every file change.

## Environment Sandboxing

If you work on multiple projects, you've likely encountered port conflicts or global dependency version mismatches (e.g., Project A needs Node 16, Project B needs Node 18).

IOBend solves this by isolating environments:
- **Ports**: Automatically remaps conflicting ports if requested.
- **Runtimes**: Uses isolated runtimes specified in `iobend.json`.

## Secret Management

Store your local `.env` files securely. IOBend ensures they are only loaded when executing commands within the project directory.

> [!TIP]
> Use `iobend doctor` if your local environment ever feels "broken." It takes 3 seconds and often finds the exact file or permission that is causing the issue.
