---
title: AppLocker functions (Windows 10)
description: This topic for the IT professional lists the functions and security levels for the Software Restriction Policies (SRP) and AppLocker features.
ms.assetid: bf704198-9e74-4731-8c5a-ee0512df34d2
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# AppLocker functions

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for the IT professional lists the functions and security levels for the Software Restriction Policies (SRP) and AppLocker features.

## Functions

The following list includes the SRP functions beginning with Windows Server 2003 and AppLocker functions beginning with Windows Server 2008 R2 and links to current documentation on MSDN:

-   [SaferGetPolicyInformation Function](https://go.microsoft.com/fwlink/p/?LinkId=159781)
-   [SaferCreateLevel Function](https://go.microsoft.com/fwlink/p/?LinkId=159782)
-   [SaferCloseLevel Function](https://go.microsoft.com/fwlink/p/?LinkId=159783)
-   [SaferIdentifyLevel Function](https://go.microsoft.com/fwlink/p/?LinkId=159784)
-   [SaferComputeTokenFromLevel Function](https://go.microsoft.com/fwlink/p/?LinkId=159785)
-   [SaferGetLevelInformation Function](https://go.microsoft.com/fwlink/p/?LinkId=159787)
-   [SaferRecordEventLogEntry Function](https://go.microsoft.com/fwlink/p/?LinkId=159789)
-   [SaferiIsExecutableFileType Function](https://go.microsoft.com/fwlink/p/?LinkId=159790)

## Security level ID

AppLocker and SRP use the security level IDs to stipulate the access requirements to files listed in policies. The following table shows those security levels supported in SRP and AppLocker.

| Security level ID | SRP | AppLocker |
| - | - | - |
| SAFER_LEVELID_FULLYTRUSTED | Supported | Supported | 
| SAFER_LEVELID_NORMALUSER | Supported | Not supported |
| SAFER_LEVELID_CONSTRAINED | Supported | Not supported |
| SAFER_LEVELID_UNTRUSTED | Supported | Not supported |
| SAFER_LEVELID_DISALLOWED | Supported | Supported | 
 
In addition, URL zone ID is not supported in AppLocker.

## Related topics

- [AppLocker technical reference](applocker-technical-reference.md)
 
 
