---
title: "Configuration"
description: "Configure IOBend globally and per-project."
keywords: ["config", "settings", "iobend.json", "environment variables", "profiles", "secrets"]
---

# Configuration

IOBend is designed to be highly configurable to match your specific workflow. Configuration happens at multiple levels, allowing you to define sane global defaults while overriding them on a per-project basis.

## The Configuration Hierarchy

IOBend resolves configuration values in the following order of precedence (highest to lowest):

1. **Command Line Flags** (e.g., `--port 8080`)
2. **Environment Variables** (e.g., `IOBEND_PORT=8080`)
3. **Project Config** (`./iobend.json`)
4. **Global Config** (`~/.iobend/config.json`)

## Global Config

Your global configuration file is located at `~/.iobend/config.json` (or `%USERPROFILE%\.iobend\config.json` on Windows). It stores machine-wide preferences.

To view or edit these settings, use the `iobend config` command:
```bash
iobend config set core.editor "code --wait" --global
```

## Project Config (`iobend.json`)

The `iobend.json` file lives at the root of your project repository. It defines exactly how the project should be built, run, and deployed by the CLI.

**Example `iobend.json`:**
```json
{
  "project": {
    "name": "my-cool-api",
    "version": "1.0.0"
  },
  "runtime": {
    "engine": "docker",
    "ports": ["3000:3000"]
  },
  "scripts": {
    "prestart": "npm install",
    "start": "npm run dev"
  }
}
```

> [!NOTE]
> You should commit `iobend.json` to your version control system so your entire team shares the same environment configuration.

## Environment Variables

Any configuration property can be overridden using environment variables prefixed with `IOBEND_`. Nested properties use double underscores `__`.

For example, to override `runtime.engine`, set:
```bash
export IOBEND_RUNTIME__ENGINE="podman"
```

## Profiles

Profiles allow you to switch between different contexts (e.g., `personal`, `work`, `staging`, `production`) within the same machine or project.

To define a profile in your global config:
```bash
iobend config set profiles.work.aws.region "us-west-2" --global
```

Activate it via CLI flag:
```bash
iobend doctor --profile work
```

## Authentication & Secrets

IOBend never stores plaintext secrets (API keys, tokens) in `config.json` or `iobend.json`.

Instead, authentication data is managed by `iobend auth` and securely stored in your operating system's native keychain (macOS Keychain, Windows Credential Manager, or Linux Secret Service).

If you need to inject secrets into a project at runtime, IOBend supports `.env` files out of the box. Variables defined in `.env` are automatically loaded and passed to your containers and scripts.

```bash
# .env (DO NOT COMMIT THIS FILE)
DATABASE_URL="postgres://user:pass@localhost:5432/db"
STRIPE_SECRET_KEY="sk_test_12345"
```
