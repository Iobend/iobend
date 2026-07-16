# Getting Started

## Overview

Welcome to AshGrid! This guide will walk you through setting up your first project, running initial diagnostics, and getting familiar with the core workflow.

## Usage

Once installed, AshGrid is available globally via the `ashgrid` command.

1. **Initialize AshGrid**
   Navigate to your project directory and initialize AshGrid to create a configuration file.

   ```bash
   cd your-project
   ashgrid init
   ```

2. **Run a Health Check**
   Verify that your local machine meets the project requirements.

   ```bash
   ashgrid doctor
   ```

3. **Explore the UI**
   Launch the web dashboard for a visual breakdown of your environment.

   ```bash
   ashgrid ui
   ```

## Examples

If you want to start a fresh project with sensible defaults:

```bash
ashgrid generate new-project my-app --template node-ts
```

## Expected output

When running `ashgrid init`:

```
✅ Successfully initialized AshGrid in /Users/dev/your-project
📝 Created ashgrid.yaml with default settings.
🚀 Run `ashgrid doctor` to check your environment health.
```

## Common problems

- **Command Not Found**: Ensure the installation directory is in your system `$PATH`. If installed via npm, check your `npm bin -g` directory.
- **Config Not Found**: Some commands require you to be inside a directory with an `ashgrid.yaml` file. Run `ashgrid init` first.

## Related commands

- [`ashgrid doctor`](doctor.md)
- [`ashgrid ui`](ui.md)
