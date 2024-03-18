---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Remove Logoff on the Start Menu

This policy setting allows you to removes the "Log Off <username>" item from the Start menu and prevents users from restoring it. If you enable this policy setting, the Log Off <username> item does not appear in the Start menu. This policy setting also removes the Display Logoff item from Start Menu Options. As a result, users cannot restore the Log Off <username> item to the Start Menu. If you disable or do not configure this policy setting, users can use the Display Logoff item to add and remove the Log Off item. This policy setting affects the Start menu only. It does not affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del, and it does not prevent users from using other methods to log off. Tip: To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab and, in the Start Menu Settings box, click Display Logoff. See also: "Remove Logoff" policy setting in User Configuration\Administrative Templates\System\Logon/Logoff.

|  | Path |
|--|--|
| **CSP** | ./Device/Vendor/MSFT/[Setting]() |
| **GPO** | **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
