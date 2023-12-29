---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Use PIN recovery

PIN Recovery enables a user to change a forgotten PIN using the Windows Hello for Business PIN recovery service, without losing any associated credentials or certificates, including any keys associated with the user's personal accounts on the device.

To achieve this, the PIN recovery service encrypts a recovery secret, which is stored on the device, and requires both the PIN recovery service and the device to decrypt.

PIN recovery requires the user to perform multi-factor authentication to Microsoft Entra ID.

- If you enable this policy setting, Windows Hello for Business uses the PIN recovery service
- If you disable or don't configure this policy setting, Windows doesn't create or store the PIN recovery secret. If the user forgets their PIN, they must delete their existing PIN and create a new one, and they must re-register with any services to which the old PIN provided access

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[EnablePinRecovery](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesenablepinrecovery) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |

For more information, see [PIN reset](../pin-reset.md).
