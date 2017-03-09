---
title: Use the generic API to consume Windows Defender ATP alerts
description: Use the generic API to consume alerts from the Windows Defender ATP portal.
keywords: generic api, alerts, client credentials flow, oauth 2
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Use the generic API to consume Windows Defender ATP alerts

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP uses the OAuth 2.0 protocol with the Azure Active Directory (AAD) as the authorization server to obtain limited access, so that alerts can be consumed by supported security information and event management (SIEM) tools (such as Splunk and HP ArcSight) and generic APIs.

In general, the OAuth 2.0 protocol supports four types of authentication flows:
- Authorization code flow
- Implicit flow
- Client credentials flow
- Resource owner flow

In Windows Defender ATP, the _Authorization grant flow_ is used when consuming alerts using Splunk or HP ArcSight.

The generic API implementation uses the _Client credential flow_. In this flow, a client can authenticate against the Windows Defender ATP endpoint using only its client credentials.

The _Client credentials flow_ is suitable for scenarios when a client creates requests to an API that doesn't require user credentials.

## Use the generic REST api to consume alerts
To access and manipulate a Windows Defender ATP resource, you can call and specify the resource URLs using one of the following operations:

-	GET
-	POST
-	PATCH
-	PUT
-	DELETE

All generic API requests use the following basic URL pattern:

```

```

For this URL:
-
































## Use the Client credentials flow
The client sends a POST request with the following body parameters to the AAD authorization server:

- grant_type: use the client_credentials value
- client_id: use your application client ID
- client_secret: use your application secret or key
- resource:
  - If an application was created for your through the portal: `https://graph.windows.net`
  - Otherwise: `https://WDATPAlertExport.Seville.onmicrosoft.com`

Use the following URL to send the POST request:
`https://login.microsoftonline.com/{tenant_id}/oauth2/token`

Replace *{tenant\_id}* with your tenant ID.

As a response to the request, the authorization server will return a JSON formatted result with an *access_token* property, for example:

```json
{
  "token type": "Bearer",
  "expires in": "3599"
  "ext_expires_in": "0",
  "expires_on": "1488720683",
  "not_before": "1488720683",
  "resource": "https://WDATPAlertExport.Seville.onmicrosoft.com",
  "access_token":"eyJ0eXaioJJOIneiowiouqSuzNiZ345FYOVkaJL0625TueyaJasjhIjEnbMlWqP"
}
```
With this token, you can authenticate against your endpoint.

## Fetch alerts
Now that you have the *access_token*, you can use it to authenticate against the Windows Defender ATP endpoint.

For example, to fetch alerts from the last two hours, you'll need to add the following authorization header to your GET request:
