<div align="center">
  <img src="assets/IOBend.jpg" alt="IOBend Logo" width="150" />

# IOBend CLI

**Developer environment manager for diagnostics, setup, and DevOps automation.**

[![Version](https://img.shields.io/npm/v/iobend.svg)](https://npmjs.com/package/iobend)
[![Downloads](https://img.shields.io/npm/dt/iobend.svg)](https://npmjs.com/package/iobend)
[![License](https://img.shields.io/github/license/iobend/iobend.svg)](https://github.com/iobend/iobend/blob/main/LICENSE)
[![Build Status](https://img.shields.io/github/actions/workflow/status/iobend/iobend/ci.yml?branch=main)](https://github.com/iobend/iobend/actions)

[Documentation](https://iobend.vercel.app/docs) • [Installation](https://iobend.vercel.app/docs#installation) • [Getting Started](https://iobend.vercel.app/docs#introduction)
</div>

---

## What is IOBend?

IOBend is a next-generation CLI tool designed to simplify, automate, and standardize developer environments. Whether you're debugging local setup issues, configuring cloud infrastructure, or orchestrating complex DevOps workflows, IOBend provides a single, unified interface.

Built for **Developers**, **Platform Engineers**, and **Enterprise Teams**, IOBend brings the robust design principles of Docker and Terraform directly into your development workflow.

---

## Features

- 🚀 **Environment Diagnostics:** Automatically detect and resolve misconfigurations with `iobend doctor`.
- 🛠 **Instant Scaffolding:** Generate boilerplates, cloud integrations, and CI pipelines with `iobend generate`.
- 🐳 **Container Management:** Effortlessly build, run, and orchestrate local containers using `iobend container`.
- 🔐 **Secure Secrets:** Built-in secret management and environment isolation.
- ⚡ **Cross-Platform:** Native support for macOS, Linux, and Windows.
- 🧩 **Extensible:** Leverage the Model Context Protocol (MCP) to plug in custom tools and LLMs.

---

## Installation

### macOS (Homebrew)

```bash
brew tap iobend/tap
brew install iobend
```

### Windows (WinGet)

```powershell
winget install iobend
```

### Linux & macOS (npm)

```bash
npm install -g iobend
```

### Verify Installation

```bash
iobend --version
```

---

## Getting Started

### 1. Diagnose Your Environment

Ensure your machine is ready for development by running the built-in diagnostic tool.

```bash
iobend doctor
```

### 2. Scaffold a New Project

Create a complete Node.js project with Docker and GitHub Actions configurations.

```bash
iobend generate --template nodejs-docker
```

### 3. Connect Integrations

Authenticate with your cloud provider or CI/CD platform.

```bash
iobend auth login --provider aws
```

---

## Roadmap

- [x] Initial CLI release (v1.0.0)
- [x] macOS and Linux support
- [x] Windows native installer
- [x] Initial CLI release (v2.0.0)
- [ ] Kubernetes cluster generation
- [ ] Advanced GitOps integration
- [ ] Self-hosted Enterprise dashboard

_See the [full roadmap](docs/roadmap.md) for more details._

---

## Contributing

We welcome contributions from the community! If you're interested in improving IOBend, please check out our [Contributing Guide](docs/contributing.md) and [Development Setup](docs/contributing.md#development-setup).

---

## Community & Support

- **Documentation:** [Read the full docs](https://iobend.vercel.app/docs)

<!-- - **Discord:** [Join our community server](https://discord.gg/iobend) -->

- **Issues:** [Report bugs or request features](https://github.com/iobend/iobend/issues)
- **X / Twitter:** [@IOBendDev](https://twitter.com/IOBendDev)

---

## License

IOBend is licensed under the [MIT License](LICENSE).
