---
title: Windows 10 features we’re no longer developing
description: Review the list of features that are no longer being developed in Windows 10
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.author: greglin
manager: laurawi
ms.topic: article
---
# Windows 10 features we’re no longer developing

> Applies to: Windows 10

Each version of Windows 10 adds new features and functionality; occasionally we also remove features and functionality, often because we've added a better option. Below are the details about the features and functionalities that are no longer being developed in Windows 10. 

**The following list is subject to change and might not include every affected feature or functionality.**

For information about features that have been removed, see [Features removed](features-lifecycle.md#features-removed).

## Features and capabilities we’re no longer developing

The features described below are longer being actively developed, and might be removed in a future update. Some features have been replaced with other features or functionality and some are now available from other sources.

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

<!-- | Fresh Paint app | The Fresh Paint app will be removed from the Microsoft Store on Windows 10 in a future release. | -->

|Feature    |  Details  | 
| ----------- | --------------------- | 
| Hyper-V vSwitch on LBFO | In a future release, the Hyper-V vSwitch will no longer have the capability to be bound to an LBFO team.  Instead, it must be bound via [Switch Embedded Teaming](https://docs.microsoft.com/windows-server/virtualization/hyper-v-virtual-switch/rdma-and-switch-embedded-teaming#bkmk_sswitchembedded) (SET).|
| Language Community tab in Feedback Hub | We are planning to remove the Language Community tab in Feedback Hub. Users will be able to provide translation feedback using the normal feedback process: [Feedback Hub - Feedback](feedback-hub://?newFeedback=true&feedbackType=2).  |
| My People / People in the Shell |  My People is deprecated. It may be removed in a future update. |
| TFS1/TFS2 IME |  TSF1 and TSF2 IME will be replaced by TSF3 IME in a future release. [Text Services Framework](https://docs.microsoft.com/windows/win32/tsf/what-is-text-services-framework) (TFS) enables language technologies. TSF IME are Windows components that you can add to enable typing text for Japanese, Simplified Chinese, Traditional Chinese, and Korean languages. ​|
| Bing IME | Bing IME is still downloadable but is no longer being developed. | 
| Taskbar settings roaming | Roaming of taskbar settings is no longer being developed and we plan to remove this capability in a future release. | 
| Wi-Fi WEP and TKIP | Since the 1903 release, a warning message has appeared when connecting to Wi-Fi networks secured with WEP or TKIP (which are not as secure as those using WPA2 or WPA3). In a future release, any connection to a Wi-Fi network using these old ciphers will be disallowed. Wi-Fi routers should be updated to use AES ciphers, available with WPA2 or WPA3. | 
| Windows To Go | Windows To Go is no longer being developed. <br><br>The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.| 
| Print 3D app | Going forward, 3D Builder is the recommended 3D printing app. To 3D print objects on new Windows devices, customers must first install 3D Builder from the Store.| 
|Companion device dynamic lock APIS|The companion device framework (CDF) APIs enable wearables and other devices to unlock a PC. In Windows 10, version 1709, we introduced [Dynamic Lock](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-features#dynamic-lock), including an inbox method using Bluetooth to detect whether a user is present and lock or unlock the PC. Because of this, and because third party partners didn't adopt the CDF method, we're no longer developing CDF Dynamic Lock APIs.|
|OneSync service|The OneSync service synchronizes data for the Mail, Calendar, and People apps. We've added a sync engine to the Outlook app that provides the same synchronization.|
|Snipping Tool|The Snipping Tool is an application included in Windows 10 that is used to capture screenshots, either the full screen or a smaller, custom "snip" of the screen. In Windows 10, version 1809, we're [introducing a new universal app, Snip & Sketch](https://blogs.windows.com/windowsexperience/2018/05/03/announcing-windows-10-insider-preview-build-17661/#8xbvP8vMO0lF20AM.97), that provides the same screen snipping abilities, as well as additional features. You can launch Snip & Sketch directly and start a snip from there, or just press WIN + Shift + S. Snip & Sketch can also be launched from the “Screen snip” button in the Action Center. We're no longer developing the Snipping Tool as a separate app but are instead consolidating its functionality into Snip & Sketch.|
|[Software Restriction Policies](https://docs.microsoft.com/windows-server/identity/software-restriction-policies/software-restriction-policies) in Group Policy|Instead of using the Software Restriction Policies through Group Policy, you can use [AppLocker](https://docs.microsoft.com/windows/security/threat-protection/applocker/applocker-overview) or [Windows Defender Application Control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control) to control which apps users can access and what code can run in the kernel.|
|[Offline symbol packages](https://docs.microsoft.com/windows-hardware/drivers/debugger/debugger-download-symbols) (Debug symbol MSIs)|We're no longer making the symbol packages available as a downloadable MSI. Instead, the [Microsoft Symbol Server is moving to be an Azure-based symbol store](https://blogs.msdn.microsoft.com/windbg/2017/10/18/update-on-microsofts-symbol-server/). If you need the Windows symbols, connect to the Microsoft Symbol Server to cache your symbols locally or use a manifest file with SymChk.exe on a computer with internet access.|
|Windows Help Viewer (WinHlp32.exe)|All Windows help information is [available online](https://support.microsoft.com/products/windows?os=windows-10). The Windows Help Viewer is no longer supported in Windows 10. If for any reason you see an error message about "help not supported," possibly when using a non-Microsoft application, read [this support article](https://support.microsoft.com/help/917607/error-opening-help-in-windows-based-programs-feature-not-included-or-h) for additional information and any next steps.|
|Contacts feature in File Explorer|We're no longer developing the Contacts feature or the corresponding [Windows Contacts API](https://msdn.microsoft.com/library/ff800913.aspx). Instead, you can use the People app in Windows 10 to maintain your contacts.|
|Phone Companion|Use the **Phone** page in the Settings app. In Windows 10, version 1709, we added the new **Phone** page to help you sync your mobile phone with your PC. It includes all the Phone Companion features.|
|IPv4/6 Transition Technologies (6to4, ISATAP, and Direct Tunnels)|6to4 has been disabled by default since Windows 10, version 1607 (the Anniversary Update), ISATAP has been disabled by default since Windows 10, version 1703 (the Creators Update), and Direct Tunnels has always been disabled by default. Please use native IPv6 support instead.|
|[Layered Service Providers](https://msdn.microsoft.com/library/windows/desktop/bb513664)|Layered Service Providers have been deprecated since Windows 8 and Windows Server 2012. Use the [Windows Filtering Platform](https://msdn.microsoft.com/library/windows/desktop/aa366510) instead. When you upgrade from an older version of Windows, any layered service providers you're using aren't migrated; you'll need to re-install them after upgrading.|
|Business Scanning| This feature is also called Distributed Scan Management (DSM) **(Added 05/03/2018)**<br>&nbsp;<br>The [Scan Management functionality](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd759124(v=ws.11)) was introduced in Windows 7 and enabled secure scanning and the management of scanners in an enterprise. We're no longer investing in this feature, and there are no devices available that support it.|
|IIS 6 Management Compatibility*  | We recommend that users use alternative scripting tools and a newer management console. |
|IIS Digest Authentication | We recommend that users use alternative authentication methods.|
|Microsoft Paint | Will be available through the Windows Store. Functionality integrated into Paint 3D. |
|Resilient File System (ReFS) (added: August 17, 2017)| Creation ability will be available in the following editions only: Windows 10 Enterprise and Windows 10 Pro for Workstations.  Creation ability will be removed from all other editions. All other editions will have Read and Write ability. |
|RSA/AES Encryption for IIS   | We recommend that users use CNG encryption provider. |
|Screen saver functionality in Themes   | Disabled in Themes. Screen saver functionality in Group Policies, Control Panel, and Sysprep continues to be functional. Lockscreen features and policies are preferred. |
|Sync your settings (updated: August 17, 2017) | Back-end changes: In future releases, the back-end storage for the current sync process will change. A single cloud storage system will be used for Enterprise State Roaming and all other users. The "Sync your settings" options and the Enterprise State Roaming feature will continue to work. |
|System Image Backup (SIB) Solution  | We recommend that users use full-disk backup solutions from other vendors. |
|TLS RC4 Ciphers  |To be disabled by default. For more information, see the following Windows IT Center topic: [TLS (Schannel SSP) changes in Windows 10 and Windows Server 2016](/windows-server/security/tls/tls-schannel-ssp-changes-in-windows-10-and-windows-server)|
|Trusted Platform Module (TPM) Owner Password Management |This functionality within TPM.msc will be migrated to a new user interface.|
|Trusted Platform Module (TPM): TPM.msc and TPM Remote Management  | To be replaced by a new user interface in a future release. |
|Trusted Platform Module (TPM) Remote Management |This functionality within TPM.msc will be migrated to a new user interface. |
|Windows Hello for Business deployment that uses System Center Configuration Manager   |Windows Server 2016 Active Directory Federation Services – Registration Authority (ADFS RA) deployment is simpler and provides a better user experience and a more deterministic certificate enrollment experience. |
|Windows PowerShell 2.0  | Applications and components should be migrated to PowerShell 5.0+. |
|Apndatabase.xml | Apndatabase.xml is being replaced by the COSA database. Therefore, some constructs will no longer function. This includes Hardware ID, incoming SMS messaging rules in mobile apps, a list of privileged apps in mobile apps, autoconnect order, APN parser, and CDMAProvider ID. |
|Tile Data Layer | The [Tile Data Layer](https://docs.microsoft.com/windows/configuration/start-layout-troubleshoot#symptom-start-menu-issues-with-tile-data-layer-corruption) database was deprecated in Windows 10, version 1703. |
|TLS DHE_DSS ciphers DisabledByDefault|  |
|TCPChimney | TCP Chimney Offload is deprecated.  See (Performance Tuning Network Adapters)[https://docs.microsoft.com/windows-server/networking/technologies/network-subsystem/net-sub-performance-tuning-nics]. |
|IPsec Task Offload| [IPsec Task Offload](https://docs.microsoft.com/windows-hardware/drivers/network/task-offload) versions 1 and 2 are deprecated and should not be used. |