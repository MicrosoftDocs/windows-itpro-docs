---
title: Windows 10 Fall Creators Update - Features removed or planned for removal
description: Learn about features that will be removed in Windows 10 Fall Creators Update (version 1709)
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: high
ms.sitesec: library
author: lizap
ms.date: 10/17/2017
---
# Features removed or planned for replacement in Windows 10 Fall Creators Update (version 1709)

> Applies to: Windows 10, version 1709

The following features and functionalities in the Windows 10 Fall Creators Update (version 1709) are either removed from the product in the current release or are not in active development and are being considered for potential replacement in subsequent releases.

This list is intended to help customers consider these removals and planned replacements for their own planning. **The list is subject to change and may not include every affected feature or functionality.**

For more information about a listed feature or functionality and its replacement, see the documentation for that feature. You can also follow the provided links to see additional resources. 

## Features removed from Windows 10 Fall Creators Update
The following features and functionalities have been removed from the installed product image in this release of Windows 10, version 1709. Applications, code, or usage that depend on these features will not function in this release unless you employ an alternate method. 

### 3D Builder
No longer installed by default. Consider using Print 3D and Paint 3D in its place. However, [3D Builder](https://www.microsoft.com/store/p/3d-builder/9wzdncrfj3t6) is still available for download from the Microsoft Store.

### Apndatabase.xml
For more information about the replacement database, see the following Hardware Dev Center articles:
- [Planning your COSA/APN database submission](/windows-hardware/drivers/mobilebroadband/planning-your-apn-database-submission)
- [COSA – FAQ](/windows-hardware/drivers/mobilebroadband/cosa---faq)

### Enhanced Mitigation Experience Toolkit (EMET)
Use will be blocked. Consider using the [Exploit Protection feature of Windows Defender Exploit Guard](/windows/threat-protection/windows-defender-exploit-guard/exploit-protection-exploit-guard) as a replacement. See the blog post [Announcing Windows 10 Insider Preview Build 16232 for PC + Build 15228 for Mobile](https://blogs.windows.com/windowsexperience/2017/06/28/announcing-windows-10-insider-preview-build-16232-pc-build-15228-mobile/) for details.

### Outlook Express
Removing this non-functional legacy code.

### Reader app
Functionality to be integrated into Microsoft Edge.

### Reading list
Functionality to be integrated into Microsoft Edge.

### Resilient File System (ReFS)
Creation ability will be available in the following editions only: Windows 10 Enterprise and Windows 10 Pro for Workstations.

Creation ability will be removed from all other editions.  All other editions will have Read and Write ability.

### Syskey.exe
Removing this nonsecure security feature. We recommend that users use [BitLocker](/device-security/bitlocker/bitlocker-overview) instead. For more information, see [4025993 Syskey.exe utility is no longer supported in Windows 10 RS3 and Windows Server 2016 RS3](https://support.microsoft.com/help/4025993/syskey-exe-utility-is-no-longer-supported-in-windows-10-rs3-and-window).

### TCP Offload Engine
Removing this legacy code. This functionality was previously transitioned to the Stack TCP Engine. For more information, see [Why Are We Deprecating Network Performance Features (KB4014193)?](https://blogs.technet.microsoft.com/askpfeplat/2017/06/13/why-are-we-deprecating-network-performance-features-kb4014193/)

### TPM Owner Password Management
This legacy code to be removed.

## Features being considered for replacement starting with Windows Fall Creators Update
The following features and functionalities are being considered for replacement starting with Windows 10, version 1709. Eventually, they may be completely removed from the installed product image and replaced by other features or functionality (or installable from other sources), but they are still available in this release, sometimes with certain functionality removed. **You should begin planning now to employ alternate methods or to, in the future, replace any applications, code, or usage that depend on these features.**

If you have feedback to share about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app).

### IIS 6 Management Compatibility
Specific DISM features being considered for replacement are:

- IIS 6 Metabase Compatibility (Web-Metabase)
- IIS 6 Management Console (Web-Lgcy-Mgmt-Console)
- IIS 6 Scripting Tools (Web-Lgcy-Scripting)
- IIS 6 WMI Compatibility (Web-WMI)

Instead, you should start migration to IIS 7.0, which offers superior console and scripting tools. See [Installing IIS 7.0](https://docs.microsoft.com/en-us/iis/install/installing-iis-7/installing-iis-from-the-command-line) for details about installing and using IIS 7.0.

### IIS Digest Authentication
This authentication method is planned for replacement because it has security issues. Instead, you should start using other authentication methods such as [Client Certificate Mapping](/iis/manage/configuring-security/configuring-one-to-one-client-certificate-mappings) or [Windows Authentication](/iis/configuration/system.webServer/security/authentication/windowsAuthentication/). 

### Microsoft Paint
The Microsoft Paint app is being considered for removal from the basic installed product image. **You'll still be able to get the app separately from the [Microsoft Store](https://www.microsoft.com/store/b/home) for free.** Alternately, you can get [Paint 3D](https://www.microsoft.com/store/p/paint-3d/9nblggh5fv99) and [3D Builder](https://www.microsoft.com/store/p/3d-builder/9wzdncrfj3t6) from the Microsoft Store today; both of these offer the same functionality as Microsoft Paint, plus additional features.

### RSA/AES Encryption for IIS 
We recommend that users use [CNG encryption provider](https://msdn.microsoft.com/library/windows/desktop/bb931354(v=vs.85).aspx).

### Sync your settings
Back-end changes: In future releases, the back-end storage for the current sync process will change. A single cloud storage system will be used for [Enterprise State Roaming](/azure/active-directory/active-directory-windows-enterprise-state-roaming-overview) and all other users. The "Sync your settings" options and the Enterprise State Roaming feature will continue to work.
