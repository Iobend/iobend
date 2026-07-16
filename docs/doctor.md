# Doctor

## Overview

The `ashgrid doctor` command is the heart of the platform. It diagnoses your local environment against the required dependencies defined in your project, checking for missing tools, outdated versions, and configuration drifts.

## Usage

Run the doctor command in any directory containing an `ashgrid.yaml` configuration file.

```bash
ashgrid doctor [options]
```

**Options:**
- `--fix`: Automatically attempt to fix failing diagnostic checks (e.g., installing missing packages).
- `--verbose`: Output detailed logs for every check.
- `--output <format>`: Output results in a specific format (`json`, `yaml`, `text`).

## Examples

Run standard diagnostics:
```bash
ashgrid doctor
```

Run diagnostics and auto-fix issues:
```bash
ashgrid doctor --fix
```

Output results to JSON for CI/CD pipelines:
```bash
ashgrid doctor --output json > report.json
```

## Expected output

```
🔍 Running AshGrid Diagnostics...

✅ Node.js: v18.17.1 (Required: >=18.0.0)
✅ Docker: 24.0.5 (Required: >=20.10.0)
❌ Python: Not found (Required: >=3.9.0)
⚠️ AWS CLI: 1.29.0 (Required: >=2.0.0)

Results: 2 Passed, 1 Warning, 1 Failed.
💡 Run `ashgrid doctor --fix` to automatically resolve these issues.
```

## Common problems

- **Doctor hangs on a check**: A specific tool may be prompting for input in the background. Run `ashgrid doctor --verbose` to identify the hanging process.
- **Auto-fix fails**: Some installations require root/administrator privileges. Ensure you have the necessary rights or install the tool manually.

## Related commands

- [`ashgrid ui`](ui.md)
- [`ashgrid container`](container.md)
