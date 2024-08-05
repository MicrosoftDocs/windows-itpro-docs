---
author: paolomatarazzo
ms.author: paoloma
ms.date: 07/11/2024
ms.topic: include
---

### Hide entry points for Fast User Switching

With this policy setting you can prevent multiple users to sign in at the same time, using the Fast User Switching feature.

- If enabled, only one user can sign in at a time. The Fast User Switching entry points are hidden from the sign-in screen, the Start menu, and the Task Manager. If multiple users want to sign in, the current user must sign out first
- If disabled or not configured, multiple users can sign in at the same time. The Fast User Switching entry points are available from the sign-in screen, the Start menu, and the Task Manager. The current user doesn't have to sign out to allow another user to sign in

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/WindowsLogon/`[HideFastUserSwitching](/windows/client-management/mdm/policy-csp-windowslogon#hidefastuserswitching) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **Logon** > **Hide entry points for Fast User Switching** |

To learn more, see [Fast User Switching](/windows/win32/shell/fast-user-switching).
