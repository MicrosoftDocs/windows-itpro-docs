---
title: BitLocker deployment comparison (Windows 10)
description: This article shows the Bitlocker deployment comparison chart.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: lovina-saldanha
ms.author: v-lsaldanha
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 05/20/2021
ms.custom: bitlocker
---

# Bitlocker deployment comparison

**Applies to**

- Windows 10

This article depicts the BitLocker deployment comparison chart.

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
|Server components required?      |         |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Additional agent required?     |     No (device enrollment only)    |   Configuration Manager client      |     MBAM client    |
|Administrative plane     | Microsoft Endpoint Manager admin center        |    Configuration Manager console     |    Group Policy Management Console and MBAM sites     |
|Administrative portal installation required     |         |   :::image type="content" source="images/dot1.png" alt-text="dot":::    |    :::image type="content" source="images/dot1.png" alt-text="dot":::     |
|Compliance reporting capabilities     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Force encryption     |    :::image type="content" source="images/dot1.png" alt-text="dot":::   |  :::image type="content" source="images/dot1.png" alt-text="dot":::   | :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Encryption for storage cards (mobile)      |   :::image type="content" source="images/dot1.png" alt-text="dot":::     |  :::image type="content" source="images/dot1.png" alt-text="dot":::      |         |
|Allow recovery password      |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |   :::image type="content" source="images/dot1.png" alt-text="dot":::    |    :::image type="content" source="images/dot1.png" alt-text="dot":::     |
|Manage startup authentication     |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |     :::image type="content" source="images/dot1.png" alt-text="dot":::    |     :::image type="content" source="images/dot1.png" alt-text="dot":::    |
|Select cipher strength and algorithms for fixed drives      |    :::image type="content" source="images/dot1.png" alt-text="dot":::     | :::image type="content" source="images/dot1.png" alt-text="dot":::      |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |
|Select cipher strength and algorithms for removable drives     |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Select cipher strength and algorithms for operating environment drives     |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |   :::image type="content" source="images/dot1.png" alt-text="dot":::    |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |
|Standard recovery password storage location     |     Azure AD or 
Active Directory    |     Configuration Manager site database    |    MBAM database     |
|Store recovery password for operating system and 
fixed drives to Azure AD or Active Directory     |    Yes (Active Directory and 
Azure AD)     | Yes (Active Directory only)      |   Yes (Active Directory only)      |
|Customize preboot message and recovery link     | :::image type="content" source="images/dot1.png" alt-text="dot":::         | :::image type="content" source="images/dot1.png" alt-text="dot":::        |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |
|Allow/deny key file creation     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::     |   :::image type="content" source="images/dot1.png" alt-text="dot":::      |
|Deny Write permission to unprotected drives     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Can be administered outside company network     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::     |         |
|Support for organization unique IDs     |         |      :::image type="content" source="images/dot1.png" alt-text="dot":::   |     :::image type="content" source="images/dot1.png" alt-text="dot":::    |
|Self-service recovery      |    Yes (through Azure AD or Company Portal app)     |   :::image type="content" source="images/dot1.png" alt-text="dot":::    |    :::image type="content" source="images/dot1.png" alt-text="dot":::     |
|Recovery password rotation for fixed and operating environment drives     |   Yes (Windows 10, version 1909 and later)     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Wait to complete encryption until recovery information is backed up to Azure AD      |     :::image type="content" source="images/dot1.png" alt-text="dot":::    |       |        |
|Wait to complete encryption until recovery information is backed up to Active Directory      |         |  :::image type="content" source="images/dot1.png" alt-text="dot":::     |    :::image type="content" source="images/dot1.png" alt-text="dot":::     |
|Allow or deny Data Recovery Agent     |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Unlock a volume using certificate with custom object identifier     |         |   :::image type="content" source="images/dot1.png" alt-text="dot":::    |     :::image type="content" source="images/dot1.png" alt-text="dot":::    |
|Prevent memory overwrite on restart     |         |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |  :::image type="content" source="images/dot1.png" alt-text="dot":::       |
|Configure custom Trusted Platform Module Platform Configuration Register profiles     |         |       | :::image type="content" source="images/dot1.png" alt-text="dot":::        |
|Manage auto-unlock functionality     |         |    :::image type="content" source="images/dot1.png" alt-text="dot":::     | :::image type="content" source="images/dot1.png" alt-text="dot":::        |
