---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure recovery password rotation

With this policy you can configure a numeric recovery password rotation upon use for OS and fixed drives on Microsoft Entra joined and Microsoft Entra hybrid joined devices.

Possible values are:

- `0`: numeric recovery password rotation is turned off
- `1`: numeric recovery password rotation upon use is *on* for Microsoft Entra joined devices joined devices. This is also the default value
- `2`: numeric recovery password rotation upon use is *on* for both Microsoft Entra joined devices and Microsoft Entra hybrid joined devices

> [!NOTE]
> The Policy is effective only when Micropsoft Entra ID or Active Directory backup for recovery password is configured to *required*
>
> - For OS drive: enable *Do not enable BitLocker until recovery information is stored to AD DS for operating system drives*
> - For fixed drives: enable "*Do not enable BitLocker until recovery information is stored to AD DS for fixed data drives*

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[ConfigureRecoveryPasswordRotation](/windows/client-management/mdm/bitlocker-csp#configurerecoverypasswordrotation)|
| **GPO** | Not available |
