---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/10/2024
ms.topic: include
---

### Clear history of recently opened documents on exit

If you enable this policy setting, shortcuts to recently used files are deleted when the user signs out:

- The **Recent Items** section on the Start menu is cleared
- Recently and frequently used items in the jump lists of programs in the Start menu and Taskbar are cleared

If you disable or don't configure this policy setting, the system retains document shortcuts. When a user signs in, the **Recent Items** menu and the jump lists appear as when the user logged off.

> [!NOTE]
> The system saves document shortcuts in the user profile in the System-drive\Users\User-name\Recent folder.

|  | Path |
|--|--|
| **CSP** | Not available. |
| **GPO** | **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Clear history of recently opened documents on exit** |
