---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Use cloud trust for on-premises authentication

Use this policy setting to configure Windows Hello for Business to use the cloud Kerberos trust model.

- If you enable this policy setting, Windows Hello for Business uses a Kerberos ticket retrieved from authenticating to Microsoft Entra ID for on-premises authentication
- If you disable or don't configure this policy setting, Windows Hello for Business uses a key or certificate (depending on other policy settings) for on-premises authentication

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[UseCloudTrustForOnPremAuth](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesusecloudtrustforonpremauth) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |

> [!NOTE]
> Cloud Kerberos trust is incompatible with certificate trust. If the certificate trust policy setting is enabled, it takes precedence over this policy setting.
