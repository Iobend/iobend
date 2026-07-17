---
title: "Kubernetes Guide"
description: "Managing Kubernetes clusters and deployments with IOBend."
keywords: ["kubernetes", "k8s", "kubectl", "orchestration", "iobend"]
---

# Kubernetes Guide

IOBend simplifies Kubernetes development by managing local clusters (like kind or minikube) and wrapping complex `kubectl` commands into intuitive workflows.

## Generating Manifests

Scaffold standard Kubernetes manifests for your application:

```bash
iobend generate k8s --type deployment
```

This creates a `k8s/` directory with `deployment.yaml`, `service.yaml`, and `ingress.yaml`.

## Local Clusters

If you need a local cluster for testing, IOBend integrates seamlessly with tools like `kind` (Kubernetes in Docker).

Ensure `kind` is installed via `iobend doctor`. Then create a cluster:

```bash
iobend cluster create --engine kind --name local-dev
```

## Deploying to the Cluster

Apply your generated manifests to the active cluster:

```bash
iobend run k8s-apply
```
*(You can define `k8s-apply` in `iobend.json` to execute `kubectl apply -f k8s/`).*

## Managing Contexts

IOBend can help you safely switch between Kubernetes contexts (e.g., swapping from `local-dev` to `production`).

```bash
iobend config set k8s.context production
```

> [!CAUTION]
> Always verify your active context with `iobend doctor` before running destructive commands on Kubernetes.
