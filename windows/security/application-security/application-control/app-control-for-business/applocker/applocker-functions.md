---
title: AppLocker functions
description: This article for the IT professional lists the functions and security levels for AppLocker.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# AppLocker functions

This article for the IT professional lists the functions and security levels for AppLocker.

## Functions

- [SaferGetPolicyInformation Function](/windows/win32/api/winsafer/nf-winsafer-safergetpolicyinformation)
- [SaferCreateLevel Function](/windows/win32/api/winsafer/nf-winsafer-safercreatelevel)
- [SaferCloseLevel Function](/windows/win32/api/winsafer/nf-winsafer-safercloselevel)
- [SaferIdentifyLevel Function](/windows/win32/api/winsafer/nf-winsafer-saferidentifylevel)
- [SaferComputeTokenFromLevel Function](/windows/win32/api/winsafer/nf-winsafer-safercomputetokenfromlevel)
- [SaferGetLevelInformation Function](/windows/win32/api/winsafer/nf-winsafer-safergetlevelinformation)
- [SaferRecordEventLogEntry Function](/windows/win32/api/winsafer/nf-winsafer-saferrecordeventlogentry)
- [SaferiIsExecutableFileType Function](/windows/win32/api/winsafer/nf-winsafer-saferiisexecutablefiletype)

## Security level ID

AppLocker uses the security level IDs to specify the access requirements to files listed in policies. The following table shows those security levels supported in AppLocker.

| Security level ID | AppLocker |
| --- | --- |
| SAFER_LEVELID_FULLYTRUSTED | Supported |
| SAFER_LEVELID_NORMALUSER | Not supported |
| SAFER_LEVELID_CONSTRAINED | Not supported |
| SAFER_LEVELID_UNTRUSTED | Not supported |
| SAFER_LEVELID_DISALLOWED | Supported |

> [!NOTE]
> URL zone ID isn't supported in AppLocker.

## Related articles

- [AppLocker technical reference](applocker-technical-reference.md)
