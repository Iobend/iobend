---
title: "Templates"
description: "Scaffold projects using IOBend templates."
keywords: ["templates", "generators", "scaffold", "boilerplate", "iobend"]
---

# Templates

Templates are the fastest way to start new work. IOBend uses them to generate standard project layouts, Docker configurations, CI pipelines, and infrastructure.

## Usage

Use the `iobend generate` command to scaffold from a template:

```bash
iobend generate [template-name]
```

## Built-in Templates

IOBend ships with several highly optimized templates.

### Project Templates
- **`nodejs`**: A modern Node.js backend setup (TypeScript, ESLint, Jest).
- **`react`**: A Vite-powered React frontend application.
- **`python-api`**: A FastAPI application with Uvicorn and pytest.

### Docker Templates
- **`docker-compose`**: Generates a standard `docker-compose.yml` with a database and cache.
- **`dockerfile-node`**: An optimized, multi-stage Dockerfile for Node.js.
- **`dockerfile-python`**: An optimized Dockerfile for Python apps.

### CI Templates
- **`github-actions`**: Standard PR and main-branch workflows for GitHub.
- **`gitlab-ci`**: Standard `.gitlab-ci.yml` pipeline.

### Infrastructure Templates
- **`terraform-aws`**: Basic VPC and ECS cluster configuration.
- **`bicep-azure`**: Azure Container Apps deployment script.

## Creating Custom Templates

You can create your own templates by placing them in `~/.iobend/templates/`.

A template is simply a directory containing files with Handlebars syntax (`{{ variable }}`) and a `schema.json` defining the variables to prompt the user for.

**Example `schema.json`:**
```json
{
  "name": "Custom API",
  "variables": {
    "projectName": {
      "type": "string",
      "prompt": "What is the name of your project?"
    },
    "includeRedis": {
      "type": "boolean",
      "prompt": "Do you need Redis caching?"
    }
  }
}
```
