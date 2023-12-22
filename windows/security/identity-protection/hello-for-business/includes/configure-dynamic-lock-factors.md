---
author: paolomatarazzo
ms.author: paoloma
ms.date: 12/19/2023
ms.topic: include
---

### Configure dynamic lock factors

Configure a comma separated list of signal rules in the form of xml for each signal type.

- If you enable this policy setting, the signal rules are evaluated to detect user absence and automatically lock the device
- If you disable or don't configure the setting, users can continue to lock with existing options

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/DynamicLock/`[DynamicLock](/windows/client-management/mdm/passportforwork-csp#devicedynamiclock) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
