---
title: Python code examples for the custom threat intelligence API
description: Use Python code to create custom threat intelligence using REST API.
keywords: python, code examples, threat intelligence, custom threat intelligence, rest api, api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Python code examples for the custom threat intelligence API

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

## Before you begin
You must [install](http://docs.python-requests.org/en/master/user/install/#install) the "[requests](http://docs.python-requests.org/en/master/)" python library.

These code examples demonstrate the following tasks:
- [Obtain an Azure AD access token](#token)
- [Create request session object](#session-object)
- [Create calls to the custom threat intelligence API](#calls)
- [Create a new alert definition](#alert-definition)
- [Create a new indicator of compromise](#ioc)

<span id="token" />
## Step 1: Obtain an Azure AD access token
The following example demonstrates how to obtain an Azure AD access token that you can use to call methods in the custom threat intelligence API. After you obtain a token, you have 60 minutes to use this token in calls to the custom threat intelligence API before the token expires. After the token expires, you can generate a new token.

Replace the *tenant\_id*, *client_id*, and *client_secret* values with the ones you got from **Preferences settings** page in the portal:

[!code[CustomTIAPI](./code/example.py#L1-L17)]


<span id="session-object" />
## Step 2: Create request session object
Add HTTP headers to the session object, including the Authorization header with the token that was obtained.

[!code[CustomTIAPI](./code/example.py#L19-L23)]

<span id="calls" />
## Step 3: Create calls to the custom threat intelligence API
After adding HTTP headers to the session object, you can now create calls to the API. The following example demonstrates how you can view all the alert definition entities:

[!code[CustomTIAPI](./code/example.py#L25-L26)]

The response is empty on initial use of the API.

<span id="alert-definition" />
## Step 4: Create a new alert definition
The following example demonstrates how you to create a new alert definition.

[!code[CustomTIAPI](./code/example.py#L28-L39)]

<span id="ioc" />
## Step 5: Create a new indicator of compromise
You can now use the alert ID obtained from creating a new alert definition to create a new indicator of compromise.

[!code[CustomTIAPI](./code/example.py#L41-L51)]

## Complete code
You can use the complete code to create calls to the API.

[!code[CustomTIAPI](./code/example.py#L1-L51)]
