---
title: Windows 10 Fall Creators Update - Features removed or planned for removal
description: Which features were removed in Windows 10 Fall Creators Update (version 1709)? Which features are we thinking of removing in the future?
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 10/09/2017
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.topic: article
---

# Features removed or planned for replacement starting with Windows 10 Fall Creators Update (version 1709)

> Applies to: Windows 10, version 1709

Each release of Windows 10 adds new features and functionality; we also occasionally remove features and functionality, usually because we've added a better option. Read on for details about the features and functionalities that we removed in Windows 10 Fall Creators Update (version 1709). This list also includes information about features and functionality that we're considering removing in a future release of Windows 10. This list is intended to make you aware of current and future changes and inform your planning. **The list is subject to change and might not include every affected feature or functionality.**

## Features removed from Windows 10 Fall Creators Update

We've removed the following features and functionalities from the installed product image in Windows 10, version 1709. Applications, code, or usage that depend on these features won't function in this release unless you employ an alternate method.

### 3D Builder

No longer installed by default, [3D Builder](https://www.microsoft.com/store/p/3d-builder/9wzdncrfj3t6) is still available for download from the Microsoft Store. You can also consider using Print 3D and Paint 3D in its place.

### APN database (Apndatabase.xml)

Replaced by the Country and Operator Settings Asset (COSA) database. For more information, see the following Hardware Dev Center articles:

- [Planning your COSA/APN database submission](/windows-hardware/drivers/mobilebroadband/planning-your-apn-database-submission)
- [COSA – FAQ](/windows-hardware/drivers/mobilebroadband/cosa---faq)

### Enhanced Mitigation Experience Toolkit (EMET)

Removed from the image, and you're blocked from using it. Consider using the [Exploit Protection feature](/windows/threat-protection/windows-defender-exploit-guard/exploit-protection) as a replacement. See the [Announcing Windows 10 Insider Preview Build 16232 for PC + Build 15228 for Mobile](https://blogs.windows.com/windowsexperience/2017/06/28/announcing-windows-10-insider-preview-build-16232-pc-build-15228-mobile/) for details.

### Outlook Express

Removed this non-functional code.

### Reader app

Integrated the Reader functionality into Microsoft Edge.

### Reading list

Integrated the Reading list functionality into Microsoft Edge.

### Resilient File System (ReFS)

We changed the way that ReFS works, based on the edition of Windows 10 you have. We didn't **remove** ReFS, but how you can use ReFS depends on your edition. 

If you have Windows 10 Enterprise or Windows 10 Pro for Workstations: You can create, read, and write volumes.

If you have any other edition of Windows 10: You can read and write volumes, but you can't create volumes. If you need to create volumes, upgrade to the Enterprise or Pro for Workstations edition.

### Syskey.exe

Removed this security feature. Instead, we recommend using [BitLocker](/device-security/bitlocker/bitlocker-overview). For more information, see [4025993 Syskey.exe utility is no longer supported in Windows 10 RS3 and Windows Server 2016 RS3](https://support.microsoft.com/help/4025993/syskey-exe-utility-is-no-longer-supported-in-windows-10-rs3-and-window).

### TCP Offload Engine

Removed this code. The TCP Offload Engine functionality is now available in the Stack TCP Engine. For more information, see [Why Are We Deprecating Network Performance Features (KB4014193)?](https://blogs.technet.microsoft.com/askpfeplat/2017/06/13/why-are-we-deprecating-network-performance-features-kb4014193/)

### TPM Owner Password Management

Removed this code.

## Features being considered for replacement starting after Windows Fall Creators Update

We are considering removing the following features and functionalities from the installed product image, starting with releases after Windows 10, version 1709. Eventually, we might completely remove them and replace them with other features or functionality (or, in some instances, make them available from different sources). These features and functionalities are *still available* in this release, but **you should begin planning now to either use alternate methods or to replace any applications, code, or usage that depend on these features.**

If you have feedback to share about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app).

### IIS 6 Management Compatibility

We're considering replacing the following specific DISM features:

- IIS 6 Metabase Compatibility (Web-Metabase)
- IIS 6 Management Console (Web-Lgcy-Mgmt-Console)
- IIS 6 Scripting Tools (Web-Lgcy-Scripting)
- IIS 6 WMI Compatibility (Web-WMI)

Instead of IIS 6 Metabase Compatibility (which acts as an emulation layer between IIS 6-based metabase scripts and the file-based configuration used by IIS 7 or newer versions) you should start migrating management scripts to target IIS file-based configuration directly, by using tools such as the Microsoft.Web.Administration namespace.

You should also start migration from IIS 6.0 or earlier versions, and move to the [latest version of IIS](/iis/get-started/whats-new-in-iis-10/new-features-introduced-in-iis-10).

### IIS Digest Authentication

We're considering removing the IIS Digest Authentication method. Instead, you should start using other authentication methods, such as [Client Certificate Mapping](/iis/manage/configuring-security/configuring-one-to-one-client-certificate-mappings) or [Windows Authentication](/iis/configuration/system.webServer/security/authentication/windowsAuthentication/). 

### Microsoft Paint

We're considering removing MS Paint from the basic installed product image - that means it won't be installed by default. **You'll still be able to get the app separately from the [Microsoft Store](https://www.microsoft.com/store/b/home) for free.** Alternately, you can get [Paint 3D](https://www.microsoft.com/store/p/paint-3d/9nblggh5fv99) and [3D Builder](https://www.microsoft.com/store/p/3d-builder/9wzdncrfj3t6) from the Microsoft Store today; both of these offer the same functionality as Microsoft Paint, plus additional features.

### RSA/AES Encryption for IIS

We're considering removing RSA/AES encryption because the superior [Cryptography API: Next Generation (CNG)](https://msdn.microsoft.com/library/windows/desktop/bb931354(v=vs.85).aspx) method is already available.

### Sync your settings

We're considering making changes to the back-end storage that will affect the sync process: [Enterprise State Roaming](/azure/active-directory/active-directory-windows-enterprise-state-roaming-overview) and all other users will use a single cloud storage system. Both the "Sync your settings" options and the Enterprise State Roaming feature will continue to work.
