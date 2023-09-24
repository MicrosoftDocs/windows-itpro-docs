---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Validate smart card certificate usage rule compliance

This policy setting allows you to associate an object identifier from a smart card certificate to a BitLocker-protected drive. The object identifier is specified in the enhanced key usage (EKU) of a certificate. BitLocker can identify which certificates may be used to authenticate a user certificate to a BitLocker-protected drive by matching the object identifier in the certificate with the object identifier that is defined by this policy setting. Default object identifier is 1.3.6.1.4.1.311.67.1.1  Note:  BitLocker does not require that a certificate have an EKU attribute, but if one is configured for the certificate it must be set to an object identifier (OID) that matches the OID configured for BitLocker. If you enable this policy setting, the object identifier specified in the "Object identifier" box must match the object identifier in the smart card certificate. If you disable or do not configure this policy setting, a default object identifier is used.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
