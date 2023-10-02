---
title: BitLocker deployment comparison 
description: Learn about the differences between Microsoft Intune and Microsoft Configuration Manager when managing BitLocker.
ms.topic: conceptual
ms.date: 10/02/2023
---

# BitLocker deployment comparison

This article compares the BitLocker management options between Microsoft Intune and Microsoft Configuration Manager.

| Requirements | Microsoft Intune | Microsoft Configuration Manager |
|--|--|--|
| *Supported Windows client editions* | Pro, Enterprise, Pro Education, Education | Pro, Enterprise, Pro Education, Education |
| *Windows server support* | | ✅ |
| *Supported domain-joined status* | Microsoft Entra joined and hybrid joined | Active Directory-joined, Microsoft Entra hybrid joined |
| *Permissions required to manage policies* | Endpoint security manager or custom | Full administrator or custom |
| *Cloud or on premises* | Cloud | On premises |
| *Additional agent required?* | No (device enrollment only) | Configuration Manager client |
| *Administrative plane* | Microsoft Intune admin center | Configuration Manager console |
| *Compliance reporting capabilities* | ✅ | ✅ |
| *Force encryption* | ✅ | ✅ |
| *Allow recovery password* | ✅ | ✅ |
| *Manage startup authentication* | ✅ | ✅ |
| *Select cipher strength and algorithms for fixed drives* | ✅ | ✅ |
| *Select cipher strength and algorithms for removable drives* | ✅ | ✅ |
| *Select cipher strength and algorithms for operating environment drives* | ✅ | ✅ |
| *Standard recovery password storage location* | Microsoft Entra ID or Active Directory | Configuration Manager site database |
| *Store recovery password for operating system and fixed drives to Microsoft Entra ID or Active Directory* | Both | Active Directory only |
| *Customize preboot message and recovery link* | ✅ | ✅ |
| *Allow/deny key file creation* | ✅ | ✅ |
| *Deny Write permission to unprotected drives* | ✅ | ✅ |
| *Can be administered outside company network* | ✅ | ✅ |
| *Support for organization unique IDs* | ✅ | ✅ |
| *Self-service recovery* | ✅ | ✅ |
| *Recovery password rotation for fixed and operating environment drives* | ✅ | ✅ |
| *Wait to complete encryption until recovery information is backed up to Microsoft Entra ID* | ✅ |  |
| *Wait to complete encryption until recovery information is backed up to Active Directory* | ✅ | ✅ |
| *Allow or deny Data Recovery Agent* | ✅ | |
| *Unlock a volume using certificate with custom object identifier* |  | ✅ |
| *Prevent memory overwrite on restart* | ✅ | ✅ |
| *Manage auto-unlock functionality* | ✅ | ✅ |
