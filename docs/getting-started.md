# Getting Started

## Overview

Welcome to IOBend! This guide will walk you through setting up your first project, running initial diagnostics, and getting familiar with the core workflow.

## Usage

Once installed, IOBend is available globally via the `iobend` command.

1. **Initialize IOBend**
   Navigate to your project directory and initialize IOBend to create a configuration file.

   ```bash
   cd your-project
   iobend init
   ```

2. **Run a Health Check**
   Verify that your local machine meets the project requirements.

   ```bash
   iobend doctor
   ```

3. **Explore the UI**
   Launch the web dashboard for a visual breakdown of your environment.

   ```bash
   iobend ui
   ```

## Examples

If you want to start a fresh project with sensible defaults:

```bash
iobend generate new-project my-app --template node-ts
```

## Expected output

When running `iobend init`:

```
✅ Successfully initialized IOBend in /Users/dev/your-project
📝 Created iobend.yaml with default settings.
🚀 Run `iobend doctor` to check your environment health.
```

## Common problems

- **Command Not Found**: Ensure the installation directory is in your system `$PATH`. If installed via npm, check your `npm bin -g` directory.
- **Config Not Found**: Some commands require you to be inside a directory with an `iobend.yaml` file. Run `iobend init` first.

## Related commands

- [`iobend doctor`](doctor.md)
- [`iobend ui`](ui.md)
