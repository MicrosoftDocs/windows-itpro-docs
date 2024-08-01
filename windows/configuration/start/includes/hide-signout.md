---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/10/2024
ms.topic: include
---

### Hide Sign out

With this policy setting you can remove the **Sign out** item from the Start menu and prevents users from restoring it:

- If you enable this policy setting, the **Sign out** item doesn't appear in the Start menu
- If you disable or don't configure this policy setting, users can use the **Sign out** item in the Start menu

> [!NOTE]
>
> This policy setting affects the Start menu only. It doesn't affect the **Sign out** item on the Windows Security dialog box that appears when you press <kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>DEL</kbd>, and it doesn't prevent users from using other methods to sign out.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[HideSignOut](/windows/client-management/mdm/policy-csp-start#hidesignout) |
| **GPO** | **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Remove Logoff on the Start Menu** |
