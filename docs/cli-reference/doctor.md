---
title: "iobend doctor"
description: "Diagnose and fix environment issues."
keywords: ["cli", "doctor", "diagnostics", "troubleshooting", "iobend"]
---

# `iobend doctor`

## Purpose

The `iobend doctor` command performs a comprehensive diagnostic check of your development environment. It verifies that required tools (like Node.js, Docker, Git) are installed, checks network connectivity, and validates your IOBend configuration.

## Syntax

```bash
iobend doctor [options]
```

## Arguments

This command does not take any positional arguments.

## Options

| Option            | Description                                        | Default |
| ----------------- | -------------------------------------------------- | ------- |
| `--fix`           | Attempt to automatically fix detected issues.      | `false` |
| `--verbose`, `-v` | Print detailed logs during the diagnostic process. | `false` |
| `--json`          | Output the diagnostic results in JSON format.      | `false` |

## Examples

**Run a standard health check:**

```bash
iobend doctor
```

**Automatically fix minor issues:**

```bash
iobend doctor --fix
```

**Output results as JSON for CI integrations:**

```bash
iobend doctor --json > diagnostics.json
```

## Expected Output

```text
🩺 Running IOBend Environment Diagnostics...

[✓] IOBend CLI v1.0.0 is up to date
[✓] Node.js v18.16.0 detected
[✓] Git v2.39.2 detected
[!] Docker is not running or not installed
[✓] Network connectivity OK

⚠️  Warning: Docker is required for container tasks.
💡 Tip: Install Docker Desktop from https://www.docker.com/products/docker-desktop/
```

## Common Errors

- **`Permission Denied`**: You might need to run the command with elevated privileges if the doctor attempts to check system-level directories.
- **`Network Timeout`**: If checking for CLI updates fails, ensure you are connected to the internet and not blocked by a corporate firewall.

## Tips

- Run `iobend doctor` immediately after installation to ensure your system is fully prepared.

## Best Practices

- Add `iobend doctor --json` to your pre-commit hooks or CI/CD pipelines to ensure developers and build runners meet the necessary system requirements before proceeding.
