---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/11/2024
ms.topic: include
---

### Do not allow pinning programs to the Taskbar

This policy setting allows you to control pinning programs to the Taskbar.

- If you enable this policy setting, users can't change the programs currently pinned to the Taskbar. If any programs are already pinned to the Taskbar, these programs continue to show in the Taskbar. However, users can't unpin these programs already pinned to the Taskbar, and they can't pin new programs to the Taskbar
- If you disable or don't configure this policy setting, users can change the programs currently pinned to the Taskbar

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/Policy/Config/Start/`[NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#nopinningtotaskbar) |
| **GPO** | - **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
