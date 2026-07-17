---
title: "iobend update"
description: "Update the IOBend CLI to the latest version."
keywords: ["cli", "update", "upgrade", "version", "iobend"]
---

# `iobend update`

## Purpose
The `iobend update` command checks for the latest available version of the IOBend CLI and automatically upgrades your current installation. It handles the update process gracefully depending on how you originally installed the CLI (e.g., via npm, Homebrew, or binary).

## Syntax
```bash
iobend update [options]
```

## Arguments
This command does not take any positional arguments.

## Options
| Option | Description | Default |
|--------|-------------|---------|
| `--dry-run` | Check for updates without actually installing them. | `false` |
| `--channel` | Specify the release channel (`stable`, `beta`, `nightly`). | `stable` |

## Examples

**Check for and install the latest stable update:**
```bash
iobend update
```

**Check if an update is available without installing:**
```bash
iobend update --dry-run
```

**Update to the latest beta release:**
```bash
iobend update --channel beta
```

## Expected Output

*Output when an update is available:*
```text
🔍 Checking for updates...
✨ A new version is available! (v1.0.0 -> v1.1.0)
📦 Downloading update...
✅ Successfully updated to v1.1.0. Run 'iobend version' to verify.
```

*Output when already on the latest version:*
```text
🔍 Checking for updates...
✅ You are already running the latest version of IOBend (v1.0.0).
```

## Common Errors
- **`PermissionDenied`**: The CLI does not have write access to its installation directory (common with global npm installs). Try running with `sudo` or fixing your npm permissions.
- **`UpdateNotSupported`**: If you installed IOBend via a system package manager (like `apt` or `brew`), `iobend update` might instruct you to use the package manager's native upgrade command instead.
- **`NetworkError`**: Unable to reach the release registry.

## Tips
- Set up a cron job or startup script to run `iobend update --dry-run` periodically and notify you of new features.

## Best Practices
- Always check the [Release Notes](../release-notes.md) for breaking changes before updating across major versions (e.g., v1.x to v2.x).
