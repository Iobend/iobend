# Auth

## Overview

The `ashgrid auth` command manages authentication across your entire developer environment. It acts as a secure, centralized credential manager for cloud providers, package registries, and internal services required by your project.

## Usage

```bash
ashgrid auth <subcommand> [options]
```

**Subcommands:**
- `login`: Authenticate with a specific provider.
- `logout`: Clear credentials for a provider.
- `status`: Check current authentication status for all required services.
- `sync`: Synchronize credentials across WSL, VMs, or containers.

## Examples

Log in to AWS using SSO:
```bash
ashgrid auth login aws --profile default
```

Check the status of all required authentications:
```bash
ashgrid auth status
```

## Expected output

When running `ashgrid auth status`:

```
🔐 Authentication Status:

✅ AWS (profile: staging): Authenticated (Expires in 11h 59m)
✅ GitHub: Authenticated (Token valid)
❌ npm: Not authenticated (Run `ashgrid auth login npm`)
```

## Common problems

- **Browser doesn't open**: If the OAuth flow fails to open a browser window, AshGrid will print a fallback URL to the terminal. Copy and paste it into your browser manually.
- **Expired Tokens**: If a token expires during a session, AshGrid will prompt you to re-authenticate the next time you run a command that requires it.

## Related commands

- [`ashgrid doctor`](doctor.md)
