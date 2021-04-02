---
title: Windows 10 - Features that have been removed
description: In this article, learn about the features and functionality that have been removed or replaced in Windows 10.
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.author: greglin
manager: laurawi
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Features and functionality removed in Windows 10

> Applies to: Windows 10

Each version of Windows 10 adds new features and functionality; occasionally we also remove features and functionality, often because we've added a better option. Below are the details about the features and functionalities that we removed in Windows 10. **The list below is subject to change and might not include every affected feature or functionality.** 

For information about features that might be removed in a future release, see [Windows 10 features we’re no longer developing](windows-10-deprecated-features.md).

> [!NOTE]
> Join the [Windows Insider program](https://insider.windows.com) to get early access to new Windows 10 builds and test these changes yourself.

The following features and functionalities have been removed from the installed product image for Windows 10. Applications or code that depend on these features won't function in the release when it was removed, or in later releases.

|Feature    |  Details and mitigation  | Removed in version |
| ----------- | --------------------- | ------ |
|Microsoft Edge|The legacy version of Microsoft Edge is no longer supported after March 9th, 2021. For more information, see [End of support reminder for Microsoft Edge Legacy](/lifecycle/announcements/edge-legacy-eos-details). | 21H1 |
|MBAE service metadata|The MBAE app experience is replaced by an MO UWP app. Metadata for the MBAE service is removed. | 20H2 |
| Connect app | The **Connect** app for wireless projection using Miracast is no longer installed by default, but is available as an optional feature. To install the app, click on **Settings** > **Apps** > **Optional features** > **Add a feature** and then install the **Wireless Display** app. | 2004 |
| Rinna and Japanese Address suggestion | The Rinna and Japanese Address suggestion service for Microsoft Japanese Input Method Editor (IME) ended on August 13th, 2020. For more information, see [Rinna and Japanese Address suggestion will no longer be offered](https://support.microsoft.com/help/4576767/windows-10-rinna-and-japanese-address-suggestion) | 2004 |
| Cortana | Cortana has been updated and enhanced in the Windows 10 May 2020 Update. With [these changes](/windows/whats-new/whats-new-windows-10-version-2004#cortana), some previously available consumer skills such as music, connected home, and other non-Microsoft skills are no longer available. | 2004 |
| Windows To Go | Windows To Go was announced as deprecated in Windows 10, version 1903 and is removed in this release. | 2004 |
| Mobile Plans and Messaging apps | Both apps are still supported, but are now distributed in a different way. OEMs can now include these apps in Windows images for cellular enabled devices.  The apps are removed for non-cellular devices.| 2004 |
| PNRP APIs| ​The Peer Name Resolution Protocol (PNRP) cloud service was removed in Windows 10, version 1809. We are planning to complete the removal process by removing the corresponding APIs.  | 1909 |
| Taskbar settings roaming | Roaming of taskbar settings is removed in this release. This feature was announced as no longer being developed in Windows 10, version 1903. | 1909 |
| Desktop messaging app doesn't offer messages sync |  The messaging app on Desktop has a sync feature that can be used to sync SMS text messages received from Windows Mobile and keep a copy of them on the Desktop. The sync feature has been removed from all devices. Due to this change, you will only be able to access messages from the device that received the message.  | 1903 |
|Business Scanning, also called Distributed Scan Management (DSM)|We're removing this secure scanning and scanner management capability - there are no devices that support this feature.| 1809 |
|[FontSmoothing setting](/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-visualeffects-fontsmoothing) in unattend.xml|The FontSmoothing setting let you specify the font antialiasing strategy to use across the system. We've changed Windows 10 to use [ClearType](/typography/cleartype/) by default, so we're removing this setting as it is no longer necessary. If you include this setting in the unattend.xml file, it'll be ignored.| 1809 |
|Hologram app|We've replaced the Hologram app with the [Mixed Reality Viewer](https://support.microsoft.com/help/4041156/windows-10-mixed-reality-help). If you would like to create 3D word art, you can still do that in Paint 3D and view your art in VR or Hololens with the Mixed Reality Viewer.| 1809 |
|limpet.exe|We're releasing the limpet.exe tool, used to access TPM for Azure connectivity, as open source.| 1809 |
|Phone Companion|When you update to Windows 10, version 1809, the Phone Companion app will be removed from your PC. Use the **Phone** page in the Settings app to sync your mobile phone with your PC. It includes all the Phone Companion features.| 1809 |
|Future updates through [Windows Embedded Developer Update](/previous-versions/windows/embedded/ff770079(v=winembedded.60)) for Windows Embedded Standard 7-SP1 (WES7-SP1) and Windows Embedded Standard 8 (WES8)|We’re no longer publishing new updates to the WEDU server. Instead, you may secure any new updates from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx). [Learn how](https://techcommunity.microsoft.com/t5/Windows-Embedded/Change-to-the-Windows-Embedded-Developer-Update/ba-p/285704) to get updates from the catalog.| 1809 |
|Groove Music Pass|[We ended the Groove streaming music service and music track sales through the Microsoft Store in 2017](https://support.microsoft.com/help/4046109/groove-music-and-spotify-faq). The Groove app is being updated to reflect this change. You can still use Groove Music to play the music on your PC. You can use Spotify or other music services to stream music on Windows 10, or to buy music to own.| 1803 |
|People - Suggestions will no longer include unsaved contacts for non-Microsoft accounts|Manually save the contact details for people you send mail to or get mail from.| 1803 |
|Language control in the Control Panel|    Use the Settings app to change your language settings.| 1803 |
|HomeGroup|We are removing [HomeGroup](https://support.microsoft.com/help/17145) but not your ability to share printers, files, and folders.<br><br>When you update to Windows 10, version 1803, you won't see HomeGroup in File Explorer, the Control Panel, or Troubleshoot (**Settings > Update & Security > Troubleshoot**). Any printers, files, and folders that you shared using HomeGroup **will continue to be shared**.<br><br>Instead of using HomeGroup, you can now share printers, files and folders by using features that are built into Windows 10: <br>- [Share your network printer](https://www.bing.com/search?q=share+printer+windows+10) <br>- [Share files in File Explorer](https://support.microsoft.com/help/4027674/windows-10-share-files-in-file-explorer) | 1803 |
|**Connect to suggested open hotspots** option in Wi-Fi settings |We previously [disabled the **Connect to suggested open hotspots** option](https://privacy.microsoft.com/windows-10-open-wi-fi-hotspots) and are now removing it from the Wi-Fi settings page. You can manually connect to free wireless hotspots with **Network & Internet** settings, from the taskbar or Control Panel, or by using Wi-Fi Settings (for mobile devices).| 1803 |
|XPS Viewer|We're changing the way you get XPS Viewer. In Windows 10, version 1709 and earlier versions, the app is included in the installation image. If you have XPS Viewer and you update to Windows 10, version 1803, there's no action required. You'll still have XPS Viewer. <br><br>However, if you install Windows 10, version 1803, on a new device (or as a clean installation), you may need to [install XPS Viewer from **Apps and Features** in the Settings app](/windows/application-management/add-apps-and-features) or through [Features on Demand](/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities). If you had XPS Viewer in Windows 10, version 1709, but manually removed it before updating, you'll need to manually reinstall it.| 1803 |
|3D Builder app   | No longer installed by default. Consider using Print 3D and Paint 3D in its place. However, 3D Builder is still available for download from the Windows Store.| 1709 |
|Apndatabase.xml   | For more information about the replacement database, see the following Hardware Dev Center articles: <br> [MO Process to update COSA](/windows-hardware/drivers/mobilebroadband/planning-your-apn-database-submission) <br> [COSA FAQ](/windows-hardware/drivers/mobilebroadband/cosa---faq) | 1709 |
|Enhanced Mitigation Experience Toolkit (EMET)   |Use of this feature will be blocked. Consider using [Exploit Protection](https://blogs.windows.com/windowsexperience/2017/06/28/) as a replacement. | 1709 |
|Outlook Express  | This legacy application will be removed due to lack of functionality. | 1709 |
|Reader app  | Functionality to be integrated into Microsoft Edge. | 1709 |
|Reading List | Functionality to be integrated into Microsoft Edge. | 1709 |
|Screen saver functionality in Themes   | This functionality is disabled in Themes, and classified as **Removed** in this table. Screen saver functionality in Group Policies, Control Panel, and Sysprep continues to be functional. Lock screen features and policies are preferred. | 1709 |
|Syskey.exe | Removing this nonsecure security feature. We recommend that users use BitLocker instead. For more information, see [4025993 Syskey.exe utility is no longer supported in Windows 10 RS3 and Windows Server 2016 RS3](https://support.microsoft.com/help/4025993/syskey-exe-utility-is-no-longer-supported-in-windows-10-rs3-and-window). | 1709 |
|TCP Offload Engine | Removing this legacy code. This functionality was previously transitioned to the Stack TCP Engine. For more information, see [Why Are We Deprecating Network Performance Features?](https://blogs.technet.microsoft.com/askpfeplat/2017/06/13/why-are-we-deprecating-network-performance-features-kb4014193)| 1709 |
|Tile Data Layer |To be replaced by the Tile Store.| 1709 |
|Resilient File System (ReFS) (added: August 17, 2017)| Creation ability will be available in the following editions only: Windows 10 Enterprise and Windows 10 Pro for Workstations.  Creation ability will be removed from all other editions. All other editions will have Read and Write ability. | 1709 |
|Apps Corner| This Windows 10 mobile application is removed in the version 1703 release. | 1703 |
|By default, Flash autorun in Edge is turned off. | Use the Click-to-Run (C2R) option instead. (This setting can be changed by the user.) | 1703 |
|Interactive Service Detection Service| See [Interactive Services](/windows/win32/services/interactive-services) for guidance on how to keep software up to date. | 1703 |
|Microsoft Paint | This application will not be available for languages that are not on the [full localization list](https://www.microsoft.com/windows/windows-10-specifications#Windows-10-localization). | 1703 |
|NPN support in TLS | This feature is superseded by Application-Layer Protocol Negotiation (ALPN). | 1703 |
|Windows Information Protection "AllowUserDecryption" policy | Starting in Windows 10, version 1703, AllowUserDecryption is no longer supported. | 1703 |
|WSUS for Windows Mobile  | Updates are being transitioned to the new Unified Update Platform (UUP) | 1703 |