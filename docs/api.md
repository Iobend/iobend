---
title: "API Reference"
description: "Interact with IOBend programmatically."
keywords: ["api", "rest api", "sdk", "authentication", "iobend"]
---

# API Reference

The IOBend platform exposes a REST API that allows you to interact with the Enterprise control plane, manage templates, and query telemetry data programmatically.

## Authentication

All API requests must be authenticated using a Bearer token.

If you are using the CLI, you can generate a Personal Access Token (PAT):

```bash
iobend auth token create --name "ci-script" --scopes "api:read,telemetry:write"
```

Pass this token in the `Authorization` header of your HTTP requests:

```http
GET /v1/templates HTTP/1.1
Host: api.iobend.dev
Authorization: Bearer iob_1234567890abcdef
```

## REST API (v1)

### `GET /v1/templates`

List all templates available to your organization.

**Response (200 OK):**

```json
{
  "data": [
    {
      "id": "tpl_01H1",
      "name": "nodejs-microservice",
      "version": "1.2.0"
    }
  ]
}
```

### `POST /v1/telemetry/events`

Manually ingest a telemetry event (useful for custom CI runners).

**Request Body:**

```json
{
  "event": "build_failed",
  "project_id": "prj_99ZZ",
  "metadata": {
    "error_code": "OOMKilled"
  }
}
```

## Future SDKs

While you can interact directly with the REST API using `curl` or `fetch`, we are actively developing official SDKs to make integration easier.

- **Node.js SDK**: Planned for Q3 2027
- **Go SDK**: Planned for Q4 2027
- **Python SDK**: Planned for Q1 2028

Until the SDKs are released, please rely on standard HTTP clients to integrate with the IOBend API.
