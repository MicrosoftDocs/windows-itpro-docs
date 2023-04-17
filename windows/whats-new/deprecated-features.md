---
title: Deprecated features in the Windows client
description: Review the list of features that Microsoft is no longer developing in Windows 10 and Windows 11.
ms.date: 12/05/2022
ms.prod: windows-client
ms.technology: itpro-fundamentals
ms.localizationpriority: medium
author: mestew
ms.author: mstewart
manager: aaroncz
ms.topic: conceptual
ms.collection:
  - highpri
  - tier1
---

# Deprecated features for Windows client

**Applies to**

- Windows 10
- Windows 11

Each version of Windows client adds new features and functionality. Occasionally, new versions also remove features and functionality, often because they've added a newer option. This article provides details about the features and functionalities that are no longer being developed in Windows client. For more information about features that have been removed, see [Windows features removed](removed-features.md).

For more information about features in Windows 11, see [Feature deprecations and removals](https://www.microsoft.com/windows/windows-11-specifications#table3).

To understand the distinction between *deprecation* and *removal*, see [Windows client features lifecycle](feature-lifecycle.md).

The features in this article are no longer being actively developed, and might be removed in a future update. Some features have been replaced with other features or functionality and some are now available from other sources.

## Deprecated features

**The following list is subject to change and might not include every affected feature or functionality.**

> [!NOTE]
> If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).

