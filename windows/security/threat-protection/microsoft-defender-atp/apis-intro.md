---
title: Access the Microsoft Defender Advanced Threat Protection APIs  
ms.reviewer: 
description: Learn how you can use APIs to automate workflows and innovate based on Microsoft Defender ATP capabilities
keywords: apis, api, wdatp, open api, microsoft defender atp api, public api, supported apis, alerts, device, user, domain, ip, file, advanced hunting, query
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

# Access the Microsoft Defender for Endpoint APIs 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Defender for Endpoint exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Defender for Endpoint capabilities. The API access requires OAuth2.0 authentication. For more information, see [OAuth 2.0 Authorization Code Flow](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-protocols-oauth-code).

Watch this video for a quick overview of Defender for Endpoint's APIs. 
>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4d73M]

In general, you’ll need to take the following steps to use the APIs:
- Create an AAD application
- Get an access token using this application
- Use the token to access Defender for Endpoint API


You can access Defender for Endpoint API with **Application Context** or **User Context**.

- **Application Context: (Recommended)** <br>
    Used by apps that run without a signed-in user present. for example, apps that run as background services or daemons.

	Steps that need to be taken to access Defender for Endpoint API with application context:

  1. Create an AAD Web-Application.
  2. Assign the desired permission to the application, for example, 'Read Alerts', 'Isolate Machines'. 
  3. Create a key for this Application.
  4. Get token using the application with its key.
  5. Use the token to access Microsoft Defender ATP API

     For more information, see [Get access with application context](exposed-apis-create-app-webapp.md).


- **User Context:** <br>
    Used to perform actions in the API on behalf of a user.

	Steps to take to access Defender for Endpoint API with application context:

  1. Create AAD Native-Application.
  2. Assign the desired permission to the application, e.g 'Read Alerts', 'Isolate Machines' etc. 
  3. Get token using the application with user credentials.
  4. Use the token to access Microsoft Defender ATP API

     For more information, see [Get access with user context](exposed-apis-create-app-nativeapp.md).


## Related topics
- [Microsoft Defender for Endpoint APIs](exposed-apis-list.md)
- [Access Microsoft Defender for Endpoint with application context](exposed-apis-create-app-webapp.md)
- [Access Microsoft Defender for Endpoint with user context](exposed-apis-create-app-nativeapp.md)
