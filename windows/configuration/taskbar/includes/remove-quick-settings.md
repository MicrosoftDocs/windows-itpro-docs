---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/11/2024
ms.topic: include
---

### Remove Quick Settings

This policy setting removes Quick Settings from the bottom right area on the taskbar. The Quick Settings area is located at the left of the clock in the taskbar and includes icons for current network and volume.

If this setting is enabled, Quick Settings isn't displayed in the Quick Settings area.

> [!NOTE]
> A reboot is required for this policy setting to take effect.

|  | Path |
|--|--|
| **CSP** | `./User/Vendor/MSFT/Policy/Config/Start/`[DisableControlCenter](/windows/client-management/mdm/policy-csp-start#disablecontrolcenter) |
| **GPO** | - **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
