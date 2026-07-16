# Auth

## Overview

The `iobend auth` command manages authentication across your entire developer environment. It acts as a secure, centralized credential manager for cloud providers, package registries, and internal services required by your project.

## Usage

```bash
iobend auth <subcommand> [options]
```

**Subcommands:**
- `login`: Authenticate with a specific provider.
- `logout`: Clear credentials for a provider.
- `status`: Check current authentication status for all required services.
- `sync`: Synchronize credentials across WSL, VMs, or containers.

## Examples

Log in to AWS using SSO:
```bash
iobend auth login aws --profile default
```

Check the status of all required authentications:
```bash
iobend auth status
```

## Expected output

When running `iobend auth status`:

```
🔐 Authentication Status:

✅ AWS (profile: staging): Authenticated (Expires in 11h 59m)
✅ GitHub: Authenticated (Token valid)
❌ npm: Not authenticated (Run `iobend auth login npm`)
```

## Common problems

- **Browser doesn't open**: If the OAuth flow fails to open a browser window, IOBend will print a fallback URL to the terminal. Copy and paste it into your browser manually.
- **Expired Tokens**: If a token expires during a session, IOBend will prompt you to re-authenticate the next time you run a command that requires it.

## Related commands

- [`iobend doctor`](doctor.md)
