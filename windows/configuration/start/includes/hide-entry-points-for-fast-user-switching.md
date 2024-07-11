---
author: paolomatarazzo
ms.author: paoloma
ms.date: 07/11/2024
ms.topic: include
---

### Hide entry points for Fast User Switching

With this policy setting you can hide the **Switch User** interface in the Logon UI, the Start menu and the Task Manager:

- If you enable this policy setting, the Switch User interface is hidden from the user who is attempting to log on or is logged on to the computer that has this policy applied
- If you disable or do not configure this policy setting, the Switch User interface is accessible to the user in the three locations

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/WindowsLogon/`[HideFastUserSwitching](/windows/client-management/mdm/policy-csp-windowslogon#hidefastuserswitching) |
| **GPO** | **User Configuration** > **Administrative Templates** > **Logon** > **Hide entry points for Fast User Switching** |
