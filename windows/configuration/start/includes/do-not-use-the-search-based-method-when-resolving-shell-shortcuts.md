---
author: paolomatarazzo
ms.author: paoloma
ms.date: 04/10/2024
ms.topic: include
---

### Don't use the search-based method when resolving shell shortcuts

This policy setting prevents the system from conducting a comprehensive search of the target drive to resolve a shortcut. If you enable this policy setting, the system doesn't conduct the final drive search. It just displays a message explaining that the file isn't found. If you disable or don't configure this policy setting, by default, when the system can't find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path isn't correct, it conducts a comprehensive search of the target drive in an attempt to find the file. Note: This policy setting only applies to target files on NTFS partitions. FAT partitions don't have this ID tracking and search capability.

|  | Path |
|--|--|
| **CSP** | ./Device/Vendor/MSFT/[Setting]() |
| **GPO** | **User Configuration** > **Administrative Templates** > **Start Menu and Taskbar** > **Do not use the search-based method when resolving shell shortcuts** |
