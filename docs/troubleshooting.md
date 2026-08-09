---
title: "Troubleshooting"
description: "Solutions for common errors and OS-specific issues in IOBend."
keywords:
  [
    "troubleshooting",
    "errors",
    "bugs",
    "help",
    "windows",
    "macos",
    "linux",
    "iobend",
  ]
---

# Troubleshooting

If you encounter issues while using IOBend, start here.

> [!TIP]
> The very first step you should always take is running `iobend doctor`. It is designed to automatically detect and often fix common problems.

## Installation Problems

### EACCES (Permission Denied) on npm install

If you installed via `npm -g` and see an `EACCES` error, your global `node_modules` directory lacks write permissions.
**Fix**: Do not use `sudo`. Instead, configure npm to use a different directory or use a node version manager like `nvm`. Alternatively, use Homebrew or WinGet.

### Command Not Found

If you installed IOBend but your shell says `iobend: command not found`:
**Fix**: Ensure your package manager's bin directory is in your system `$PATH`.

- **npm**: Add `~/.npm-global/bin` to `PATH`.
- **Homebrew**: Run `brew shellenv` and follow the instructions.

## Authentication Errors

### Keychain Access Denied (macOS)

If `iobend auth login` hangs or fails on macOS:
**Fix**: Ensure your terminal application (e.g., iTerm, VS Code, Terminal) has permission to access the macOS Keychain in System Settings.

### Expired Tokens

If deployments or API calls suddenly fail with `401 Unauthorized`:
**Fix**: Your cloud token may have expired. Run `iobend auth logout --provider <name>` and log in again.

## Network & Proxy Issues

### Corporate Proxy Blocks

If IOBend cannot download templates or updates behind a corporate firewall:
**Fix**: Set standard HTTP proxy variables before running commands.

```bash
export HTTP_PROXY="http://proxy.internal:8080"
export HTTPS_PROXY="http://proxy.internal:8080"
iobend update
```

## OS-Specific Issues

### Windows Issues

- **WSL2 File System Performance**: Running `iobend run` on files mounted across the Windows/WSL boundary (`/mnt/c/`) is extremely slow.
  **Fix**: Always clone your repositories directly inside the Linux file system (`~/.`) within WSL2.
- **Execution Policy**: If PowerShell blocks the CLI script:
  **Fix**: Run `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` as Administrator.

### macOS Issues

- **Docker Socket Missing**: If `iobend container` fails complaining about the Docker daemon.
  **Fix**: Ensure Docker Desktop or OrbStack is running and the socket is linked to `/var/run/docker.sock`.

### Linux Issues

- **Docker Permissions**: If you get permission denied when running `iobend container`.
  **Fix**: Add your user to the `docker` group: `sudo usermod -aG docker $USER`, then log out and back in.

## Debugging and Logs

If you need deeper insights into what IOBend is doing, enable verbose mode:

```bash
iobend --verbose <command>
```

Log files are stored locally:

- **macOS**: `~/Library/Logs/IOBend/`
- **Linux**: `~/.cache/iobend/log/`
- **Windows**: `%LOCALAPPDATA%\IOBend\Log\`

If you find a bug, please include the relevant log file when opening an issue on GitHub.
