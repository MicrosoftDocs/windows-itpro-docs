---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/11/2024
ms.topic: include
---

### Configures the Chat icon on the taskbar

Wih this policy setting you configure the Chat icon on the taskbar.

- If you enable this policy setting and set it to **Show**, the Chat icon is displayed on the taskbar by default. Users can show or hide it in Settings
- If you enable this policy setting and set it to **Hide**, the Chat icon is hidden by default. Users can show or hide it in Settings
- If you enable this policy setting and set it to **Disabled**, the Chat icon isn't displayed, and users can't show or hide it in Settings
- If you disable or don't configure this policy setting, the Chat icon is configured according to the defaults for your Windows edition

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Experience/`[ConfigureChatIcon](/windows/client-management/mdm/policy-csp-experience#configurechaticon) |
| **GPO** | **Computer Configuration**  > **Administrative Templates** > **Start Menu and Taskbar** |
