---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Configure device unlock factors

Configure a comma separated list of credential provider GUIDs, such as face and fingerprint provider GUIDs, to be used as the first and second unlock factors. If the trusted signal provider is specified as one of the unlock factors, you should also configure a comma separated list of signal rules in the form of xml for each signal type to be verified.

If you enable this policy setting, the user must use one factor from each list to successfully unlock. If you disable or don't configure this policy setting, users can continue to unlock with existing options.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/`[DeviceUnlock](/windows/client-management/mdm/passportforwork-csp#devicedeviceunlock) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |

For more information, see [Multi-factor unlock](../multifactor-unlock.md).
