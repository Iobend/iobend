---
title: "iobend mcp"
description: "Manage Model Context Protocol (MCP) integrations."
keywords: ["cli", "mcp", "llm", "ai", "model context protocol", "iobend"]
---

# `iobend mcp`

## Purpose
The `iobend mcp` command manages connections to Model Context Protocol (MCP) servers. This allows IOBend (and connected LLMs) to dynamically read context from your local environment, execute tools, and automate workflows using artificial intelligence.

## Syntax
```bash
iobend mcp <action> [server_name] [options]
```

## Actions
- `list`: List all configured MCP servers.
- `add`: Register a new MCP server.
- `remove`: Remove an MCP server.
- `ping`: Test the connection to an MCP server.
- `call`: Manually invoke an MCP tool.

## Arguments
| Argument | Description | Required |
|----------|-------------|----------|
| `action` | The action to perform (`list`, `add`, `remove`, etc.). | Yes |
| `server_name` | The alias for the MCP server. | Yes (except for `list`) |

## Options
| Option | Description | Default |
|--------|-------------|---------|
| `--url` | The WebSocket or HTTP URL for the MCP server (for `add`). | None |
| `--cmd` | The command to launch a local stdio-based MCP server. | None |
| `--tool` | The specific tool to invoke (for `call`). | None |
| `--args` | JSON string of arguments to pass to the tool. | `{}` |

## Examples

**List configured MCP servers:**
```bash
iobend mcp list
```

**Add a remote MCP server:**
```bash
iobend mcp add memory-server --url wss://mcp.example.com/ws
```

**Add a local stdio MCP server:**
```bash
iobend mcp add local-git --cmd "npx @modelcontextprotocol/server-git"
```

**Test connection to a server:**
```bash
iobend mcp ping local-git
```

## Expected Output

*List Output:*
```text
🔌 Connected MCP Servers:

  Name          Type      Status    Tools Available
  ----          ----      ------    ---------------
  memory-server WebSocket 🟢 Online  12
  local-git     stdio     🟢 Online  5
```

## Common Errors
- **`ConnectionFailed`**: The remote URL is unreachable, or the local command failed to start.
- **`InvalidSchema`**: The MCP server did not return a valid initialization schema.
- **`ToolNotFound`**: Attempted to call a tool that does not exist on the specified server.

## Tips
- Use local stdio servers for file-system intensive tasks to avoid network latency.

## Best Practices
- When adding local MCP servers, always use explicit versions for tools (e.g., `npx @foo/bar@1.2.3`) to prevent unexpected breakage during updates.
