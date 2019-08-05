---
title: Windows 10, version 1709 removed features
description: Learn about features that will be removed in Windows 10, version 1709
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
author: greg-lindsay
manager: laurawi
ms.topic: article
---
# Features that are removed or deprecated in Windows 10, version 1709

> Applies to: Windows 10, version 1709

The following features and functionalities in the Windows 10, version 1709 are either removed from the product in the current release (*Removed*) or are not in active development and might be removed in future releases.

This list is intended to help customers consider these removals and deprecations for their own planning. The list is subject to change and may not include every deprecated feature or functionality.

For more information about a listed feature or functionality and its replacement, see the documentation for that feature. You can also follow the provided links in this table to see additional resources. 

| Feature  | Removed | Not actively developed |
|----------|---------|------------|
|**3D Builder app**  <br> No longer installed by default. Consider using Print 3D and Paint 3D in its place. However, 3D Builder is still available for download from the Windows Store. | X | |
|**Apndatabase.xml**  <br>    For more information about the replacement database, see the following Hardware Dev Center articles: <br> [MO Process to update COSA](/windows-hardware/drivers/mobilebroadband/planning-your-apn-database-submission) <br> [COSA FAQ](/windows-hardware/drivers/mobilebroadband/cosa---faq) | X | |
|**Enhanced Mitigation Experience Toolkit (EMET)**  <br>Use will be blocked. Consider using the [Exploit Protection](https://blogs.windows.com/windowsexperience/2017/06/28/announcing-windows-10-insider-preview-build-16232-pc-build-15228-mobile/#fMH3bUDAb5HEstZ5.97) feature as a replacement.| X | |
|**IIS 6 Management Compatibility**  <br> We recommend that users use alternative scripting tools and a newer management console. | | X |
|**IIS Digest Authentication**  <br> We recommend that users use alternative authentication methods.| | X |
|**Microsoft Paint**  <br> Will be available through the Windows Store. Functionality integrated into Paint 3D.| | X |
|**Outlook Express**  <br>  Removing this non-functional legacy code.| X | |
|**Reader app**  <br>  Functionality to be integrated into Microsoft Edge.| X | |
|**Reading List** <br> Functionality to be integrated into Microsoft Edge.| X | |
|**Resilient File System (ReFS)**  <br>  Creation ability will be available in the following editions only: Windows 10 Enterprise and Windows 10 Pro for Workstations.  Creation ability will be removed from all other editions. All other editions will have Read and Write ability. <br> (added: August 17, 2017)| | X |
|**RSA/AES Encryption for IIS**  <br>  We recommend that users use CNG encryption provider.| | X |
|**Screen saver functionality in Themes** <br>  Disabled in Themes (classified as **Removed** in this table). Screen saver functionality in Group Policies, Control Panel, and Sysprep continues to be functional. Lockscreen features and policies are preferred. | X | X |
|**Sync your settings** <br> Back-end changes: In future releases, the back-end storage for the current sync process will change. A single cloud storage system will be used for Enterprise State Roaming and all other users. The "Sync your settings" options and the Enterprise State Roaming feature will continue to work. <br>(updated: August 17, 2017) |  | X |
|**Syskey.exe** <br> Removing this nonsecure security feature. We recommend that users use BitLocker instead. For more information, see the following Knowledge Base article: [4025993 Syskey.exe utility is no longer supported in Windows 10 RS3 and Windows Server 2016 RS3](https://support.microsoft.com/help/4025993/syskey-exe-utility-is-no-longer-supported-in-windows-10-rs3-and-window)| X | |
|**System Image Backup (SIB) Solution** <br> We recommend that users use full-disk backup solutions from other vendors.| | X |
|**TCP Offload Engine** <br> Removing this legacy code. This functionality was previously transitioned to the Stack TCP Engine. For more information, see the following PFE Platform Blog article: [Why Are We Deprecating Network Performance Features?](https://blogs.technet.microsoft.com/askpfeplat/2017/06/13/why-are-we-deprecating-network-performance-features-kb4014193)| X ||
|**Tile Data Layer** <br> To be replaced by the Tile Store.| X ||
|**TLS RC4 Ciphers** <br> To be disabled by default. For more information, see the following Windows IT Center topic: [TLS (Schannel SSP) changes in Windows 10 and Windows Server 2016](/windows-server/security/tls/tls-schannel-ssp-changes-in-windows-10-and-windows-server)|| X|
|**Trusted Platform Module (TPM) Owner Password Management**  <br>This legacy code to be removed.|| X |
|**Trusted Platform Module (TPM): TPM.msc and TPM Remote Management** <br> To be replaced by a new user interface in a future release.| | X |
|**Trusted Platform Module (TPM) Remote Management** <br>This legacy code to be removed in a future release.|| X |
|**Windows Hello for Business deployment that uses System Center Configuration Manager** <br>  Windows Server 2016 Active Directory Federation Services – Registration Authority (ADFS RA) deployment is simpler and provides a better user experience and a more deterministic certificate enrollment experience.|| X |
|**Windows PowerShell 2.0** <br> Applications and components should be migrated to PowerShell 5.0+.| | X |
