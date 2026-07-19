# Installation

## Overview

IOBend is a cross-platform CLI tool. Depending on your operating system and preferred package manager, you can install IOBend using various methods.

## Usage

### Node.js (npm)

If you already have a Node.js environment (v18+), installing via npm is the fastest method:

```bash
npm install -g iobend
```

### Windows (WinGet)

For Windows users, we provide official packages via the Windows Package Manager (WinGet).

```powershell
winget install IOBend
```

### macOS (Homebrew)

_Note: Homebrew support is currently in preview._

```bash
brew tap iobend/tap
brew install iobend
```

### Linux (Binary / Script)

_Note: Native APT/RPM packages are coming soon._

For now, you can download the latest binary using our install script:

```bash
curl -sL https://iobend.io/install.sh | bash
```

## Shell Auto-Completion Setup

IOBend includes a 1-Click auto-completion installer for PowerShell, Zsh, Bash, and Fish:

```bash
# Auto-detect shell and install completion to shell profile ($PROFILE, ~/.zshrc, ~/.bashrc, or config.fish)
iobend completion --install

# Install specifically for Windows PowerShell:
iobend completion -s powershell --install
```

## Examples

To verify your installation, check the version:

```bash
iobend --version
```

## Expected output

```
iobend version 1.0.0 (darwin/arm64)
```

## Common problems

- **Permission Denied (npm)**: If you get a permission error while running `npm install -g`, prefix the command with `sudo` (macOS/Linux) or use a Node Version Manager like `nvm`.
- **WinGet Not Found**: Ensure you are running Windows 10 (1809 or later) or Windows 11 where App Installer is available.

## Related commands

- [`iobend getting-started`](getting-started.md)
- [`iobend doctor`](doctor.md)
