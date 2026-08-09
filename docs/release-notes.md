---
title: "Release Notes"
description: "Changelog, version history, and migration guides."
keywords: ["releases", "changelog", "updates", "migration", "iobend"]
---

# Release Notes

Stay up to date with the latest features, fixes, and breaking changes in the IOBend CLI.

## Version History

### v1.0.0 (Latest)

_Released: October 2026_

**🎉 Initial Stable Release**
The first major stable release of IOBend!

**Features:**

- Introduced `iobend doctor` for automated environment diagnostics.
- Added cross-platform container management via `iobend container`.
- Shipped 10 official generation templates (`iobend generate`).
- Full support for macOS, Linux, and Windows natively.
- Added Model Context Protocol (`iobend mcp`) support for AI workflows.

**Fixes:**

- Resolved file permission issues on Windows WSL2.
- Optimized Docker daemon connection timeouts.

---

### v0.9.5 (Beta)

_Released: September 2026_

**Features:**

- Added `iobend auth` to securely store cloud credentials.
- Introduced `iobend.json` configuration cascading.
- Added interactive prompts for `iobend generate`.

**Breaking Changes:**

- The configuration file `.iobendrc` has been deprecated in favor of `iobend.json`.

## Migration Guides

### Migrating from v0.9.x to v1.0.x

If you used the beta versions of IOBend, you need to migrate your configuration files.

1. **Rename Config File**: Change `.iobendrc` to `iobend.json` at the root of your project.
2. **Update Runtime Key**: The `engine` key has moved under `runtime`:
   _Old:_
   ```json
   { "engine": "docker" }
   ```
   _New:_
   ```json
   {
     "runtime": { "engine": "docker" }
   }
   ```
3. Run `iobend doctor --fix` to automatically upgrade deprecated template syntax.
