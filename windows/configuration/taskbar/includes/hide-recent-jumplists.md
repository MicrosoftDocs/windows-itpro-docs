---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/12/2024
ms.topic: include
---

### Hide recent jumplists

Prevents the operating system and installed programs from creating and displaying shortcuts to recently opened documents.

- If you enable this setting:
  - The system and apps don't create shortcuts to documents opened
  - The system empties the Recent Items menu on the Start menu, and apps don't display shortcuts at the bottom of the File menu
  - The Jump Lists in the Start Menu and Taskbar don't show lists of recently or frequently used files, folders, or websites
- If you disable or don't configure this setting, the system stores and displays shortcuts to recently and frequently used files, folders, and websites
- If you enable this setting but don't enable the **Remove Recent Items menu from Start Menu** setting, the Recent Items menu appears on the Start menu, but it's empty.
- If you enable this setting, but then later disable it or set it to **Not Configured**, the document shortcuts saved before the setting was enabled reappear in the Recent Items menu and program File menus, and Jump Lists. This setting doesn't hide or prevent the user from pinning files, folders, or websites to the Jump Lists. This setting doesn't hide document shortcuts displayed in the Open dialog box

|  | Path |
|--|--|
| **CSP** | - `./Device/Vendor/MSFT/Policy/Config/Start/`[HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)<br>- `./User/Vendor/MSFT/Policy/Config/Start/`[HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists) |
| **GPO** | - **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **don't keep history of recently opened documents**<br>- **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **don't keep history of recently opened documents**|
