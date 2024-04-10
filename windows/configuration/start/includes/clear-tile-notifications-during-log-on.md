---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/10/2024
ms.topic: include
---

### Clear tile notifications during log on

If you enable this policy setting, the system deletes tile notifications when the user signs on. As a result, the tiles in the Start menu always show their default content when a user signs in. Any cached versions of the notifications are cleared when the user signs in. If you disable or don't configure this setting, the system retains notifications, and when a user signs in, the tiles appear just as they did when the user signed out, including the history of previous notifications for each tile. This policy setting doesn't prevent new notifications from appearing.

|  | Path |
|--|--|
| **CSP** | ./Device/Vendor/MSFT/[Setting]() |
| **GPO** | **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
