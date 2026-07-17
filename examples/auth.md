# Auth Examples

## Overview

This document provides realistic command examples for `iobend auth` to manage credentials.

## Usage Examples

### 1. Logging into AWS with SSO

Authenticate with AWS SSO using a specific profile defined in your `.aws/config`.

```bash
iobend auth login aws --profile staging-dev
```

### 2. Authenticating with GitHub Enterprise

Log in to a custom GitHub Enterprise instance using a Personal Access Token (PAT).

```bash
iobend auth login github --hostname github.mycompany.com --method token
```

### 3. Checking Expiration Status

Quickly check how much time is left before your cloud tokens expire.

```bash
iobend auth status
```

### 4. Logging out of all services

Clear all cached credentials when switching laptops or finishing work on a public machine.

```bash
iobend auth logout --all
```

## Expected output

Example output of `login aws`:

```
🔑 Authenticating with AWS...
🌐 Opening browser to complete SSO login...
✅ Successfully authenticated as user@mycompany.com
⏳ Token valid until: 2026-07-16 17:00:00
```
