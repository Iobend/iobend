# Kubernetes Examples

## Overview

This document provides realistic command examples for managing and validating Kubernetes environments using `ashgrid container`.

## Usage Examples

### 1. Validating Kubeconfig
Check your current kubeconfig for stale contexts, invalid certificates, or unreachable clusters.

```bash
ashgrid container validate --kubernetes
```

### 2. Switching Contexts
Safely switch between clusters and namespaces with built-in validation before switching.

```bash
ashgrid container context switch dev-cluster --namespace default
```

### 3. Diagnosing a Pod
Run a comprehensive diagnostic check against a specific pod to find crash loops or missing secrets.

```bash
ashgrid container diagnose pod api-server-5c4d
```

### 4. Viewing Cluster Health
Get a high-level overview of the current cluster's node health and resource utilization.

```bash
ashgrid container status
```

## Expected output

Example output of `validate --kubernetes`:

```
☸️ Validating Kubernetes Configuration...

✅ Kubeconfig: Found (~/.kube/config)
✅ Active Context: minikube
✅ Cluster Reachable: Yes (v1.27.3)
❌ Stale Contexts: 'old-staging-cluster' is unreachable.

💡 Run `ashgrid container context prune` to remove unreachable contexts.
```
