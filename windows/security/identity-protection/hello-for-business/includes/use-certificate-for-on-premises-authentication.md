---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Use certificate for on-premises authentication

Use this policy setting to configure Windows Hello for Business to enroll a sign-in certificate used for on-premises authentication.

- If you enable this policy setting, Windows Hello for Business enrolls a sign-in certificate that is used for on-premises authentication
- If you disable or don't configure this policy setting, Windows Hello for Business will use a key or a Kerberos ticket (depending on other policy settings) for on-premises authentication

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[UseCertificateForOnPremAuth](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesusecertificateforonpremauth)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** <br><br> **User Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business**|
