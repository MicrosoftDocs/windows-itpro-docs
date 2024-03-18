---
author: paolomatarazzo
ms.author: paoloma
ms.date: 03/18/2024
ms.topic: include
---

### Force Start to be either full screen size or menu size

If you enable this policy and set it to Start menu or full screen Start, Start will be that size and users will be unable to change the size of Start in Settings. If you disable or don�t configure this policy setting, Windows will automatically select the size based on hardware form factor and users will be able to change the size of Start in Settings.

|  | Path |
|--|--|
| **CSP** | ./Device/Vendor/MSFT/[Setting]() |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Start Menu and Taskbar**<br><br> **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