|Feature    |  Details and mitigation  | Deprecation announced |
| ----------- | --------------------- | ---- |
| Microsoft Support Diagnostic Tool (MSDT) <!--6968128--> | [MSDT](/windows-server/administration/windows-commands/msdt) is deprecated and will be removed in a future release of Windows. MSDT is used to gather diagnostic data for analysis by support professionals. For more information, see [Resources for deprecated features](deprecated-features-resources.md) | January 2023 |
| Universal Windows Platform (UWP) Applications for 32-bit Arm <!--7116112-->| This change is applicable only to devices with an Arm processor, for example Snapdragon processors from Qualcomm. If you have a PC built with a processor from Intel or AMD, this content is not applicable. If you are not sure which type of processor you have, check **Settings** > **System** > **About**.</br> </br> Support for 32-bit Arm versions of applications will be removed in a future release of Windows 11. After this change, for the small number of applications affected, app features might be different and you might notice a difference in performance. For more technical details about this change, see [Update app architecture from Arm32 to Arm64](/windows/arm/arm32-to-arm64). | January 2023 |
| Update Compliance <!--7260188-->| [Update Compliance](/windows/deployment/update/update-compliance-monitor), a cloud-based service for the Windows client, is no longer being developed. This service has been replaced with [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview), which provides reporting on client compliance with Microsoft updates from the Azure portal. | November 2022|
| Windows Information Protection <!-- 6010051 --> | [Windows Information Protection](/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip) will no longer be developed in future versions of Windows. For more information, see [Announcing sunset of Windows Information Protection (WIP)](https://go.microsoft.com/fwlink/?linkid=2202124).<br> <br>For your data protection needs, Microsoft recommends that you use [Microsoft Purview Information Protection](/microsoft-365/compliance/information-protection) and [Microsoft Purview Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp). | July 2022 |
| BitLocker To Go Reader | **Note: BitLocker to Go as a feature is still supported.**<br>Reading of BitLocker-protected removable drives ([BitLocker To Go](/windows/security/information-protection/bitlocker/bitlocker-to-go-faq)) from Windows XP or Windows Vista in later operating systems is deprecated and might be removed in a future release of Windows client.<br>The following items might not be available in a future release of Windows client:<br>- ADMX policy: **Allow access to BitLocker-protected removable data drives from earlier versions of Windows**<br>- Command line parameter: [`manage-bde -DiscoveryVolumeType`](/windows-server/administration/windows-commands/manage-bde-on) (-dv)<br>- Catalog file: **c:\windows\BitLockerDiscoveryVolumeContents**<br>- BitLocker 2 Go Reader app: **bitlockertogo.exe** and associated files  | 21H1 |
| Personalization roaming | Roaming of Personalization settings (including wallpaper, slideshow, accent colors, and lock screen images) is no longer being developed and might be removed in a future release. | 21H1 |
| Windows Management Instrumentation Command line (WMIC) tool. | The WMIC tool is deprecated in Windows 10, version 21H1 and the 21H1 General Availability Channel release of Windows Server. This tool is superseded by [Windows PowerShell for WMI](/powershell/scripting/learn/ps101/07-working-with-wmi). Note: This deprecation only applies to the [command-line management tool](/windows/win32/wmisdk/wmic). WMI itself isn't affected. | 21H1 |
| Timeline | Starting in July 2021, if you have your activity history synced across your devices through your Microsoft account (MSA), you can't upload new activity in Timeline. For more information, see [Get help with timeline](https://support.microsoft.com/windows/get-help-with-timeline-febc28db-034c-d2b0-3bbe-79aa0c501039).| 20H2 |
| Microsoft Edge | The legacy version of Microsoft Edge is no longer being developed.| 2004 |
| Companion Device Framework | The [Companion Device Framework](/windows-hardware/design/device-experiences/windows-hello-companion-device-framework) is no longer under active development.| 2004 |
| Dynamic Disks | The [Dynamic Disks](/windows/win32/fileio/basic-and-dynamic-disks#dynamic-disks) feature is no longer being developed. This feature will be fully replaced by [Storage Spaces](/windows-server/storage/storage-spaces/overview) in a future release.| 2004 |
| Language Community tab in Feedback Hub | The Language Community tab will be removed from the Feedback Hub. The standard feedback process: [Feedback Hub - Feedback](feedback-hub://?newFeedback=true&feedbackType=2) is the recommended way to provide translation feedback. | 1909 |
| My People / People in the Shell |  My People is no longer being developed. It may be removed in a future update. | 1909 |
| Package State Roaming (PSR) |  PSR will be removed in a future update. PSR allows non-Microsoft developers to access roaming data on devices, enabling developers of UWP applications to write data to Windows and synchronize it to other instantiations of Windows for that user. <br>&nbsp;<br>The recommended replacement for PSR is [Azure App Service](/azure/app-service/). Azure App Service is widely supported, well documented, reliable, and supports cross-platform/cross-ecosystem scenarios such as iOS, Android and web. <br>&nbsp;<br>PSR was removed in Windows 11.| 1909 |
| XDDM-based remote display driver  | The Remote Desktop Services uses a Windows Display Driver Model (WDDM) based Indirect Display Driver (IDD) for a single session remote desktop. The support for Windows 2000 Display Driver Model (XDDM) based remote display drivers will be removed in a future release. Independent Software Vendors that use an XDDM-based remote display driver should plan a migration to the WDDM driver model. For more information on implementing remote display indirect display driver, check out [Updates for IddCx versions 1.4 and later](/windows-hardware/drivers/display/iddcx1.4-updates). | 1903 |
| Taskbar settings roaming | Roaming of taskbar settings is no longer being developed and we plan to remove this capability in a future release. | 1903 |
| Wi-Fi WEP and TKIP | Since the 1903 release, a warning message has appeared when connecting to Wi-Fi networks secured with WEP or TKIP (which aren't as secure as those using WPA2 or WPA3). In a future release, any connection to a Wi-Fi network using these old ciphers will be disallowed. Wi-Fi routers should be updated to use AES ciphers, available with WPA2 or WPA3. | 1903 |
| Windows To Go | Windows To Go is no longer being developed. <br><br>The feature doesn't support feature updates and therefore doesn't enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.|  1903 |
| Print 3D app | 3D Builder is the recommended 3D printing app. To 3D print objects on new Windows devices, customers must first install 3D Builder from the Store.| 1903 |
|Companion device dynamic lock APIS|The companion device framework (CDF) APIs enable wearables and other devices to unlock a PC. In Windows 10, version 1709, we introduced [Dynamic Lock](/windows/security/identity-protection/hello-for-business/hello-feature-dynamic-lock), including an inbox method using Bluetooth to detect whether a user is present and lock or unlock the PC. Because of this reason, and because non-Microsoft partners didn't adopt the CDF method, we're no longer developing CDF Dynamic Lock APIs.| 1809 |
|OneSync service|The OneSync service synchronizes data for the Mail, Calendar, and People apps. We've added a sync engine to the Outlook app that provides the same synchronization.| 1809 |
|Snipping Tool|The Snipping Tool is an application included in Windows 10 that is used to capture screenshots, either the full screen or a smaller, custom "snip" of the screen. In Windows 10, version 1809, we're [introducing a new universal app, Snip & Sketch](https://blogs.windows.com/windowsexperience/2018/05/03/announcing-windows-10-insider-preview-build-17661/#8xbvP8vMO0lF20AM.97). It provides the same screen snipping abilities plus other features. You can launch Snip & Sketch directly and start a snip from there, or just press WIN + Shift + S. Snip & Sketch can also be launched from the "Screen snip" button in the Action Center. We're no longer developing the Snipping Tool as a separate app but are instead consolidating its functionality into Snip & Sketch.| 1809 |
|[Software Restriction Policies](/windows-server/identity/software-restriction-policies/software-restriction-policies) in Group Policy|Instead of using the Software Restriction Policies through Group Policy, you can use [AppLocker](/windows/security/threat-protection/applocker/applocker-overview) or [Windows Defender Application Control](/windows/security/threat-protection/windows-defender-application-control) to control which apps users can access and what code can run in the kernel.| 1803 |
|[Offline symbol packages](/windows-hardware/drivers/debugger/debugger-download-symbols) (Debug symbol MSIs)|We're no longer making the symbol packages available as a downloadable MSI. Instead, the [Microsoft Symbol Server is moving to be an Azure-based symbol store](/archive/blogs/windbg/update-on-microsofts-symbol-server). If you need the Windows symbols, connect to the Microsoft Symbol Server to cache your symbols locally or use a manifest file with SymChk.exe on a computer with internet access.| 1803 |
|Windows Help Viewer (WinHlp32.exe)|All Windows help information is [available online](https://support.microsoft.com/products/windows?os=windows-10). The Windows Help Viewer is no longer supported in Windows 10. For more information, see [Error opening Help in Windows-based programs: "Feature not included" or "Help not supported"](https://support.microsoft.com/topic/error-opening-help-in-windows-based-programs-feature-not-included-or-help-not-supported-3c841463-d67c-6062-0ee7-1a149da3973b).| 1803 |
|MBAE service metadata|The MBAE app experience is replaced by an MO UWP app. For more information, see [Developer guide for creating service metadata](/windows-hardware/drivers/mobilebroadband/developer-guide-for-creating-service-metadata) | 1803 |
|Contacts feature in File Explorer|We're no longer developing the Contacts feature or the corresponding [Windows Contacts API](/previous-versions/windows/desktop/wincontacts/-wincontacts-entry-point). Instead, you can use the People app in Windows 10 to maintain your contacts.| 1803 |
|Phone Companion|Use the **Phone** page in the Settings app. In Windows 10, version 1709, we added the new **Phone** page to help you sync your mobile phone with your PC. It includes all the Phone Companion features.| 1803 |
|IPv4/6 Transition Technologies (6to4, ISATAP, Teredo, and Direct Tunnels)|6to4 has been disabled by default since Windows 10, version 1607 (the Anniversary Update), ISATAP has been disabled by default since Windows 10, version 1703 (the Creators Update), Teredo has been disabled since Windows 10, version 1803. The Direct Tunnels feature has always been disabled by default. Use native IPv6 support instead.| 1803 |
|[Layered Service Providers](/windows/win32/winsock/categorizing-layered-service-providers-and-applications)|Layered Service Providers haven't been developed since Windows 8 and Windows Server 2012. Use the [Windows Filtering Platform](/windows/win32/fwp/windows-filtering-platform-start-page) instead. When you upgrade from an older version of Windows, any layered service providers you're using aren't migrated; you'll need to reinstall them after upgrading.| 1803 |
|Business Scanning| This feature is also called Distributed Scan Management (DSM) **(Added 05/03/2018)**<br>&nbsp;<br>The [Scan Management functionality](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd759124(v=ws.11)) was introduced in Windows 7 and enabled secure scanning and the management of scanners in an enterprise. We're no longer investing in this feature, and there are no devices available that support it.| 1803 |
|IIS 6 Management Compatibility*  | We recommend that users use alternative scripting tools and a newer management console. | 1709 |
|IIS Digest Authentication | We recommend that users use alternative authentication methods.| 1709 |
|RSA/AES Encryption for IIS   | We recommend that users use CNG encryption provider. | 1709 |
|Screen saver functionality in Themes   | Disabled in Themes. Screen saver functionality in Group Policies, Control Panel, and Sysprep continues to be functional. Lock screen features and policies are preferred. | 1709 |
|Sync your settings (updated: August 17, 2017) | Back-end changes: In future releases, the back-end storage for the current sync process will change. A single cloud storage system will be used for Enterprise State Roaming and all other users. The **Sync your settings** options and the Enterprise State Roaming feature will continue to work. | 1709 |
|System Image Backup (SIB) Solution|This feature is also known as the **Backup and Restore (Windows 7)** legacy control panel. For full-disk backup solutions, look for a third-party product from another software vendor. You can also use [OneDrive](/onedrive/) to sync data files with Microsoft 365.| 1709 |
|TLS RC4 Ciphers  |To be disabled by default. For more information, see [TLS (Schannel SSP) changes in Windows 10 and Windows Server 2016](/windows-server/security/tls/tls-schannel-ssp-changes-in-windows-10-and-windows-server)| 1709 |
|Trusted Platform Module (TPM) Owner Password Management |This functionality within TPM.msc will be migrated to a new user interface.| 1709 |
|Trusted Platform Module (TPM): TPM.msc and TPM Remote Management  | To be replaced by a new user interface in a future release. | 1709 |
|Trusted Platform Module (TPM) Remote Management |This functionality within TPM.msc will be migrated to a new user interface. | 1709 |
|Windows Hello for Business deployment that uses Microsoft Configuration Manager   |Windows Server 2016 Active Directory Federation Services - Registration Authority (ADFS RA) deployment is simpler and provides a better user experience and a more deterministic certificate enrollment experience. | 1709 |
|Windows PowerShell 2.0  | Applications and components should be migrated to PowerShell 5.0+. | 1709 |
|Apndatabase.xml | Apndatabase.xml is being replaced by the COSA database. Therefore, some constructs will no longer function. This replacement includes Hardware ID, incoming SMS messaging rules in mobile apps, a list of privileged apps in mobile apps, autoconnect order, APN parser, and CDMAProvider ID. | 1703 |
|Tile Data Layer | The [Tile Data Layer](/troubleshoot/windows-client/shell-experience/troubleshoot-start-menu-errors#symptom-start-menu-issues-with-tile-data-layer-corruption) database stopped development in Windows 10, version 1703. | 1703 |
|TLS DHE_DSS ciphers DisabledByDefault| [TLS RC4 Ciphers](/windows-server/security/tls/tls-schannel-ssp-changes-in-windows-10-and-windows-server) will be disabled by default in this release. | 1703 |
|TCPChimney | TCP Chimney Offload is no longer being developed.  See [Performance Tuning Network Adapters](/windows-server/networking/technologies/network-subsystem/net-sub-performance-tuning-nics). | 1703 |
|IPsec Task Offload| [IPsec Task Offload](/windows-hardware/drivers/network/task-offload) versions 1 and 2 are no longer being developed and shouldn't be used. | 1703 |
|`wusa.exe /uninstall /kb:####### /quiet`|The `wusa` tool usage to quietly uninstall an update has been deprecated. The uninstall command with `/quiet` switch fails with event ID 8 in the Setup event log. Uninstalling updates quietly could be a security risk because malicious software could quietly uninstall an update in the background without user intervention.|1507 <br /> Applies to Windows Server 2016 and Windows Server 2019.|


