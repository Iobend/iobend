---
title: "Frequently Asked Questions (FAQ)"
description: "Answers to common questions about IOBend."
keywords: ["faq", "questions", "help", "iobend", "support"]
---

# Frequently Asked Questions

Here are 50 of the most frequently asked questions about IOBend, categorized for your convenience.

## General

**1. What is IOBend?**
IOBend is a developer environment manager and CLI tool designed to simplify local development, environment diagnostics, and DevOps automation.

**2. Who is IOBend for?**
It's built for developers, DevOps engineers, and platform teams who want a standardized, reproducible development workflow.

**3. Is IOBend free?**
Yes, the core CLI is open-source and free forever.

**4. Does IOBend replace Docker?**
No. IOBend acts as an orchestration layer _above_ Docker (or Podman), making container management easier and more integrated with your project configuration.

**5. Does IOBend replace Terraform?**
No. IOBend can scaffold Terraform templates and wrap `terraform apply` commands, but it relies on Terraform/OpenTofu under the hood.

**6. What operating systems are supported?**
macOS (Apple Silicon & Intel), Linux (x64, arm64), and Windows 10/11 (WSL2 recommended).

**7. Can I use IOBend without internet access?**
Yes, most local commands (like `doctor` and local container builds) work completely offline. Template generation requires an initial download.

**8. Is telemetry enabled by default?**
Yes, anonymous crash reporting is enabled to help us improve the tool. You can opt out via `iobend config set telemetry.enabled false --global`.

**9. How do I upgrade IOBend?**
Run `iobend update` or use your system package manager (e.g., `brew upgrade iobend`).

**10. Where is the source code?**
The source code is hosted on [GitHub](https://github.com/iobend/iobend).

## Installation & Setup

**11. Why do I get a permission error when installing via npm?**
This happens when your global `node_modules` is owned by `root`. Use a node version manager like `nvm` or fix your npm permissions.

**12. Is there a GUI available?**
Currently, IOBend is CLI-only. A web-based Enterprise Dashboard is planned.

**13. How do I uninstall IOBend?**
Use your package manager (e.g., `npm uninstall -g iobend` or `brew uninstall iobend`).

**14. Does IOBend work on Raspberry Pi?**
Yes! We provide `linux-arm64` binaries that work natively on Raspberry Pi 4 and 5.

**15. Can I install specific versions of IOBend?**
Yes, via npm: `npm install -g iobend@1.0.0`.

## Projects & Configuration

**16. What is `iobend.json`?**
It is the core configuration file that defines your project's runtime, scripts, and environment needs.

**17. Do I need to commit `iobend.json`?**
Yes, committing it ensures your whole team uses the exact same setup.

**18. How do I handle secrets?**
Use `iobend auth` to store them in your OS keychain, or use a local `.env` file (which should be in `.gitignore`).

**19. Can I have multiple configuration profiles?**
Yes, you can define profiles in your global config and switch them with the `--profile` flag.

**20. Does IOBend support monorepos?**
Yes, you can place a master `iobend.json` at the root and override settings in subdirectories.

**21. How do I override a setting temporarily?**
Use environment variables prefixed with `IOBEND_` (e.g., `IOBEND_PORT=8080`).

## Templates & Generation

**22. How do I list available templates?**
Run `iobend generate` without arguments to see the interactive picker.

**23. Can I create my own templates?**
Yes. Place them in `~/.iobend/templates/`.

**24. Can our company share templates?**
Yes, Platform teams can define a custom Git repository as a template registry via `iobend config set templates.registry <url>`.

**25. Do templates support custom variables?**
Yes, using Handlebars syntax and a `schema.json` file.

**26. Can I bypass the interactive prompts during generation?**
Yes, pass arguments directly: `iobend generate nodejs --name my-app`.

## Containers (Docker/Podman)

**27. Do I need Docker Desktop installed?**
You need a container engine. Docker Desktop, OrbStack, or Podman all work.

**28. How do I switch to Podman?**
Run `iobend config set runtime.engine podman --global`.

**29. Why isn't my container mapping ports?**
Ensure your `iobend.json` defines the `runtime.ports` array.

**30. How do I view container logs?**
`iobend container logs <name> --follow`.

**31. Can IOBend build multi-architecture images?**
Yes, passing `--platform linux/amd64,linux/arm64` to `iobend container build` works if `buildx` is enabled.

**32. Does IOBend support `docker-compose`?**
Yes, it automatically detects and wraps `docker-compose.yml` files.

## Cloud & Deployment

**33. Which cloud providers are supported?**
AWS, Azure, and GCP are supported via official plugins and templates.

**34. How do I authenticate with AWS?**
Run `iobend auth login --provider aws`.

**35. Can I deploy a frontend app?**
Yes, IOBend has templates for Vercel, Netlify, and Cloudflare Pages.

**36. Does IOBend write Terraform for me?**
Our `infrastructure` templates generate Terraform or Bicep files based on best practices.

**37. How do I push images to a registry?**
Use `iobend container push <image> <registry_url>`.

## CI/CD Workflow

**38. Can I run IOBend in GitHub Actions?**
Yes, we provide a `setup-iobend` action, or you can `npm install -g iobend`.

**39. Will `iobend doctor` break my CI if a check fails?**
Yes, by default it exits with a non-zero code on failure. Use `--warn-only` if you want it to pass regardless.

**40. How do I inject CI secrets?**
Map your CI provider's secrets to environment variables; IOBend will pick them up automatically.

## MCP & AI Integration

**41. What is the MCP command?**
It manages Model Context Protocol servers, allowing AI assistants to interact with your local environment securely.

**42. How do I connect Claude to my IOBend MCP?**
Run `iobend mcp start`, which outputs a configuration string to paste into your Claude desktop app.

**43. Is the MCP server secure?**
Yes, it runs locally. By default, it only allows read-only tool access unless explicitly granted write permissions.

## Troubleshooting

**44. What should I do if a command hangs?**
Run it again with the `--verbose` flag to see where it is getting stuck.

**45. Where are the log files?**
They are stored in `~/.cache/iobend/log/` (Linux), `~/Library/Logs/IOBend/` (macOS), or `%LOCALAPPDATA%\IOBend\Log\` (Windows).

**46. How do I reset my configuration?**
Delete `~/.iobend/config.json`.

**47. I found a bug. How do I report it?**
Please open an issue on our [GitHub repository](https://github.com/iobend/iobend/issues).

## Enterprise

**48. Is there an Enterprise license?**
Yes, for advanced features like SSO, RBAC, and centralized policy enforcement. See the [Enterprise Guide](enterprise.md).

**49. Can we self-host the template registry?**
Yes, it is just a Git repository, which can live on your internal GitLab or GitHub Enterprise.

**50. Do you offer SLA support?**
Yes, SLA support is available for Enterprise customers. Contact sales@iobend.dev for more information.
