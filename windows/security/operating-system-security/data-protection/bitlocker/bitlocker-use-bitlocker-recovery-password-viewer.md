---
title: BitLocker Use BitLocker Recovery Password Viewer 
description: This article for the IT professional describes how to use the BitLocker Recovery Password Viewer.
ms.collection: 
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 11/08/2022
---

# BitLocker: Use BitLocker Recovery Password Viewer

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

This article describes how to use the BitLocker Recovery Password Viewer.

The BitLocker Recovery Password Viewer tool is an optional tool included with the Remote Server Administration Tools (RSAT). It lets BitLocker recovery passwords that are stored in Active Directory Domain Services (AD DS) be located and viewed. This tool can be used to help recover data that is stored on a drive that has been encrypted by using BitLocker. The BitLocker Active Directory Recovery Password Viewer tool is an extension for the Active Directory Users and Computers Microsoft Management Console (MMC) snap-in. Using this tool, a computer object's **Properties** dialog box can be examined to view the corresponding BitLocker recovery passwords.

Additionally a domain container can be searched for BitLocker recovery password across all the domains in the Active Directory forest via a right-click. Passwords can also be searched by password identifier (ID).

## Before starting

To complete the procedures in this scenario, the following requirements must be met:

- Domain administrator credentials.
- Test computers must be joined to the domain.
- On the domain-joined test computers, BitLocker must have been turned on.

The following procedures describe the most common tasks performed by using the BitLocker Recovery Password Viewer.

### To view the recovery passwords for a computer

1. In **Active Directory Users and Computers**, locate and then select the container in which the computer is located.

2. Right-click the computer object, and then select **Properties**.

3. In the **Properties** dialog box, select the **BitLocker Recovery** tab to view the BitLocker recovery passwords that are associated with the computer.

### To copy the recovery passwords for a computer

1. Follow the steps in the previous procedure to view the BitLocker recovery passwords.

2. On the **BitLocker Recovery** tab of the **Properties** dialog box, right-click the BitLocker recovery password that needs to be copied, and then select **Copy Details**.

3. Press CTRL+V to paste the copied text to a destination location, such as a text file or spreadsheet.

### To locate a recovery password by using a password ID

1. In Active Directory Users and Computers, right-click the domain container, and then select **Find BitLocker Recovery Password**.

2. In the **Find BitLocker Recovery Password** dialog box, type the first eight characters of the recovery password in the **Password ID (first 8 characters)** box, and then select **Search**.

By completing the procedures in this scenario, the recovery passwords for a computer have been viewed and copied and a password ID was used to locate a recovery password.

## Related articles

- [BitLocker Overview](index.md)
- [BitLocker frequently asked questions (FAQ)](faq.yml)
- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
- [BitLocker: How to deploy on Windows Server 2012](bitlocker-how-to-deploy-on-windows-server.md)
- [BitLocker: Use BitLocker Drive Encryption Tools to manage BitLocker](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md)
