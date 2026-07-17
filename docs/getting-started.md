---
title: "Getting Started with IOBend"
description: "Install, upgrade, and configure the IOBend CLI on your machine."
keywords: ["install", "setup", "getting started", "iobend cli", "homebrew", "npm", "winget"]
---

# Getting Started

This guide will walk you through installing IOBend on your machine, verifying the setup, and running your very first project.

## Requirements

Before installing IOBend, ensure your system meets the following minimum requirements:
- **macOS**: 11 (Big Sur) or newer
- **Linux**: Ubuntu 20.04+, Debian 11+, or compatible
- **Windows**: Windows 10/11 (WSL2 recommended for advanced Docker workflows)
- **Node.js**: v18.0.0 or higher (if using the npm installation method)

## Installation

IOBend is distributed through multiple package managers for your convenience.

### npm (Cross-Platform)
The easiest way to install IOBend across all operating systems with Node.js installed.
```bash
npm install -g iobend
```

### Homebrew (macOS / Linux)
We maintain an official Homebrew tap for easy installation and updates.
```bash
brew tap iobend/tap
brew install iobend
```

### WinGet (Windows)
For native Windows users, IOBend is available via the Windows Package Manager.
```powershell
winget install iobend
```

### Manual Installation
If you prefer to install binaries manually, download the latest release for your architecture from the [GitHub Releases](https://github.com/iobend/iobend/releases) page. Extract the archive and add the executable to your system's `PATH`.

## Verify Installation

To ensure IOBend was installed correctly, check the installed version:

```bash
iobend version
```
*Expected Output:*
```text
iobend version 1.0.0 (darwin-arm64)
```

## First Run

The first command you should run is `iobend doctor`. This built-in diagnostic tool checks your machine for missing dependencies (like Git, Node.js, Docker) and configuration issues.

```bash
iobend doctor
```

> [!NOTE]
> If `doctor` reports missing dependencies, it will often provide automated commands or links to install them.

## Your First Project

Let's create your first project using an IOBend template. This will generate a standard directory structure and configuration files.

1. Create a new directory and navigate into it:
   ```bash
   mkdir my-iobend-app && cd my-iobend-app
   ```

2. Generate a base configuration:
   ```bash
   iobend generate --template default
   ```

3. View your new setup! You now have a ready-to-go environment managed by IOBend.

## Upgrade

To upgrade IOBend to the latest version, use the package manager you used for installation:

**npm:**
```bash
npm update -g iobend
```

**Homebrew:**
```bash
brew upgrade iobend
```

**WinGet:**
```powershell
winget upgrade iobend
```

Alternatively, you can run the built-in update command (if supported on your installation path):
```bash
iobend update
```

## Uninstall

If you need to remove IOBend:

**npm:**
```bash
npm uninstall -g iobend
```

**Homebrew:**
```bash
brew uninstall iobend
brew untap iobend/tap
```

**WinGet:**
```powershell
winget uninstall iobend
```
