---
title: Features and functionality removed in Windows client
description: In this article, learn about the features and functionality that have been removed or replaced in Windows client.
ms.service: windows-client
ms.localizationpriority: medium
author: mestew
ms.author: mstewart
manager: aaroncz
ms.topic: reference
ms.subservice: itpro-fundamentals
ms.date: 08/23/2024
ms.collection: 
  - highpri
  - tier1
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Features and functionality removed in Windows client

Each version of Windows client adds new features and functionality. Occasionally, new versions also remove features and functionality, often because they've added a newer option. This article provides details about the features and functionality that have been removed in Windows client.

For more information about features that might be removed in a future release, see [Deprecated features for Windows client](deprecated-features.md).

> [!NOTE]
> To get early access to new Windows builds and test these changes yourself, join the [Windows Insider program](https://insider.windows.com).

For more information about features in Windows 11, see [Feature deprecations and removals](https://www.microsoft.com/windows/windows-11-specifications#table3).

To understand the distinction between _deprecation_ and _removal_, see [Windows client features lifecycle](feature-lifecycle.md).

## Removed features and functionality

The following features and functionalities have been removed from the installed product image for Windows client. Applications or code that depend on these features won't function in the release when it was removed, or in later releases.

**The following list is subject to change and might not include every affected feature or functionality.**

|Feature    |  Details and mitigation  | Support removed |
| ----------- | --------------------- | ------ |
| WordPad <!--8254696, 8494641--> |  WordPad is removed from all editions of Windows starting in Windows 11, version 24H2 and Windows Server 2025. We recommend Microsoft Word for rich text documents like .doc and .rtf and Windows Notepad for plain text documents like .txt.  If you're a developer and need information about the affected binaries, see [Resources for deprecated features](deprecated-features-resources.md#wordpad). | October 1, 2024 |
| Alljoyn <!--8396030-->| Microsoft's implementation of AllJoyn, which included the [Windows.Devices.AllJoyn API namespace](/uwp/api/windows.devices.alljoyn), a [Win32 API](/windows/win32/api/_alljoyn/), a [management configuration service provider (CSP)](/windows/client-management/mdm/alljoynmanagement-csp), and an [Alljoyn Router Service](/windows-server/security/windows-services/security-guidelines-for-disabling-system-services-in-windows-server#alljoyn-router-service) is retired. [AllJoyn](https://openconnectivity.org/technology/reference-implementation/alljoyn/), sponsored by AllSeen Alliance, was an open source discovery and communication protocol for Internet of Things scenarios such as turning on/off lights or reading temperatures. AllSeen Alliance promoted the AllJoyn project from 2013 until 2016 when it merged with the Open Connectivity Foundation (OCF), the sponsors of [Iotivity.org](https://iotivity.org/), another protocol for Internet of Things scenarios. Customers should refer to the [Iotivity.org](https://iotivity.org/) website for alternatives such as [Iotivity Lite](https://github.com/iotivity/iotivity-lite) or [Iotivity](https://github.com/iotivity/iotivity). | October 1, 2024 |
| Update Compliance | Update Compliance, a cloud-based service for the Windows client, is retired. This service has been replaced with [Windows Update for Business reports](/windows/deployment/update/wufb-reports-overview), which provides reporting on client compliance with Microsoft updates from the Azure portal.<!--7748874--> | March 31, 2023 |
| Store uploader tool <!--7297297-->| Support has been removed for the store uploader tool. This tool is included in the Windows SDK only. The endpoint for the tool has been removed from service and the files will be removed from the SDK in the next release. | November 2022 |
| Internet Explorer 11 | The Internet Explorer 11 desktop application is [retired and out of support](https://aka.ms/IEJune15Blog) as of June 15, 2022 for certain versions of Windows 10. You can still access older, legacy sites that require Internet Explorer with Internet Explorer mode in Microsoft Edge. [Learn how](https://aka.ms/IEmodewebsite). The Internet Explorer 11 desktop application will progressively redirect to the faster, more secure Microsoft Edge browser, and will ultimately be disabled via Windows Update. [Disable IE today](/deployedge/edge-ie-disable-ie11). | June 15, 2022 |
| XDDM-based remote display driver  | Support for Windows 2000 Display Driver Model (XDDM) based remote display drivers is removed in this release. Software publishers that use an XDDM-based remote display driver should plan a migration to the WDDM driver model. For more information on implementing remote display indirect display driver, see [Updates for IddCx versions 1.4 and later](/windows-hardware/drivers/display/iddcx1.4-updates). | 21H1 |
|Microsoft Edge|The legacy version of Microsoft Edge is no longer supported after March 9, 2021. For more information, see [End of support reminder for Microsoft Edge Legacy](/lifecycle/announcements/edge-legacy-eos-details). | 21H1 |
|MBAE service metadata|The MBAE app experience is replaced by an MO UWP app. Metadata for the MBAE service is removed. | 20H2 |
| Connect app | The **Connect** app for wireless projection using Miracast is no longer installed by default, but is available as an optional feature. To add the feature, select **Settings** > **System** > **Optional features** > **Add a feature** (Windows 10) or **Settings** > **System** > **Optional features** > **Add an optional feature** (Windows 11), and then add the **Wireless Display** feature. <!-- OSADO-45535220 --> | 2004 |
| Rinna and Japanese Address suggestion | The Rinna and Japanese Address suggestion service for Microsoft Japanese Input Method Editor (IME) ended on August 13, 2020. For more information, see [Rinna and Japanese Address suggestion will no longer be offered](https://support.microsoft.com/help/4576767/windows-10-rinna-and-japanese-address-suggestion) | 2004 |
| Windows To Go | Windows To Go was announced as deprecated in Windows 10, version 1903 and is removed in this release. | 2004 |
| Mobile Plans and Messaging apps | Both apps are still supported, but are now distributed in a different way. OEMs can now include these apps in Windows images for cellular enabled devices.  The apps are removed for noncellular devices.| 2004 |
| PNRP APIs| The Peer Name Resolution Protocol (PNRP) cloud service was shut down in Windows 10, version 1809. We're planning to complete the removal process by removing the corresponding APIs. </br></br> **[Update - February 2024]**: The corresponding Windows APIs will be removed in Windows 11, version 24H2. DNS-SD and mDNS are recommended alternatives for implementing service discovery scenarios. <!--8786119-->  | 1909 |
| Taskbar settings roaming | Roaming of taskbar settings is removed in this release. This feature was announced as no longer being developed in Windows 10, version 1903. | 1909 |
| Desktop messaging app doesn't offer messages sync |  The messaging app on Desktop has a sync feature that can be used to sync SMS text messages received from Windows Mobile and keep a copy of them on the Desktop. The sync feature has been removed from all devices. Due to this change, you'll only be able to access messages from the device that received the message.  | 1903 |
|Business Scanning also called Distributed Scan Management (DSM)|We're removing this secure scanning and scanner management capability - there are no devices that support this feature.| 1809 |
|[FontSmoothing setting](/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-visualeffects-fontsmoothing) in unattend.xml|The FontSmoothing setting lets you specify the font antialiasing strategy to use across the system. We've changed Windows 10 to use [ClearType](/typography/cleartype/) by default, so we're removing this setting as it is no longer necessary. If you include this setting in the unattend.xml file, it will be ignored.| 1809 |
|Hologram app|We've replaced the Hologram app with the [Mixed Reality Viewer](https://support.microsoft.com/help/4041156/windows-10-mixed-reality-help). If you would like to create 3D word art, you can still do that in Paint 3D and view your art in VR or HoloLens with the Mixed Reality Viewer.| 1809 |
|limpet.exe|We're releasing the limpet.exe tool, used to access TPM for Azure connectivity, as open source.| 1809 |
|Phone Companion|When you update to Windows 10, version 1809, the Phone Companion app will be removed from your PC. Use the **Phone** page in the Settings app to sync your mobile phone with your PC. It includes all the Phone Companion features.| 1809 |
|Future updates through [Windows Embedded Developer Update](/previous-versions/windows/embedded/ff770079(v=winembedded.60)) for Windows Embedded Standard 7-SP1 (WES7-SP1) and Windows Embedded Standard 8 (WES8)|We're no longer publishing new updates to the WEDU server. Instead, download any new updates from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx). [Learn how](https://techcommunity.microsoft.com/t5/Windows-Embedded/Change-to-the-Windows-Embedded-Developer-Update/ba-p/285704) to get updates from the catalog.| 1809 |
|Groove Music Pass|[We ended the Groove streaming music service and music track sales through the Microsoft Store in 2017](https://support.microsoft.com/help/4046109/groove-music-and-spotify-faq). The Groove app is being updated to reflect this change. You can still use Groove Music to play the music on your PC. You can use Spotify or other music services to stream music on Windows 10, or to buy music to own.| 1803 |
|People - Suggestions will no longer include unsaved contacts for non-Microsoft accounts|Manually save the contact details for people you send mail to or get mail from.| 1803 |
|Language control in the Control Panel|    Use the Settings app to change your language settings.| 1803 |
|HomeGroup|We're removing [HomeGroup](https://support.microsoft.com/help/17145) but not your ability to share printers, files, and folders.<br><br>When you update to Windows 10, version 1803, you won't see HomeGroup in File Explorer, the Control Panel, or Troubleshoot (**Settings > Update & Security > Troubleshoot**). Any printers, files, and folders that you shared using HomeGroup **will continue to be shared**.<br><br>Instead of using HomeGroup, you can now share printers, files and folders by using features that are built into Windows 10: <br>- [Share your network printer](https://www.bing.com/search?q=share+printer+windows+10) <br>- [Share files in File Explorer](https://support.microsoft.com/help/4027674/windows-10-share-files-in-file-explorer) | 1803 |
|**Connect to suggested open hotspots** option in Wi-Fi settings |We previously [disabled the **Connect to suggested open hotspots** option](https://privacy.microsoft.com/windows-10-open-wi-fi-hotspots) and are now removing it from the Wi-Fi settings page. You can manually connect to free wireless hotspots with **Network & Internet** settings, from the taskbar or Control Panel, or by using Wi-Fi Settings (for mobile devices).| 1803 |
|XPS Viewer|We're changing the way you get XPS Viewer. In Windows 10, version 1709 and earlier versions, the app is included in the installation image. If you have XPS Viewer and you update to Windows 10, version 1803, there's no action required. You'll still have XPS Viewer. <br><br>However, if you install Windows 10, version 1803, on a new device (or as a clean installation), you can [install XPS Viewer from **Apps and Features** in the Settings app](/windows/application-management/add-apps-and-features) or through [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities). If you had XPS Viewer in Windows 10, version 1709, but manually removed it before updating, you'll need to manually reinstall it.| 1803 |
|3D Builder app   | No longer installed by default. Consider using Print 3D and Paint 3D in its place. However, 3D Builder is still available for download from the Windows Store.| 1709 |
|Apndatabase.xml   | For more information about the replacement database, see the following Hardware Dev Center articles: <br> [MO Process to update COSA](/windows-hardware/drivers/mobilebroadband/planning-your-apn-database-submission) <br> [COSA FAQ](/windows-hardware/drivers/mobilebroadband/cosa---faq) | 1709 |
|Enhanced Mitigation Experience Toolkit (EMET)   |Use of this feature will be blocked. Consider using [Exploit Protection](https://blogs.windows.com/windowsexperience/2017/06/28/) as a replacement. | 1709 |
|Outlook Express  | This legacy application will be removed due to lack of functionality. | 1709 |
|Reader app  | Functionality to be integrated into Microsoft Edge. | 1709 |
|Reading List | Functionality to be integrated into Microsoft Edge. | 1709 |
|Screen saver functionality in Themes   | This functionality is disabled in Themes, and classified as **Removed** in this table. Screen saver functionality in Group Policies, Control Panel, and Sysprep continues to be functional. Lock screen features and policies are preferred. | 1709 |
|Syskey.exe | Removing this nonsecure security feature. We recommend that users use BitLocker instead. For more information, see [4025993 Syskey.exe utility is no longer supported in Windows 10 RS3 and Windows Server 2016 RS3](/troubleshoot/windows-server/identity/syskey-exe-utility-is-no-longer-supported). | 1709 |
|TCP Offload Engine | Removing this legacy code. This functionality was previously transitioned to the Stack TCP Engine. For more information, see [Why Are We Deprecating Network Performance Features?](https://blogs.technet.microsoft.com/askpfeplat/2017/06/13/why-are-we-deprecating-network-performance-features-kb4014193)| 1709 |
|Tile Data Layer |To be replaced by the Tile Store.| 1709 |
|Resilient File System (ReFS) (added: August 17, 2017)| Creation ability will be available in the following editions only: Windows 10 Enterprise and Windows 10 Pro for Workstations.  Creation ability will be removed from all other editions. All other editions will have Read and Write ability. | 1709 |
|By default, Flash autorun in Microsoft Edge is turned off. | Use the Click-to-Run (C2R) option instead. (This setting can be changed by the user.) | 1703 |
|Interactive Service Detection Service| See [Interactive Services](/windows/win32/services/interactive-services) for guidance on how to keep software up to date. | 1703 |
|Microsoft Paint | This application won't be available for languages that aren't on the [full localization list](https://www.microsoft.com/windows/windows-10-specifications#Windows-10-localization). | 1703 |
|NPN support in TLS | This feature is superseded by Application-Layer Protocol Negotiation (ALPN). | 1703 |
|Windows Information Protection "AllowUserDecryption" policy | Starting in Windows 10, version 1703, AllowUserDecryption is no longer supported. | 1703 |
|WSUS for Windows Mobile  | Updates are being transitioned to the new Unified Update Platform (UUP) | 1703 |
