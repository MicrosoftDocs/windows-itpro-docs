---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Validate smart card certificate usage rule compliance

This policy setting is used to determine which certificate to use with BitLocker by associating an object identifier (OID) from a smart card certificate to a BitLocker-protected drive. The object identifier is specified in the enhanced key usage (EKU) of a certificate.

BitLocker can identify which certificates may be used to authenticate a user certificate to a BitLocker-protected drive by matching the object identifier in the certificate with the object identifier that is defined by this policy setting. Default OID is `1.3.6.1.4.1.311.67.1.1`.

If you enable this policy setting, the object identifier specified in the **Object identifier** field must match the object identifier in the smart card certificate. If you disable or don't configure this policy setting, the default OID is used.

> [!NOTE]
> BitLocker doesn't require that a certificate have an EKU attribute; however, if one is configured for the certificate, it must be set to an object identifier that matches the object identifier configured for BitLocker.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
