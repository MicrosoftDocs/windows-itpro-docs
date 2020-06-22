---
title: WDAC and AppLocker Overview
description: Compare Windows application control technologies.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: denisebmsft
ms.reviewer: isbrahm
ms.author: deniseb
manager: dansimp
ms.date: 04/15/2020
ms.custom: asr
---

# Windows Defender Application Control and AppLocker Overview

**Applies to:**

- Windows 10
- Windows Server 2016 and above

Windows 10 includes two technologies that can be used for application control depending on your organization's specific scenarios and requirements: Windows Defender Application Control (WDAC) and AppLocker.

## Windows Defender Application Control

WDAC was introduced with Windows 10 and allows organizations to control what drivers and applications are allowed to run on their Windows 10 clients. WDAC was designed as a security feature under the [servicing criteria](https://www.microsoft.com/msrc/windows-security-servicing-criteria) defined by the Microsoft Security Response Center (MSRC).

> [!NOTE]
> Prior to Windows 10, version 1709, Windows Defender Application Control was known as configurable code integrity (CCI) policies.

WDAC policies apply to the managed computer as a whole and affects all users of the device. WDAC rules can be defined based on:

- Attributes of the codesigning certificate(s) used to sign an app and its binaries;
- Attributes of the app's binaries that come from the signed metadata for the files, such as Original Filename and version, or the hash of the file;
- The reputation of the app as determined by Microsoft's Intelligent Security Graph;
- The identity of the process that initiated the installation of the app and its binaries (managed installer);
- The path from which the app or file is launched (beginning with Windows 10 version 1903);
- The process that launched the app or binary.

### WDAC System Requirements

WDAC policies can only be created on computers running Windows 10 build 1903+ on any SKU, pre-1903 Windows 10 Enterprise, or Windows Server 2016 and above.
WDAC policies can be applied to computers running any edition of Windows 10 or Windows Server 2016 via a Mobile Device Management (MDM) solution like Intune, a management interface like Configuration Manager, or a script host like PowerShell. Group Policy can also be used to deploy WDAC policies to Windows 10 Enterprise edition or Windows Server 2016 and above, but cannot deploy policies to machines running non-Enterprise SKUs of Windows 10.

## AppLocker

AppLocker was introduced with Windows 7 and allows organizations to control what applications their users are allowed to run on their Windows clients. AppLocker provides security value as a defense in depth feature and helps end users avoid running unapproved software on their computers.

AppLocker policies can apply to all users on a computer or to individual users and groups. AppLocker rules can be defined based on:

- Attributes of the codesigning certificate(s) used to sign an app and its binaries;
- Attributes of the app's binaries that come from the signed metadata for the files, such as Original Filename and version, or the hash of the file;
- The path from which the app or file is launched (beginning with Windows 10 version 1903).

### AppLocker System Requirements

AppLocker policies can only be configured on and applied to computers that are running on the supported versions and editions of the Windows operating system. For more info, see [Requirements to Use AppLocker](applocker/requirements-to-use-applocker.md). 
AppLocker policies can be deployed using Group Policy or MDM.

## Choose when to use WDAC or AppLocker

Although either AppLocker or WDAC can be used to control application execution on Windows 10 clients, the following factors can help you decide when to use each of the technologies. 

### WDAC is best when:

- You are adopting application control primarily for security reasons.
- Your application control policy can be applied to all users on the managed computers.
- All of the devices you wish to manage are running Windows 10.

### AppLocker is best when:

- You have a mixed Windows operating system (OS) environment and need to apply the same policy controls to Windows 10 and earlier versions of the OS.
- You need to apply different policies for different users or groups on a shared computer.
- You are using application control to help users avoid running unapproved software, but you do not require a solution designed as a security feature.
- You do not wish to enforce application control on application files such as DLLs or drivers.

## When to use both WDAC and AppLocker together

AppLocker can also be deployed as a complement to WDAC to add user- or group-specific rules for shared device scenarios where its important to prevent some users from running specific apps.
As a best practice, you should enforce WDAC at the most restrictive level possible for your organization, and then you can use AppLocker to fine-tune the restrictions to an even lower level.
