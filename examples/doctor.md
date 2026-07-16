# Doctor Examples

## Overview

This document provides realistic command examples for `ashgrid doctor` in various scenarios.

## Usage Examples

### 1. The Morning Routine
Run a standard check before starting work to ensure nothing broke overnight.

```bash
ashgrid doctor
```

### 2. Auto-Fixing a Broken Environment
When switching branches, you might need a different Node.js version or missing global packages.

```bash
ashgrid doctor --fix
```

### 3. CI/CD Pipeline Integration
Run the doctor in a headless CI environment and output the results as JSON for reporting.

```bash
ashgrid doctor --ci --output json > diagnostics.json
```

### 4. Debugging a Specific Tool
If you only want to check the status of Docker and ignore Node or Python.

```bash
ashgrid doctor --only docker,kubectl
```

### 5. Verbose Output for Troubleshooting
When a check fails and you need to see the exact commands AshGrid is running behind the scenes.

```bash
ashgrid doctor --verbose
```

## Expected output

Example output of `--only docker`:

```
🔍 Running AshGrid Diagnostics (Filtered)...

✅ Docker Daemon: Running (v24.0.5)
✅ Docker Compose: Installed (v2.20.2)
⚠️ Docker Resources: Memory usage is at 85% of allocated limit.

Results: 2 Passed, 1 Warning.
```
