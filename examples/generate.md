# Generate Examples

## Overview

This document provides realistic command examples for scaffolding code with `iobend generate`.

## Usage Examples

### 1. Generating a React Component
Create a new React component using your project's custom template.

```bash
iobend generate component Button --style module --test true
```

### 2. Scaffolding an API Route
Create a new Next.js API route.

```bash
iobend generate api-route users/profile --method GET
```

### 3. Dry Run
Preview what files will be created before actually writing them.

```bash
iobend generate docker-compose --dry-run
```

### 4. Force Overwrite
Generate files and automatically overwrite existing ones (use with caution).

```bash
iobend generate readme --force
```

## Expected output

Example output of the dry run:

```
🧪 [DRY RUN] Scaffolding 'docker-compose'...

[CREATE] docker-compose.yml
[CREATE] .dockerignore
[MODIFY] package.json (add scripts)

💡 No files were modified. Remove --dry-run to execute.
```
