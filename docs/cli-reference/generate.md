---
title: "iobend generate"
description: "Scaffold new projects, pipelines, and infrastructure."
keywords: ["cli", "generate", "scaffold", "templates", "iobend", "boilerplate"]
---

# `iobend generate`

## Purpose

The `iobend generate` command is the core scaffolding engine of IOBend. It rapidly bootstraps new projects, CI/CD pipelines, Dockerfiles, and infrastructure-as-code (IaC) templates, ensuring best practices are baked in from line one.

## Syntax

```bash
iobend generate [template] [options]
```

## Arguments

| Argument   | Description                                                                                | Required |
| ---------- | ------------------------------------------------------------------------------------------ | -------- |
| `template` | The name of the template to generate (e.g., `nodejs`, `docker-compose`, `github-actions`). | No       |

## Options

| Option                | Description                                             | Default             |
| --------------------- | ------------------------------------------------------- | ------------------- |
| `--name`, `-n`        | The name of the project or generated file.              | `my-project`        |
| `--dest`, `-d`        | The destination directory for the generated files.      | `./`                |
| `--force`, `-f`       | Overwrite existing files without prompting.             | `false`             |
| `--interactive`, `-i` | Force interactive mode to customize template variables. | `true` (if no args) |

## Examples

**Start the interactive template picker:**

```bash
iobend generate
```

**Generate a Node.js project non-interactively:**

```bash
iobend generate nodejs --name my-api --dest ./my-api
```

**Add a GitHub Actions CI pipeline to an existing project:**

```bash
iobend generate github-actions --force
```

## Expected Output

```text
🚀 Generating 'nodejs' template in ./my-api...

📁 Created directory: ./my-api
📄 Created file: ./my-api/package.json
📄 Created file: ./my-api/index.js
📄 Created file: ./my-api/.gitignore

✅ Generation complete! Next steps:
   cd ./my-api
   npm install
   npm run start
```

## Common Errors

- **`TemplateNotFound`**: The specified template name does not exist in the official or local registry.
- **`FileExists`**: The destination already contains files that would be overwritten. Use `--force` to bypass.
- **`InvalidDestination`**: The destination path is not writable.

## Tips

- You can create your own custom templates in your global `~/.iobend/templates` directory, which will automatically show up when you run `iobend generate`.

## Best Practices

- Run `iobend generate` at the root of an empty repository to ensure files are placed correctly.
- Use `--interactive` to see all available customization options for a template.
