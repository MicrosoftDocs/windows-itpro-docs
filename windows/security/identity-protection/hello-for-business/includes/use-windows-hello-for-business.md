---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/12/2024
ms.topic: include
---

### Use Windows Hello for Business

- If you enable this policy, the device provisions Windows Hello for Business using keys or certificates for all users
- If you disable this policy setting, the device doesn't provision Windows Hello for Business for any user
- If you don't configure this policy setting, users can provision Windows Hello for Business

Select the option *Don't start Windows Hello provisioning after sign-in* when you use a non-Microsoft solution to provision Windows Hello for Business:

- If you select *Don't start Windows Hello provisioning after sign-in*, Windows Hello for Business doesn't automatically start provisioning after the user has signed in
- If you don't select *Don't start Windows Hello provisioning after sign-in*, Windows Hello for Business automatically starts provisioning after the user has signed in

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[UsePassportForWork](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesusepassportforwork) <br><br> `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[DisablePostLogonProvisioning](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesdisablepostlogonprovisioning)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** <br><br>**User Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business**|
