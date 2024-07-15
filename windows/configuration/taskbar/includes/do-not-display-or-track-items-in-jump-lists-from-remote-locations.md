---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/11/2024
ms.topic: include
---

### Do not display or track items in Jump Lists from remote locations

This policy setting allows you to control displaying or tracking items in Jump Lists from remote locations. The Start Menu and Taskbar display Jump Lists off of programs. These menus include files, folders, websites, and other relevant items for that program. This helps users more easily reopen their most important documents and other tasks.

- If you enable this policy setting, the Start Menu and Taskbar only track the files that the user opens locally on this computer. Files that the user opens over the network from remote computers aren't tracked or shown in the Jump Lists. Use this setting to reduce network traffic, particularly over slow network connections
- If you disable or don't configure this policy setting, all files that the user opens appear in the menus, including files located remotely on another computer

> [!NOTE]
> This setting doesn't prevent Windows from displaying remote files that the user has explicitly pinned to the Jump Lists.

|  | Path |
|--|--|
| **CSP** | Not available. |
| **GPO** | - **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** |
