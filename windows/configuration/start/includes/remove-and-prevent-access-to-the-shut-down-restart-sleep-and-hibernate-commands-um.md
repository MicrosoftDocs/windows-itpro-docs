---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands

With this policy setting, you can prevent users from performing the following commands from the Windows security screen, the sign in screen, and the Start menu: Shut Down, Restart, Sleep, and Hibernate. This policy setting doesn't prevent users from running Windows-based programs that perform these functions:

- If you enable this policy setting, the shutdown, restart, sleep, and hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>DELETE</kbd>, and from the sign in screen
- If you disable or don't configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security and sign in screens is also available

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
