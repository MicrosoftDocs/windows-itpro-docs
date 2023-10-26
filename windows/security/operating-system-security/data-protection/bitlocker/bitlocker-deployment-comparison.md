---
title: BitLocker deployment comparison 
description: This article shows the BitLocker deployment comparison chart.
ms.topic: conceptual
ms.date: 11/08/2022
---

# BitLocker deployment comparison

This article depicts the BitLocker deployment comparison chart.

## BitLocker deployment comparison chart

| Requirements | Microsoft Intune | Microsoft Configuration Manager | Microsoft BitLocker Administration and Monitoring (MBAM) |
|--|--|--|--|
| *Minimum client operating system version* | Windows 11 and Windows 10 | Windows 11, Windows 10, and Windows 8.1 | Windows 7, Windows 8, Windows 8.1, Windows 10, Windows 10 IoT, and Windows 11 |
| *Supported Windows SKUs* | Enterprise, Pro, Education | Enterprise, Pro, Education | Enterprise |
| *Minimum Windows version* | 1909 | None | None |
| *Supported domain-joined status* | Microsoft Entra joined, Microsoft Entra hybrid joined | Active Directory-joined, Microsoft Entra hybrid joined | Active Directory-joined |
| *Permissions required to manage policies* | Endpoint security manager or custom | Full administrator or custom | Domain Admin or Delegated GPO access |
| *Cloud or on premises* | Cloud | On premises | On premises |
| Server components required? |  | ✅ | ✅ |
| *Additional agent required?* | No (device enrollment only) | Configuration Manager client | MBAM client |
| *Administrative plane* | Microsoft Intune admin center | Configuration Manager console | Group Policy Management Console and MBAM sites |
| *Administrative portal installation required* |  | ✅ | ✅ |
| *Compliance reporting capabilities* | ✅ | ✅ | ✅ |
| *Force encryption* | ✅ | ✅ | ✅ |
| *Encryption for storage cards (mobile)* | ✅ | ✅ |  |
| *Allow recovery password* | ✅ | ✅ | ✅ |
| *Manage startup authentication* | ✅ | ✅ | ✅ |
| *Select cipher strength and algorithms for fixed drives* | ✅ | ✅ | ✅ |
| *Select cipher strength and algorithms for removable drives* | ✅ | ✅ | ✅ |
| *Select cipher strength and algorithms for operating environment drives* | ✅ | ✅ | ✅ |
| *Standard recovery password storage location* | Microsoft Entra ID or Active Directory | Configuration Manager site database | MBAM database |
| *Store recovery password for operating system and fixed drives to Microsoft Entra ID or Active Directory* | Yes (Active Directory and Microsoft Entra ID) | Yes (Active Directory only) | Yes (Active Directory only) |
| *Customize preboot message and recovery link* | ✅ | ✅ | ✅ |
| *Allow/deny key file creation* | ✅ | ✅ | ✅ |
| *Deny Write permission to unprotected drives* | ✅ | ✅ | ✅ |
| *Can be administered outside company network* | ✅ | ✅ |  |
| *Support for organization unique IDs* |  | ✅ | ✅ |
| *Self-service recovery* | Yes (through Microsoft Entra ID or Company Portal app) | ✅ | ✅ |
| *Recovery password rotation for fixed and operating environment drives* | Yes (Windows 10, version 1909 and later) | ✅ | ✅ |
| *Wait to complete encryption until recovery information is backed up to Microsoft Entra ID* | ✅ |  |  |
| *Wait to complete encryption until recovery information is backed up to Active Directory* |  | ✅ | ✅ |
| *Allow or deny Data Recovery Agent* | ✅ | ✅ | ✅ |
| *Unlock a volume using certificate with custom object identifier* |  | ✅ | ✅ |
| *Prevent memory overwrite on restart* |  | ✅ | ✅ |
| *Configure custom Trusted Platform Module Platform Configuration Register profiles* |  |  | ✅ |
| *Manage auto-unlock functionality* |  | ✅ | ✅ |
