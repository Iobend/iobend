# MCP (Model Context Protocol)

## Overview

The `iobend mcp` command manages integrations between your local developer environment and AI assistants via the Model Context Protocol (MCP). It allows LLMs to securely query your environment state, read diagnostics, and execute approved fixes.

## Usage

```bash
iobend mcp <subcommand> [options]
```

**Subcommands:**
- `start`: Start the local MCP server for AI tools to connect to.
- `config`: Manage MCP server permissions and capabilities.
- `logs`: View the interaction logs between the AI and your environment.

## Examples

Start the MCP server in the background:
```bash
iobend mcp start --daemon
```

Configure allowed actions (e.g., allow read-only access):
```bash
iobend mcp config --mode readonly
```

## Expected output

When starting the server:

```
🤖 Starting IOBend MCP Server...

✅ Server listening on stdio
🔒 Access mode: Standard (Requires explicit approval for destructive actions)
📡 Ready to accept connections from compatible AI clients (e.g., Claude Desktop, VS Code).
```

## Common problems

- **Connection refused**: Ensure the AI client is configured to point to the correct IOBend executable path.
- **Action denied**: If the AI attempts to run a command that is not permitted by your current `--mode`, IOBend will block it. Update your configuration to grant necessary permissions.

## Related commands

- [`iobend doctor`](doctor.md)
