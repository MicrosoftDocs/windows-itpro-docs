---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Hide frequently used apps

If you enable this policy setting, you can configure Start menu to show or hide the list of user's most used apps, regardless of user settings:

- Selecting **Show** forces the *Most used* list in the Start menu, and users can't change to hide it using the Settings app
- Selecting **Hide** disables the *Most used* list, and users can't change to show it using the Settings app
- Selecting **Not Configured**, allow users to turn on or off the display of **Most used** list using the Settings app. This is default behavior.

> [!NOTE]
>
> This policy setting has the precedence over the *Remove frequent programs list from the Start Menu* policy setting.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#hidefrequentlyusedapps)<br><br>
`./User/Vendor/MSFT/Policy/Config/Start/`[HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#hidefrequentlyusedapps)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
