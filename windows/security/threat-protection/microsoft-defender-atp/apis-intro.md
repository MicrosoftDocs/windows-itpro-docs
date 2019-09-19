---
title: Microsoft Defender Advanced Threat Protection API overview  
ms.reviewer: 
description: Learn how you can use APIs to automate workflows and innovate based on Microsoft Defender ATP capabilities
keywords: apis, api, wdatp, open api, windows defender atp api, public api, supported apis, alerts, machine, user, domain, ip, file, advanced hunting, query
search.product: eADQiWindows 10XVcnh
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

# Microsoft Defender ATP API overview

**Applies to:** 
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Microsoft Defender ATP exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Microsoft Defender ATP capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

In general, you’ll need to take the following steps to use the APIs:
- Create an AAD application
- Get an access token using this application
- Use the token to access Microsoft Defender ATP API


You can access Microsoft Defender ATP API with **Application Context** or **User Context**.

- **Application Context: (Recommended)** <br>
    Used by apps that run without a signed-in user present. for example, apps that run as background services or daemons.

	Steps that need to be taken to access Microsoft Defender ATP API with application context:

  1. Create an AAD Web-Application.
  2. Assign the desired permission to the application, for example, 'Read Alerts', 'Isolate Machines'. 
  3. Create a key for this Application.
  4. Get token using the application with its key.
  5. Use the token to access Microsoft Defender ATP API

     For more information, see [Get access with application context](exposed-apis-create-app-webapp.md).


- **User Context:** <br>
    Used to perform actions in the API on behalf of a user.

	Steps that needs to be taken to access Microsoft Defender ATP API with application context:
  1. Create AAD Native-Application.
  2. Assign the desired permission to the application, e.g 'Read Alerts', 'Isolate Machines' etc. 
  3. Get token using the application with user credentials.
  4. Use the token to access Microsoft Defender ATP API

     For more information, see [Get access with user context](exposed-apis-create-app-nativeapp.md).


## Related topics
- [Microsoft Defender ATP APIs](exposed-apis-list.md)
- [Access Microsoft Defender ATP with application context](exposed-apis-create-app-webapp.md)
- [Access Microsoft Defender ATP with user context](exposed-apis-create-app-nativeapp.md)
