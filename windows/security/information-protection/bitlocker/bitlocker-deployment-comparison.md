---
title: BitLocker deployment comparison (Windows 10)
description: This article shows the BitLocker deployment comparison chart.
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

# BitLocker deployment comparison

**Applies to**

-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

This article depicts the BitLocker deployment comparison chart.

## BitLocker deployment comparison chart

| Requirements |Microsoft Intune  |Microsoft Endpoint Configuration Manager  |Microsoft BitLocker Administration and Monitoring (MBAM) |
|---------|---------|---------|---------|
|Minimum client operating system version     |Windows 11 and Windows 10    | Windows 11, Windows 10, and Windows 8.1  | Windows 7 and later        |
|Supported Windows SKUs     |    Enterprise, Pro, Education     |    Enterprise, Pro, Education     |     Enterprise    |
|Minimum Windows version     |1909   |    None     |    None     |
|Supported domain-joined status     |     Microsoft Azure Active Directory (Azure AD) joined, hybrid Azure AD joined    |   Active Directory joined, hybrid Azure AD joined      |     Active Directory joined    |
|Permissions required to manage policies     |    Endpoint security manager or custom     |   Full administrator or custom      |     Domain Admin or Delegated GPO access    |
|Cloud or on premises      |     Cloud    |  On premises     |    On premises     |
|Server components required?      |         |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Additional agent required?     |     No (device enrollment only)    |   Configuration Manager client      |     MBAM client    |
|Administrative plane     | Microsoft Endpoint Manager admin center        |    Configuration Manager console     |    Group Policy Management Console and MBAM sites     |
|Administrative portal installation required     |         |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |
|Compliance reporting capabilities     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Force encryption     |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::   |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::   | :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Encryption for storage cards (mobile)      |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |         |
|Allow recovery password      |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |
|Manage startup authentication     |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |     :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |     :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |
|Select cipher strength and algorithms for fixed drives      |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::     | :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |
|Select cipher strength and algorithms for removable drives     |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Select cipher strength and algorithms for operating environment drives     |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |
|Standard recovery password storage location     |     Azure AD or Active Directory    |     Configuration Manager site database    |    MBAM database     |
|Store recovery password for operating system and fixed drives to Azure AD or Active Directory     |    Yes (Active Directory and Azure AD)     | Yes (Active Directory only)      |   Yes (Active Directory only)      |
|Customize preboot message and recovery link     | :::image type="content" source="images/yes-icon.png" alt-text="supported":::         | :::image type="content" source="images/yes-icon.png" alt-text="supported":::        |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |
|Allow/deny key file creation     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::      |
|Deny Write permission to unprotected drives     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Can be administered outside company network     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |         |
|Support for organization unique IDs     |         |      :::image type="content" source="images/yes-icon.png" alt-text="supported":::   |     :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |
|Self-service recovery      |    Yes (through Azure AD or Company Portal app)     |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |
|Recovery password rotation for fixed and operating environment drives     |   Yes (Windows 10, version 1909 and later or Windows 11)     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Wait to complete encryption until recovery information is backed up to Azure AD      |     :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |       |        |
|Wait to complete encryption until recovery information is backed up to Active Directory      |         |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::     |
|Allow or deny Data Recovery Agent     |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Unlock a volume using certificate with custom object identifier     |         |   :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |     :::image type="content" source="images/yes-icon.png" alt-text="supported":::    |
|Prevent memory overwrite on restart     |         |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |  :::image type="content" source="images/yes-icon.png" alt-text="supported":::       |
|Configure custom Trusted Platform Module Platform Configuration Register profiles     |         |       | :::image type="content" source="images/yes-icon.png" alt-text="supported":::        |
|Manage auto-unlock functionality     |         |    :::image type="content" source="images/yes-icon.png" alt-text="supported":::     | :::image type="content" source="images/yes-icon.png" alt-text="supported":::        |
