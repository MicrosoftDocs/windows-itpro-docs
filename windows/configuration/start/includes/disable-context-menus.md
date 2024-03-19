---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Disable context menus

With this policy setting you can prevent users from opening the context menus in the Start menu. If you enable this policy, then invocations of context menus within the Start menu is ignored.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[DisableContextMenus](/windows/client-management/mdm/policy-csp-start#disablecontextmenus)<br><br>`./User/Vendor/MSFT/Policy/Config/Start/`[DisableContextMenus](/windows/client-management/mdm/policy-csp-start#disablecontextmenus)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Disable context menus in the Start Menu** |
