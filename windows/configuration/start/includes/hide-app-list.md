---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Hide app list

If you enable this setting, the Start Menu will either collapse or remove the all apps list from the Start menu:

- **Collapse** doesn't display the app list next to the pinned tiles in Start. An **All apps** button is displayed on Start to open the all apps list. This is equivalent to setting the **Show app list in Start** in Settings to **Off**
- **Collapse and disable setting** is the same as the collapse option and disable the **Show app list in Start menu** in Settings, so users can't turn it to On
- **Remove and disable setting** removes the all apps list from Start and disable the **Show app list in Start menu** in Settings, so users can't turn it to On
- If you disable or don't configure this setting, the all apps list is visible by default, and the user can change **Show app list in Start** in Settings

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[HideAppList](/windows/client-management/mdm/policy-csp-start#hideapplist)<br><br>`./User/Vendor/MSFT/Policy/Config/Start/`[HideAppList](/windows/client-management/mdm/policy-csp-start#hideapplist) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Remove All Programs list from the Start menu**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Remove All Programs list from the Start menu** |
