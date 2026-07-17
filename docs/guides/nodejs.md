---
title: "Node.js Guide"
description: "Using IOBend to manage Node.js projects."
keywords: ["nodejs", "javascript", "typescript", "npm", "yarn", "pnpm", "iobend"]
---

# Node.js Guide

IOBend has first-class support for the Node.js ecosystem, helping you manage versions, install dependencies, and run scripts seamlessly across different environments.

## Bootstrapping a Project

To generate a new Node.js project complete with TypeScript, ESLint, Prettier, and Docker configuration, run:

```bash
iobend generate nodejs
```

This will create an `iobend.json` file tailored for Node.js workflows.

## Environment Diagnostics

When running `iobend doctor` in a Node.js project, IOBend verifies:
1. That the installed Node.js version satisfies the `engines` field in `package.json`.
2. That your preferred package manager (npm, yarn, pnpm) is installed.
3. That `node_modules` is present and in sync with the lockfile.

## Running Scripts

You can execute your `package.json` scripts through IOBend to guarantee they run in a consistent environment.

```bash
iobend run test
```

*This is equivalent to `npm run test`, but IOBend automatically injects environment variables from `.env` and your IOBend profile.*

## Dockerizing Node.js

IOBend makes it trivial to containerize your Node app. Ensure `runtime.engine` is set to `docker` in your `iobend.json`.

To build and start your Node.js application in a container:
```bash
iobend container build . --name my-node-app
iobend container start my-node-app -p 3000:3000
```
