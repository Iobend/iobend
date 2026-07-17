---
title: "Security"
description: "Security policies, privacy, and telemetry in IOBend."
keywords: ["security", "privacy", "telemetry", "vulnerabilities", "license", "iobend"]
---

# Security

At IOBend, the security of your developer environment and source code is our highest priority. This document outlines our security practices, privacy policies, and how to report vulnerabilities.

## Security Policy

### Supported Versions
We actively maintain and provide security patches for the latest major release of the IOBend CLI. 

| Version | Supported          |
| ------- | ------------------ |
| 1.x.x   | :white_check_mark: |
| < 1.0.0 | :x:                |

### Reporting Vulnerabilities
If you discover a security vulnerability in IOBend, please DO NOT report it on the public GitHub issue tracker. 

Instead, please send an email to **security@iobend.dev**. We will acknowledge receipt of your vulnerability report within 48 hours and strive to send you regular updates about our progress.

## Privacy & Telemetry

### What data do we collect?
By default, IOBend collects anonymous telemetry to help us understand usage patterns and improve the tool. We collect:
- CLI version
- Operating System and Architecture
- Command execution counts (e.g., `iobend doctor ran successfully`)
- Anonymized crash stack traces

### What data do we NOT collect?
We **never** collect:
- Source code
- File names or paths
- Environment variables or `.env` contents
- Secrets, API keys, or tokens
- IP addresses (they are stripped at our edge ingestion nodes)

### Opting Out
If you prefer not to send telemetry data, you can opt out globally:
```bash
iobend config set telemetry.enabled false --global
```
Alternatively, set the environment variable:
```bash
export IOBEND_TELEMETRY_DISABLED=1
```

## Secrets Management
IOBend relies heavily on the native security features of your operating system.
- **macOS**: Uses the macOS Keychain via the `security` CLI.
- **Windows**: Uses the Windows Credential Manager.
- **Linux**: Uses the Secret Service API (gnome-keyring / KWallet) via `libsecret`.

## License
The open-source IOBend CLI is licensed under the MIT License. Enterprise plugins and dashboards may be subject to separate commercial licensing. See the `LICENSE` file in the repository root for full details.
