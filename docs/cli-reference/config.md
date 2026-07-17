---
title: "iobend config"
description: "Manage global and project-level IOBend settings."
keywords: ["cli", "config", "settings", "environment", "iobend"]
---

# `iobend config`

## Purpose
The `iobend config` command allows you to view, modify, and delete configuration settings. IOBend uses a cascading configuration model: it reads global settings first, and overrides them with project-level settings (stored in `iobend.json`).

## Syntax
```bash
iobend config <action> [key] [value] [options]
```

## Actions
- `get`: Retrieve the value of a specific key.
- `set`: Set a specific key to a value.
- `delete`: Remove a configuration key.
- `list`: View all active configuration settings.

## Arguments
| Argument | Description | Required |
|----------|-------------|----------|
| `action` | The action to perform (`get`, `set`, `delete`, `list`). | Yes |
| `key`    | The configuration key (e.g., `core.editor`, `telemetry.enabled`). | Yes (except `list`) |
| `value`  | The value to assign to the key. | Yes (only for `set`) |

## Options
| Option | Description | Default |
|--------|-------------|---------|
| `--global`, `-g` | Apply the change to the global configuration (`~/.iobend/config.json`). | `false` |
| `--project`, `-p` | Apply the change to the local project (`./iobend.json`). | `true` |

## Examples

**List all configurations (merged global and project):**
```bash
iobend config list
```

**Set the default editor globally:**
```bash
iobend config set core.editor "code --wait" --global
```

**Disable telemetry for the current project:**
```bash
iobend config set telemetry.enabled false
```

**Get the current telemetry status:**
```bash
iobend config get telemetry.enabled
```

## Expected Output

*List Output:*
```text
⚙️  Active Configuration:

core.editor=code --wait (global)
core.theme=dark (global)
telemetry.enabled=false (project)
cloud.defaultRegion=us-east-1 (project)
```

## Common Errors
- **`InvalidKey`**: Attempting to set an unrecognized configuration key.
- **`ProjectConfigNotFound`**: Attempting to set a project configuration when not inside an initialized IOBend project.
- **`TypeMismatch`**: Providing a string value for a boolean or integer key.

## Tips
- Project settings always take precedence over global settings.
- Use dot notation (e.g., `cloud.aws.region`) to access nested JSON configuration properties.

## Best Practices
- Never store plaintext secrets or passwords in the config file. Use `iobend auth` or encrypted environment variables instead.
