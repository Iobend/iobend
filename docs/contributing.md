---
title: "Contributing"
description: "How to contribute to the IOBend CLI."
keywords: ["contributing", "open source", "development", "architecture", "iobend"]
---

# Contributing to IOBend

We are thrilled that you'd like to contribute to IOBend! Whether it's fixing a bug, adding a new template, or improving documentation, your help is appreciated.

## Development Setup

To run IOBend locally from source, you need Node.js (v18+) and Git installed.

1. **Clone the repository:**
   ```bash
   git clone https://github.com/iobend/iobend.git
   cd iobend
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Link the CLI locally:**
   ```bash
   npm link
   ```
   *Now, typing `iobend` in your terminal will execute your local source code.*

4. **Run the test suite:**
   ```bash
   npm run test
   ```

## Architecture

The IOBend CLI is built using **TypeScript** and **Commander.js**.

- `src/index.ts`: The main entry point.
- `src/commands/`: Contains the logic for each subcommand (`doctor`, `generate`, etc.).
- `src/utils/`: Helper functions (logging, file system, network).
- `src/templates/`: The official, built-in scaffolding templates.

## Coding Standards

- We use **ESLint** and **Prettier**. Run `npm run lint` before committing.
- Commit messages must follow the [Conventional Commits](https://www.conventionalcommits.org/) specification (e.g., `feat: add support for podman`, `fix: resolve docker timeout`).
- All new features must include unit tests in the `tests/` directory.

## Testing

We use **Jest** for unit and integration testing.

```bash
# Run all tests
npm run test

# Run tests with coverage
npm run test:cov
```

## Build Process

To compile the TypeScript code down to JavaScript for production:

```bash
npm run build
```
This outputs the compiled files to the `dist/` directory.

## Release Process (Maintainers Only)

Our release process is fully automated via GitHub Actions using Semantic Release.

1. Merge a PR into the `main` branch.
2. The `release.yml` workflow will automatically determine the next version number based on the commit history.
3. It generates the changelog, builds the binaries, and publishes to the npm registry and Homebrew tap.
