---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/10/2024
ms.topic: include
---

### Configure Start layout

<!--Applied at logon only.-->

This policy setting lets you specify the items pinned to the taskbar, preventing users from changing its configuration. The layout that you specify must be stored in an XML file.

|  | Path |
|--|--|
| **CSP** | - `./Device/Vendor/MSFT/Policy/Config/Start/StartLayout`/[Configure start layout](/windows/client-management/mdm/policy-csp-start#startlayout)<br><br>- `./User/Vendor/MSFT/Policy/Config/Start/StartLayout`/[Configure start layout](/windows/client-management/mdm/policy-csp-start#startlayout) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |

For more information, see [Customize the Windows taskbar](../index.md).
