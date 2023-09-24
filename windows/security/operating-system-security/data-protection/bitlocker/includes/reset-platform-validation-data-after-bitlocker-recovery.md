---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Reset platform validation data after BitLocker recovery

This policy setting allows you to control whether or not platform validation data is refreshed when Windows is started following BitLocker recovery. If you enable this policy setting, platform validation data will be refreshed when Windows is started following BitLocker recovery. If you disable this policy setting, platform validation data will not be refreshed when Windows is started following BitLocker recovery. If you do not configure this policy setting, platform validation data will be refreshed when Windows is started following BitLocker recovery.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
