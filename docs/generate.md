# Generate

## Overview

The `ashgrid generate` command (alias: `ashgrid gen`) scaffolds new code, configurations, or infrastructure based on standardized templates defined by your team or the community. It ensures that new projects or components adhere to best practices from day one.

## Usage

```bash
ashgrid generate <template> <name> [options]
```

**Options:**
- `--dry-run`: Preview the files that will be created without writing them to disk.
- `--force`: Overwrite existing files if they conflict with the generated output.
- `--interactive`: Answer template variables via an interactive prompt (default).

## Examples

Generate a new React component:
```bash
ashgrid generate component Button
```

Generate a Dockerfile for a Node.js app without prompts:
```bash
ashgrid generate dockerfile --node-version 18 --port 3000
```

## Expected output

```
✨ Scaffolding 'component' -> Button...

[CREATE] src/components/Button/Button.tsx
[CREATE] src/components/Button/Button.test.tsx
[CREATE] src/components/Button/Button.module.css
[CREATE] src/components/Button/index.ts

✅ Successfully generated 4 files.
```

## Common problems

- **Template not found**: Ensure the template exists in your project's `.ashgrid/templates` directory or in the global registry.
- **File conflicts**: If a file already exists at the target path, AshGrid will pause and ask for confirmation unless the `--force` flag is provided.

## Related commands

- [`ashgrid init`](getting-started.md)
