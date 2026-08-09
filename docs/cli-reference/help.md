---
title: "iobend help"
description: "Get detailed help for IOBend commands."
keywords: ["cli", "help", "manual", "docs", "iobend"]
---

# `iobend help`

## Purpose

The `iobend help` command displays documentation, usage instructions, and available options for the CLI and its subcommands. It is your built-in manual for discovering how to use IOBend effectively.

## Syntax

```bash
iobend help [command]
```

## Arguments

| Argument  | Description                                                           | Required |
| --------- | --------------------------------------------------------------------- | -------- |
| `command` | The specific subcommand to get help for (e.g., `doctor`, `generate`). | No       |

## Options

This command primarily relies on positional arguments, but also responds to standard help flags.

## Examples

**View the general help menu (lists all commands):**

```bash
iobend help
```

**Get specific help for the `generate` command:**

```bash
iobend help generate
```

**Get help for nested subcommands (e.g., `auth login`):**

```bash
iobend help auth login
```

## Expected Output

_Command-specific Output (`iobend help doctor`):_

```text
Usage: iobend doctor [options]

Diagnose and fix environment issues.

Options:
  --fix          Attempt to automatically fix detected issues (default: false)
  -v, --verbose  Print detailed logs during the diagnostic process
  --json         Output the diagnostic results in JSON format
  -h, --help     display help for command
```

## Common Errors

- **`CommandNotFound`**: You requested help for a command that does not exist in the current CLI version.

## Tips

- You can append `--help` or `-h` to almost any IOBend command to achieve the same result as prefixing it with `help` (e.g., `iobend generate --help`).

## Best Practices

- Before searching online for usage syntax, always check `iobend help <command>` to see the exact flags supported by your installed version.
