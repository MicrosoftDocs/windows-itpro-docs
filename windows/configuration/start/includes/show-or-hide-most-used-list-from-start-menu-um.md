---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Show or hide "Most used" list from Start menu

If you enable this policy setting, you can configure Start menu to show or hide the list of user's most used apps, regardless of user settings. Selecting "Show" will force the "Most used" list to be shown, and user cannot change to hide it using the Settings app. Selecting "Hide" will force the "Most used" list to be hidden, and user cannot change to show it using the Settings app. Selecting "Not Configured", or if you disable or do not configure this policy setting, all will allow users to turn on or off the display of "Most used" list using the Settings app. This is default behavior. Note: configuring this policy to "Show" or "Hide" on supported versions of Windows 10 will supercede any policy setting of "Remove frequent programs list from the Start Menu" (which manages same part of Start menu but with fewer options).

|  | Path |
|--|--|
| **CSP** | ./Device/Vendor/MSFT/[Setting]() |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |