---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Clear tile notifications during log on

If you enable this setting, the system deletes tile notifications when the user logs on. As a result, the Tiles in the start view will always show their default content when the user logs on. In addition, any cached versions of these notifications will be cleared when the user logs on. If you disable or do not configure this setting, the system retains notifications, and when a user logs on, the tiles appear just as they did when the user logged off, including the history of previous notifications for each tile. This setting does not prevent new notifications from appearing. See the "Turn off Application Notifications" setting to prevent new notifications.

|  | Path |
|--|--|
| **CSP** | ./Device/Vendor/MSFT/[Setting]() |
| **GPO** | **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
