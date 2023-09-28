---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure use of smart cards on removable data drives

This policy setting allows you to specify whether smart cards can be used to authenticate user access to the BitLocker-protected removable data drives.

- If you enable this policy setting, smart cards can be used to authenticate user access to the drive
  - You can require a smart card authentication by selecting the **Require use of smart cards on removable data drives** option
- If you disable this policy setting, users can't use smart cards to authenticate their access to BitLocker-protected removable data drives
- If you don't configure this policy setting, smart cards can be used to authenticate user access to a BitLocker-protected drive

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |
