---
title: API Explorer in Microsoft Defender ATP  
ms.reviewer: 
description: Use the API Explorer to construct and do API queries, test, and send requests for any available API
keywords: api, explorer, send, request, get, post, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# API Explorer

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The Microsoft Defender ATP API Explorer is a tool that helps you explore various Microsoft Defender ATP APIs interactively. 

The API Explorer makes it easy to construct and do API queries, test, and send requests for any available Microsoft Defender ATP API endpoint. Use the API Explorer to take actions or find data that might not yet be available through the user interface.

The tool is useful during app development. It allows you to perform API queries that respect your user access settings, reducing the need to generate access tokens.

You can also use the tool to explore the gallery of sample queries, copy result code samples, and generate debug information.

With the API Explorer, you can:

- Run requests for any method and see responses in real-time
- Quickly browse through the API samples and learn what parameters they support
- Make API calls with ease; no need to authenticate beyond the management portal sign in

## Access API Explorer

From the left navigation menu, select **Partners & APIs** > **API Explorer**.

## Supported APIs

API Explorer supports all the APIs offered by Microsoft Defender ATP.
  
The list of supported APIs is available in the [APIs documentation](apis-intro.md). 

## Get started with the API Explorer

1. In the left pane, there is a list of sample requests that you can use. 
2. Follow the links and click **Run query**. 

Some of the samples may require specifying a parameter in the URL, for example, {machine- ID}.

## FAQ

**Do I need to have an API token to use the API Explorer?** <br>
Credentials to access an API aren't needed. The API Explorer uses the Microsoft Defender ATP management portal token whenever it makes a request.

The logged-in user authentication credential is used to verify that the API Explorer is authorized to access data on your behalf.

Specific API requests are limited based on your RBAC privileges. For example, a request to "Submit indicator" is limited to the security admin role. 
