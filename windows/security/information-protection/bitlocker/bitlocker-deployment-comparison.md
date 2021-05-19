---
title: BitLocker deployment comparison (Windows 10)
description: This article for the IT professional explains how 
BitLocker features can be used to protect your data through drive 
encryption.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: v-lsaldanha
ms.author: lovina-saldanha
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
ms.custom: bitlocker
---

# Bitlocker deployment comparison

**Applies to**

- Windows 10

This article for the IT professional explains how BitLocker 
features can be used to protect your data through drive encryption.

## Bitlocker deployment comparison chart



|  |Microsoft Intune  |Microsoft Endpoint Configuration Manager  |Microsoft BitLocker Administration and Monitoring (MBAM)* |
|---------|---------|---------|---------|
|**Requirements**||||
|Minimum client operating system version     |Windows 10     | Windows 10 and Windows 8.1  | Windows 7 and later        |
|Supported Windows 10 SKUs     |    Enterprise, Pro, Education     |    Enterprise, Pro, Education     |     Enterprise    |
|Minimum Windows 10 version     |1909**   |    None     |    None     |
|Supported domain-joined status     |     Microsoft Azure Active Directory (Azure AD) joined, hybrid Azure AD joined    |   Active Directory joined, hybrid Azure AD joined      |     Active Directory joined    |
|Permissions required to manage policies     |    Endpoint security manager or custom     |   Full administrator or custom      |     Domain Admin or Delegated GPO access    |
|Cloud or on premises      |     Cloud    |  On premises     |    On premises     |
|Server components required?      |         |         |         |
|Additional agent required?     |     No (device enrollment only)    |   Configuration Manager client      |     MBAM client    |
|Administrative plane     | Microsoft Endpoint Manager
admin center        |    Configuration Manager console     |    Group Policy Management Console
and MBAM sites     |
|Administrative portal installation required     |         |       |         |
|Compliance reporting capabilities     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |   :::image type="content" source="images/dot.png" alt-text="dot":::      |  :::image type="content" source="images/dot.png" alt-text="dot":::       |
|Force encryption     |   :::image type="content" source="images/dot.png" alt-text="dot":::      |  :::image type="content" source="images/dot.png" alt-text="dot":::     |  :::image type="content" source="images/dot.png" alt-text="dot":::       |
|Encryption for storage cards (mobile)      |    :::image type="content" source="images/dot.png" alt-text="dot":::     | :::image type="content" source="images/dot.png" alt-text="dot":::        |         |
|Allow recovery password      |         |       |         |
|Manage startup authentication     |         |         |         |
|Select cipher strength and algorithms for fixed 
drives      |         |       |         |
|Select cipher strength and algorithms for 
removable drives     |         |         |         |
|Select cipher strength and algorithms for operating 
environment drives     |         |       |         |
|Standard recovery password storage location     |     Azure AD or 
Active Directory    |     Configuration Manager site database    |    MBAM database     |
|Store recovery password for operating system and 
fixed drives to Azure AD or Active Directory     |    Yes (Active Directory and 
Azure AD)     | Yes (Active Directory only)      |   Yes (Active Directory only)      |
|Customize preboot message and recovery link     |         |         |         |
|Allow/deny key file creation     |         |       |         |
|Deny Write permission to unprotected drives     |         |         |         |
|Can be administered outside company network     |         |       |         |
|Support for organization unique IDs     |         |         |         |
|Self-service recovery      |    Yes (through Azure AD or 
Company Portal app)     |       |         |
|Recovery password rotation for fixed and operating environment drives     |   Yes (Windows 10, version 1909 and later)     |         |         |
|Wait to complete encryption until recovery information is backed up to Active Directory      |         |       |         |
|Allow or deny Data Recovery Agent     |         |         |         |
|Unlock a volume using certificate with custom object identifier     |         |       |         |
|Prevent memory overwrite on restart     |         |         |         |
|Configure custom Trusted Platform Module Platform Configuration Register profiles     |         |       |         |
|Manage auto-unlock functionality     |         |         |         |
|Row6     |         |       |         |
|Row7     |         |         |         |
|Row6     |         |       |         |
|Row7     |         |         |         |
|Row6     |         |       |         |
|Row7     |         |         |         |
|Row6     |         |       |         |
|Row7     |         |         |         |
|Row6     |         |       |         |
|Row7     |         |         |         |
|Row6     |         |       |         |
|Row7     |         |         |         |

