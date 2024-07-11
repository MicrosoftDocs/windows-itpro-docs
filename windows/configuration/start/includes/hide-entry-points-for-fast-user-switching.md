---
author: paolomatarazzo
ms.author: paoloma
ms.date: 07/11/2024
ms.topic: include
---

### Hide entry points for Fast User Switching

With this policy setting you can hide the **Switch User** interface from the sign in screen, the Start menu, and the Task Manager:

- If enabled, the **Switch User** option is hidden
- If disabled or not configured, the **Switch User** option is available to the user in the sign in screen, the Start menu, and the Task Manager

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/WindowsLogon/`[HideFastUserSwitching](/windows/client-management/mdm/policy-csp-windowslogon#hidefastuserswitching) |
| **GPO** | **User Configuration** > **Administrative Templates** > **Logon** > **Hide entry points for Fast User Switching** |

To learn more, see [Fast User Switching](/windows/win32/shell/fast-user-switching).
