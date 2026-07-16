# Installation

## Overview

AshGrid is a cross-platform CLI tool. Depending on your operating system and preferred package manager, you can install AshGrid using various methods.

## Usage

### Node.js (npm)

If you already have a Node.js environment (v18+), installing via npm is the fastest method:

```bash
npm install -g ashgrid
```

### Windows (WinGet)

For Windows users, we provide official packages via the Windows Package Manager (WinGet).

```powershell
winget install AshGrid
```

### macOS (Homebrew)

*Note: Homebrew support is currently in preview.*

```bash
brew tap ashgrid/tap
brew install ashgrid
```

### Linux (Binary / Script)

*Note: Native APT/RPM packages are coming soon.*

For now, you can download the latest binary using our install script:

```bash
curl -sL https://ashgrid.io/install.sh | bash
```

## Examples

To verify your installation, check the version:

```bash
ashgrid --version
```

## Expected output

```
ashgrid version 1.0.0 (darwin/arm64)
```

## Common problems

- **Permission Denied (npm)**: If you get a permission error while running `npm install -g`, prefix the command with `sudo` (macOS/Linux) or use a Node Version Manager like `nvm`.
- **WinGet Not Found**: Ensure you are running Windows 10 (1809 or later) or Windows 11 where App Installer is available.

## Related commands

- [`ashgrid getting-started`](getting-started.md)
- [`ashgrid doctor`](doctor.md)
