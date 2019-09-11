---
title: BitLocker Use BitLocker Recovery Password Viewer (Windows 10)
description: This topic for the IT professional describes how to use the BitLocker Recovery Password Viewer.
ms.assetid: 04c93ac5-5dac-415e-b636-de81435753a2
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker: Use BitLocker Recovery Password Viewer

**Applies to**
-   Windows 10

This topic for the IT professional describes how to use the BitLocker Recovery Password Viewer.

The BitLocker Recovery Password Viewer tool is an optional tool included with the Remote Server Administration Tools (RSAT). It lets you locate and view BitLocker recovery passwords that are stored in Active Directory Domain Services (AD DS). You can use this tool to help recover data that is stored on a drive that has been encrypted by using BitLocker. The BitLocker Active Directory Recovery Password Viewer tool is an extension for the Active Directory Users and Computers Microsoft Management Console (MMC) snap-in. Using this tool, you can examine a computer object's **Properties** dialog box to view the corresponding BitLocker recovery passwords. Additionally, you can right-click a domain container and then search for a BitLocker recovery password across all the domains in the Active Directory forest. You can also search for a password by password identifier (ID).

## Before you start

To complete the procedures in this scenario:

-   You must have domain administrator credentials.
-   Your test computers must be joined to the domain.
-   On the test computers, BitLocker must have been turned on after joining the domain.

The following procedures describe the most common tasks performed by using the BitLocker Recovery Password Viewer.

**To view the recovery passwords for a computer**

1.  In **Active Directory Users and Computers**, locate and then click the container in which the computer is located.
2.  Right-click the computer object, and then click **Properties**.
3.  In the **Properties** dialog box, click the **BitLocker Recovery** tab to view the BitLocker recovery passwords that are associated with the computer.

**To copy the recovery passwords for a computer**

1.  Follow the steps in the previous procedure to view the BitLocker recovery passwords.
2.  On the **BitLocker Recovery** tab of the **Properties** dialog box, right-click the BitLocker recovery password that you want to copy, and then click **Copy Details**.
3.  Press CTRL+V to paste the copied text to a destination location, such as a text file or spreadsheet.

**To locate a recovery password by using a password ID**

1.  In Active Directory Users and Computers, right-click the domain container, and then click **Find BitLocker Recovery Password**.
2.  In the **Find BitLocker Recovery Password** dialog box, type the first eight characters of the recovery password in the **Password ID (first 8 characters)** box, and then click **Search**.
By completing the procedures in this scenario, you have viewed and copied the recovery passwords for a computer and used a password ID to locate a recovery password.

## More information

- [BitLocker Overview](bitlocker-overview.md)
- [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.md)
- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
- [BitLocker: How to deploy on Windows Server 2012](bitlocker-how-to-deploy-on-windows-server.md)
- [BitLocker: Use BitLocker Drive Encryption Tools to manage BitLocker](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md)
 
 
