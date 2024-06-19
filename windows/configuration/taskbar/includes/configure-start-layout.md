---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/10/2024
ms.topic: include
---

### Configure Start layout

<!--Applied at logon only.-->

This policy setting lets you specify the applications pinned to the taskbar. The layout that you specify has an XML format.

|  | Path |
|--|--|
| **CSP** | - `./Device/Vendor/MSFT/Policy/Config/Start/StartLayout`/[Configure start layout](/windows/client-management/mdm/policy-csp-start#startlayout)<br>- `./User/Vendor/MSFT/Policy/Config/Start/StartLayout`/[Configure start layout](/windows/client-management/mdm/policy-csp-start#startlayout) |
| **GPO** | - **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br>- **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |

For more information, see [Customize the taskbar pinned applications](../pinned-apps.md).
