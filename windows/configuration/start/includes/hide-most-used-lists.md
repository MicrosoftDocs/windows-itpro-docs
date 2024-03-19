---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Hide most used lists

If you enable this policy setting, you can configure Start menu to show or hide the list of user's most used apps, regardless of user settings:

- Selecting **Show** forces the *Most used* list in the Start menu, and users can't change to hide it using the Settings app
- Selecting **Hide** disables the *Most used* list, and users can't change to show it using the Settings app
- Selecting **Not Configured**, allow users to turn on or off the display of **Most used** list using the Settings app. This is default behavior.

> [!NOTE]
>
> This policy setting has the precedence over the *Hide frequently used apps* policy setting.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[ShowOrHideMostUsedApps](/windows/client-management/mdm/policy-csp-start#showorhidemostusedapps)<br><br>`./User/Vendor/MSFT/Policy/Config/Start/`[ShowOrHideMostUsedApps](/windows/client-management/mdm/policy-csp-start#showorhidemostusedapps)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Show or hide "Most used" list from Start menu**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Show or hide "Most used" list from Start menu** |
