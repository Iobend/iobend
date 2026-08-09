---
title: "iobend auth"
description: "Manage authentication with cloud providers and services."
keywords:
  ["cli", "auth", "login", "credentials", "iobend", "aws", "gcp", "azure"]
---

# `iobend auth`

## Purpose

The `iobend auth` command manages your authentication state for various integrated cloud providers (like AWS, GCP, Azure) and third-party services. It securely stores credentials using your operating system's native keychain or a designated encrypted secret store.

## Syntax

```bash
iobend auth <command> [options]
```

## Commands

- `login`: Authenticate with a provider.
- `logout`: Clear credentials for a provider.
- `status`: Check your current authentication status.

## Arguments

| Argument  | Description                                                         | Required |
| --------- | ------------------------------------------------------------------- | -------- |
| `command` | The authentication action to perform (`login`, `logout`, `status`). | Yes      |

## Options

| Option             | Description                                                                 | Default   |
| ------------------ | --------------------------------------------------------------------------- | --------- |
| `--provider`, `-p` | Specify the cloud provider (e.g., `aws`, `gcp`, `azure`, `github`).         | None      |
| `--profile`        | Specify a named profile for multiple accounts on the same provider.         | `default` |
| `--token`          | Pass an explicit token instead of launching an interactive browser session. | None      |

## Examples

**Login to AWS interactively:**

```bash
iobend auth login --provider aws
```

**Login using an explicit token:**

```bash
iobend auth login --provider github --token ghp_XXXXXXXXXXXXX
```

**Check authentication status:**

```bash
iobend auth status
```

**Logout from all providers:**

```bash
iobend auth logout --provider all
```

## Expected Output

_Login Output:_

```text
🔐 Authenticating with AWS...
🌐 Opening browser to complete login...
✅ Successfully authenticated as user@example.com (Profile: default)
```

## Common Errors

- **`ProviderNotSupported`**: The provider specified via `--provider` is not currently supported by IOBend.
- **`TokenInvalid`**: The provided explicit token is malformed or has expired.
- **`KeychainAccessDenied`**: IOBend could not write to your OS keychain. Ensure it has the necessary permissions.

## Tips

- Use `--profile` if you need to switch between personal and work accounts for the same provider.

## Best Practices

- Avoid using `--token` in shell history. Prefer interactive logins or setting the token via secure environment variables in CI/CD environments.
