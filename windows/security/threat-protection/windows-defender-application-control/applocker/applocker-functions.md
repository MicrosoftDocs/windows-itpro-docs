---
title: AppLocker functions (Windows)
description: This article for the IT professional lists the functions and security levels for the Software Restriction Policies (SRP) and AppLocker features.
ms.assetid: bf704198-9e74-4731-8c5a-ee0512df34d2
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
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
ms.technology: mde
---

# AppLocker functions

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Defender App Guard feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article for the IT professional lists the functions and security levels for the Software Restriction Policies (SRP) and AppLocker features.

## Functions

Here are the SRP functions beginning with Windows Server 2003 and AppLocker functions beginning with Windows Server 2008 R2:

-   [SaferGetPolicyInformation Function](/windows/win32/api/winsafer/nf-winsafer-safergetpolicyinformation)
-   [SaferCreateLevel Function](/windows/win32/api/winsafer/nf-winsafer-safercreatelevel)
-   [SaferCloseLevel Function](/windows/win32/api/winsafer/nf-winsafer-safercloselevel)
-   [SaferIdentifyLevel Function](/windows/win32/api/winsafer/nf-winsafer-saferidentifylevel)
-   [SaferComputeTokenFromLevel Function](/windows/win32/api/winsafer/nf-winsafer-safercomputetokenfromlevel)
-   [SaferGetLevelInformation Function](/windows/win32/api/winsafer/nf-winsafer-safergetlevelinformation)
-   [SaferRecordEventLogEntry Function](/windows/win32/api/winsafer/nf-winsafer-saferrecordeventlogentry)
-   [SaferiIsExecutableFileType Function](/windows/win32/api/winsafer/nf-winsafer-saferiisexecutablefiletype)

## Security level ID

AppLocker and SRP use the security level IDs to specify the access requirements to files listed in policies. The following table shows those security levels supported in SRP and AppLocker.

| Security level ID | SRP | AppLocker |
| - | - | - |
| SAFER_LEVELID_FULLYTRUSTED | Supported | Supported | 
| SAFER_LEVELID_NORMALUSER | Supported | Not supported |
| SAFER_LEVELID_CONSTRAINED | Supported | Not supported |
| SAFER_LEVELID_UNTRUSTED | Supported | Not supported |
| SAFER_LEVELID_DISALLOWED | Supported | Supported | 
 
>[!Note]
>URL zone ID isn't supported in AppLocker.

## Related articles

- [AppLocker technical reference](applocker-technical-reference.md)
 
