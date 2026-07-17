---
title: "GCP Integration"
description: "Deploy and manage Google Cloud Platform infrastructure with IOBend."
keywords: ["gcp", "google cloud", "cloud", "deploy", "iobend"]
---

# GCP Integration

Manage your Google Cloud Platform projects, authenticate services, and deploy to Cloud Run or GKE using IOBend.

## Authentication

Authenticate with your Google Cloud account:

```bash
iobend auth login --provider gcp
```

You can specify a default project via the global configuration:
```bash
iobend config set cloud.gcp.project my-gcp-project-12345 --global
```

## Deploying to Cloud Run

Cloud Run is Google's managed serverless container platform. IOBend makes deploying to Cloud Run a one-step process.

First, ensure your app is containerized. Then generate a GCP deployment configuration:

```bash
iobend generate infrastructure --provider gcp --type cloud-run
```

Deploying:
```bash
iobend run deploy
```
*(Assuming `deploy` in `iobend.json` wraps the `gcloud run deploy` command, utilizing IOBend's active authentication context).*

## Artifact Registry

To push images to Google Artifact Registry:

```bash
# Auto-configure Docker for GCP
iobend auth gcr

# Build and push
iobend container build . --name my-app
iobend container push my-app us-central1-docker.pkg.dev/my-project/repo/my-app:latest
```
