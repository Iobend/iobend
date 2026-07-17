---
title: "Remote Development"
description: "Developing on remote servers and cloud workspaces."
keywords: ["remote dev", "ssh", "cloud workspace", "devcontainers", "iobend"]
---

# Remote Development

Sometimes local hardware isn't enough, or security policies dictate that source code cannot reside on local laptops. IOBend fully supports remote development workflows.

## SSH Workspaces

If you develop on a remote EC2 or Droplet instance, you can run IOBend on that machine just as you would locally.

```bash
ssh dev-server
iobend run dev
```

You can port-forward your development server securely:
```bash
ssh -L 3000:localhost:3000 dev-server
```

## DevContainers Compatibility

IOBend can read `.devcontainer/devcontainer.json` files. If you inherit a repository using DevContainers, IOBend can spin up the environment natively without requiring VS Code.

```bash
iobend container start --spec devcontainer
```

## MCP Remote Tooling

When developing remotely, you can connect your local editor's AI assistant to the remote machine's IOBend MCP server.

Start the MCP server on the remote box:
```bash
iobend mcp serve --port 8080 --host 0.0.0.0
```
*(Ensure this port is secured via VPN or SSH tunneling).*
