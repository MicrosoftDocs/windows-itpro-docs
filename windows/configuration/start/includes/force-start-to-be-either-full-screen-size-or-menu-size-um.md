---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Force Start size

If you enable this policy and set it to Start menu or full screen Start, Start is set to that size and users can't change the size of Start in Settings. If you disable or don't configure this policy setting, Windows automatically selects the size based on hardware form factor and users can change the size of Start in Settings.

|  | Path |
|--|--|
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/`[ForceStartSize](/windows/client-management/mdm/policy-csp-start#forcestartsize)<br><br>`./Device/Vendor/MSFT/Policy/Config/Start/`[ForceStartSize](/windows/client-management/mdm/policy-csp-start#forcestartsize) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
