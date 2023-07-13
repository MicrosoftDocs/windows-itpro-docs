---
title: AppLocker functions
description: This article for the IT professional lists the functions and security levels for the Software Restriction Policies (SRP) and AppLocker features.
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# AppLocker functions

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article for the IT professional lists the functions and security levels for the Software Restriction Policies (SRP) and AppLocker features.

## Functions

Here are the SRP functions beginning with Windows Server 2003 and AppLocker functions beginning with Windows Server 2008 R2:

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
