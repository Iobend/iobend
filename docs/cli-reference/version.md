---
title: "iobend version"
description: "Print the current IOBend CLI version."
keywords: ["cli", "version", "info", "iobend"]
---

# `iobend version`

## Purpose
The `iobend version` command displays the currently installed version of the IOBend CLI, along with system architecture and OS details. This is useful for debugging and submitting issue reports.

## Syntax
```bash
iobend version [options]
```

## Arguments
This command does not take any positional arguments.

## Options
| Option | Description | Default |
|--------|-------------|---------|
| `--short` | Output only the version number, without system details. | `false` |
| `--json` | Output the version information in JSON format. | `false` |

## Examples

**Standard version output:**
```bash
iobend version
```

**Short version output (useful for scripts):**
```bash
iobend version --short
```

**JSON formatted output:**
```bash
iobend version --json
```

## Expected Output

*Standard Output:*
```text
iobend version 1.0.0 (darwin-arm64, Node v18.16.0)
```

*Short Output:*
```text
1.0.0
```

*JSON Output:*
```json
{
  "version": "1.0.0",
  "os": "darwin",
  "arch": "arm64",
  "nodeVersion": "v18.16.0"
}
```

## Common Errors
- **`VersionMismatch`**: Occasionally, if multiple versions of IOBend are installed via different package managers, the output might not match what you expect. Run `which iobend` (or `where iobend` on Windows) to verify the binary path.

## Tips
- You can also use the standard flag `iobend -v` or `iobend --version` as a shortcut for this command.

## Best Practices
- Always include the full output of `iobend version` when opening a bug report on GitHub.
