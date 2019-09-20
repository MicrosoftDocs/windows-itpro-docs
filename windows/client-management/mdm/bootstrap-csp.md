---
title: BOOTSTRAP CSP
description: BOOTSTRAP CSP
ms.assetid: b8acbddc-347f-4543-a45b-ad2ffae3ffd0
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/26/2017
---

# BOOTSTRAP CSP


The BOOTSTRAP configuration service provider sets the Trusted Provisioning Server (TPS) for the device.

> **Note**  BOOTSTRAP CSP is only supported in Windows 10 Mobile.
> 
> 
> 
> **Note**   This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_ADMIN capabilities to be accessed from a network configuration application.

 

The following image shows the BOOTSTRAP configuration service provider in tree format as used by Open Mobile Alliance (OMA) Client Provisioning. The OMA Device Management protocol is not supported with this configuration service provider.

![bootstrap csp (cp)](images/provisioning-csp-bootstrap-cp.png)

<a href="" id="context-allow"></a>**CONTEXT-ALLOW**  
Optional. Specifies a context for the TPS. Only one context is supported, so this parameter is ignored and "0" is assumed for its value.

<a href="" id="provurl"></a>**PROVURL**  
Required. Specifies the location of a Trusted Provisioning Server (TPS). The PROVURL value must be a complete URL string with a maximum length of 256 characters.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






