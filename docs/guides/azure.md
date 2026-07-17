---
title: "Azure Integration"
description: "Deploy and manage Microsoft Azure infrastructure with IOBend."
keywords: ["azure", "microsoft", "cloud", "deploy", "iobend"]
---

# Azure Integration

IOBend provides seamless integration with Microsoft Azure, allowing you to authenticate, provision resources, and deploy containers to Azure Container Apps or AKS efficiently.

## Authentication

Connect IOBend to your Azure Active Directory (Entra ID) tenant:

```bash
iobend auth login --provider azure
```

This will launch a browser window. Once authenticated, IOBend securely stores the token for future CLI operations.

## Deploying to Azure Container Apps

If you have a containerized application, IOBend can generate the necessary Azure Bicep or ARM templates to deploy it.

```bash
iobend generate infrastructure --provider azure --type container-app
```

## Working with Azure Key Vault

IOBend can fetch secrets dynamically from Azure Key Vault at runtime, injecting them into your local environment or CI pipeline without storing them on disk.

Update your `iobend.json`:
```json
{
  "secrets": {
    "provider": "azure-keyvault",
    "vaultName": "my-prod-vault"
  }
}
```

Now, when you run `iobend run start`, it will automatically pull the secrets into memory.
