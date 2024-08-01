---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/12/2024
ms.topic: include
---

### Use Windows Hello for Business certificates as smart card certificates

This policy setting is designed to allow compatibility with applications that rely exclusively on smart card certificates.

- If you enable this policy setting, applications use Windows Hello for Business certificates as smart card certificates. Biometric factors are unavailable when a user is asked to authorize the use of the certificate's private key
- If you disable or don't configure this policy setting, applications don't use Windows Hello for Business certificates as smart card certificates, and biometric factors are available when a user is asked to authorize the use of the certificate's private key

This policy setting is incompatible with Windows Hello for Business credentials provisioned when [Turn off smart card emulation](../policy-settings.md#turn-off-smart-card-emulation) is enabled.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[UseHelloCertificatesAsSmartCardCertificates](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesusehellocertificatesassmartcardcertificates) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
