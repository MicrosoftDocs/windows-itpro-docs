---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Hide recently added apps

With this policy setting, you can prevent the Start menu from displaying a list of recently installed applications.

If you enable this policy, the Start menu doesn't display the **Recently added** list. The corresponding setting is also disabled in Settings.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[HideRecentlyAddedApps](/windows/client-management/mdm/policy-csp-start#hiderecentlyaddedapps)<br><br>`./User/Vendor/MSFT/Policy/Config/Start/`[HideRecentlyAddedApps](/windows/client-management/mdm/policy-csp-start#hiderecentlyaddedapps)` |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Remove "Recently added" list from Start Menu** |
