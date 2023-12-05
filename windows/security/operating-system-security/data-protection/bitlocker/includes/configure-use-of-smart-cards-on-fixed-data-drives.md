---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Configure use of smart cards on fixed data drives

This policy setting allows you to specify whether smart cards can be used to authenticate user access to the BitLocker-protected fixed data drives.

- If you enable this policy setting, smart cards can be used to authenticate user access to the drive
  - You can require a smart card authentication by selecting the **Require use of smart cards on fixed data drives** option
- If you disable this policy setting, users can't use smart cards to authenticate their access to BitLocker-protected fixed data drives
- If you don't configure this policy setting, smart cards can be used to authenticate user access to a BitLocker-protected drive

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |
