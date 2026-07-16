# UI

## Overview

The `iobend ui` command launches a local web dashboard. This visual interface provides a comprehensive overview of your environment's health, active configurations, and available generators. It is designed for developers who prefer graphical interfaces over terminal output for complex diagnostics.

## Usage

```bash
iobend ui [options]
```

**Options:**
- `--port <number>`: Specify the port to run the UI on (default: 8080).
- `--host <address>`: Specify the host address (default: localhost).
- `--no-open`: Start the server without automatically opening the browser.

## Examples

Start the UI on the default port:
```bash
iobend ui
```

Start the UI on a custom port without opening the browser:
```bash
iobend ui --port 3000 --no-open
```

## Expected output

```
🚀 Starting IOBend UI...
✅ Server listening on http://localhost:8080
🌐 Opening browser...

Press Ctrl+C to stop the server.
```

## Common problems

- **Port in use**: If the default port (8080) is already in use by another application, IOBend will automatically attempt to find the next available port. You can also manually specify one using the `--port` flag.
- **Browser fails to open**: In headless environments (like SSH sessions), the browser cannot be opened. Use the `--no-open` flag and access the URL via port forwarding.

## Related commands

- [`iobend doctor`](doctor.md)
