---
title: How to use BitLocker Recovery Password Viewer 
description: Learn how to use the BitLocker Recovery Password Viewer tool.
ms.collection: 
  - tier1
ms.topic: how-to
ms.date: 07/25/2023
---

# How to use BitLocker Recovery Password Viewer

BitLocker Recovery Password Viewer is an optional tool included with the *Remote Server Administration Tools (RSAT)*. With Recovery Password Viewer you can view the BitLocker recovery passwords that are stored in Active Directory Domain Services (AD DS). The tool is an extension for the *Active Directory Users and Computers Microsoft Management Console (MMC)* snap-in.

With BitLocker Recovery Password Viewer you can:

- Check the Active Directory computer object's properties to find the associated BitLocker recovery passwords
- Search Active Directory for BitLocker recovery password across all the domains in the Active Directory forest. Passwords can also be searched by password identifier (ID)

## Requirements

To complete the procedures in this scenario, the following requirements must be met:

- Domain administrator credentials
- Devices must be joined to the domain
- On the domain-joined devices, BitLocker must enabled

The following procedures describe the most common tasks performed by using the BitLocker Recovery Password Viewer.

## View the recovery passwords for a computer object

1. In **Active Directory Users and Computers**, locate and then select the container in which the computer is located
1. Right-click the computer object and select **Properties**
1. In the **Properties** dialog box, select the **BitLocker Recovery** tab to view the BitLocker recovery passwords that are associated with the computer

## Copy the recovery passwords for a computer object

1. Follow the steps in the previous procedure to view the BitLocker recovery passwords
1. On the **BitLocker Recovery** tab of the **Properties** dialog box, right-click the BitLocker recovery password that needs to be copied, and then select **Copy Details**
1. Press <kbd>CTRL</kbd>+<kbd>V</kbd> to paste the copied text to a destination location, such as a text file or spreadsheet

## Locate a recovery password by using a password ID

1. In Active Directory Users and Computers, right-click the domain container and select **Find BitLocker Recovery Password**
1. In the **Find BitLocker Recovery Password** dialog box, type the first eight characters of the recovery password in the **Password ID (first 8 characters)** box, and select **Search**
1. Once the recovery password is located, you can use the previous procedure to copy it
