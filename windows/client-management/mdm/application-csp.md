---
title: APPLICATION configuration service provider
description: APPLICATION configuration service provider
ms.assetid: 0705b5e9-a1e7-4d70-a73d-7f758ffd8099
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/26/2017
---

# APPLICATION configuration service provider


The APPLICATION configuration service provider is used to configure an application transport using Open Mobile Alliance (OMA) Client Provisioning.

OMA considers each transport to be an application and requires a corresponding APPLICATION configuration service provider. The following list shows the supported transports.

-   w7, for bootstrapping a device with an OMA Device Management (OMA DM) account. For more information, see [w7 APPLICATION configuration service provider](w7-application-csp.md)

-   w4, for configuring Multimedia Messaging Service (MMS). For more information, see [w4 APPLICATION configuration service provider](w4-application-csp.md)

The APPID parameter differentiates these application transports. Each APPID must be registered with OMA, and any APPLICATION configuration service provider must be in the root of the provisioning document.

For the device to decode correctly, provisioning XML that contains the APPLICATION characteristic must support OMA Client Provisioning version 1.1.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






