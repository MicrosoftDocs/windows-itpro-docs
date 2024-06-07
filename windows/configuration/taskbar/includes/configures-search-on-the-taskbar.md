---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/11/2024
ms.topic: include
---

### Configures search on the taskbar

This policy setting allows you to configure search on the taskbar.

- If you enable this policy setting and set it to **hide**, search on taskbar is hidden by default. Users can't change it in Settings
- If you enable this policy setting and set it to **search icon only**, the search icon is displayed on the taskbar by default. Users can't change it in Settings
- If you enable this policy setting and set it to **search icon and label**, the search icon and label are displayed on the taskbar by default. Users can't change it in Settings
- If you enable this policy setting and set it to **search box**, the search box is displayed on the taskbar by default. Users can't change it in Settings
- If you disable or don't configure this policy setting, search on taskbar is configured according to the defaults for your Windows edition. Users can change search on taskbar in Settings

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Search/`[ConfigureSearchOnTaskbarMode](/windows/client-management/mdm/policy-csp-search#configuresearchontaskbarmode) |
| **GPO** | - **Computer Configuration**  > **Windows Components** > **Search** |
