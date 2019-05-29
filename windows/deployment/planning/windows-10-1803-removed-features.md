---
title: Windows 10, version 1803 - Features that have been removed
description: Learn about features that will be removed or deprecated in Windows 10, version 1803, or a future release
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
author: lizap
ms.author: elizapo
ms.date: 08/16/2018
ms.topic: article
---
# Features removed or planned for replacement starting with Windows 10, version 1803

> Applies to: Windows 10, version 1803

Each release of Windows 10 adds new features and functionality; we also occasionally remove features and functionality, usually because we've added a better option. Here are the details about the features and functionalities that we removed in Windows 10, version 1803 (also called Windows 10 April 2018 Update).   

> [!TIP]
> - You can get early access to Windows 10 builds by joining the [Windows Insider program](https://insider.windows.com) - this is a great way to test feature changes.
> - Have questions about other releases? Check out the information for [Windows 10, version 1703](windows-10-creators-update-deprecation.md), and [Windows 10, version 1709](windows-10-fall-creators-deprecation.md).

**The list is subject to change and might not include every affected feature or functionality.** 

## Features we removed in this release

We've removed the following features and functionalities from the installed product image in Windows 10, version 1803. Applications or code that depend on these features won't function in this release unless you use an alternate method.   

|Feature	|Instead you can use...|
|-----------|--------------------
|Groove Music Pass|[We ended the Groove streaming music service and music track sales through the Microsoft Store in 2017](https://support.microsoft.com/help/4046109/groove-music-and-spotify-faq). The Groove app is being updated to reflect this change. You can still use Groove Music to play the music on your PC or to stream music from OneDrive. You can use Spotify or other music services to stream music on Windows 10, or to buy music to own.|
|People - Suggestions will no longer include unsaved contacts for non-Microsoft accounts|Manually save the contact details for people you send mail to or get mail from.|
|Language control in the Control Panel|	Use the Settings app to change your language settings.|
|HomeGroup|We are removing [HomeGroup](https://support.microsoft.com/help/17145) but not your ability to share printers, files, and folders.<br><br>When you update to Windows 10, version 1803, you won't see HomeGroup in File Explorer, the Control Panel, or Troubleshoot (**Settings > Update & Security > Troubleshoot**). Any printers, files, and folders that you shared using HomeGroup **will continue to be shared**.<br><br>Instead of using HomeGroup, you can now share printers, files and folders by using features that are built into Windows 10: <br>- [Share your network printer](https://www.bing.com/search?q=share+printer+windows+10) <br>- [Share files in File Explorer](https://support.microsoft.com/help/4027674/windows-10-share-files-in-file-explorer) |
|**Connect to suggested open hotspots** option in Wi-Fi settings |We previously [disabled the **Connect to suggested open hotspots** option](https://privacy.microsoft.com/windows-10-open-wi-fi-hotspots) and are now removing it from the Wi-Fi settings page. You can manually connect to free wireless hotspots with **Network & Internet** settings, from the taskbar or Control Panel, or by using Wi-Fi Settings (for mobile devices).|
|XPS Viewer|We're changing the way you get XPS Viewer. In Windows 10, version 1709 and earlier versions, the app is included in the installation image. If you have XPS Viewer and you update to Windows 10, version 1803, there's no action required. You'll still have XPS Viewer. <br><br>However, if you install Windows 10, version 1803, on a new device (or as a clean installation), you may need to [install XPS Viewer from **Apps and Features** in the Settings app](https://docs.microsoft.com/windows/application-management/add-apps-and-features) or through [Features on Demand](https://docs.microsoft.com/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities). If you had XPS Viewer in Windows 10, version 1709, but manually removed it before updating, you'll need to manually reinstall it.|


## Features we’re no longer developing

We are no longer actively developing these features and may remove them from a future update. Some features have been replaced with other features or functionality, while others are now available from different sources. 

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

|Feature	|Instead you can use...|
|-----------|---------------------|
|[Software Restriction Policies](https://docs.microsoft.com/windows-server/identity/software-restriction-policies/software-restriction-policies) in Group Policy|Instead of using the Software Restriction Policies through Group Policy, you can use [AppLocker](https://docs.microsoft.com/windows/security/threat-protection/applocker/applocker-overview) or [Windows Defender Application Control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control) to control which apps users can access and what code can run in the kernel.|
|[Offline symbol packages](https://docs.microsoft.com/windows-hardware/drivers/debugger/debugger-download-symbols) (Debug symbol MSIs)|We're no longer making the symbol packages available as a downloadable MSI. Instead, the [Microsoft Symbol Server is moving to be an Azure-based symbol store](https://blogs.msdn.microsoft.com/windbg/2017/10/18/update-on-microsofts-symbol-server/). If you need the Windows symbols, connect to the Microsoft Symbol Server to cache your symbols locally or use a manifest file with SymChk.exe on a computer with internet access.|
|Windows Help Viewer (WinHlp32.exe)|All Windows help information is [available online](https://support.microsoft.com/products/windows?os=windows-10). The Windows Help Viewer is no longer supported in Windows 10. If for any reason you see an error message about "help not supported," possibly when using a non-Microsoft application, read [this support article](https://support.microsoft.com/help/917607/error-opening-help-in-windows-based-programs-feature-not-included-or-h) for additional information and any next steps.|
|Contacts feature in File Explorer|We're no longer developing the Contacts feature or the corresponding [Windows Contacts API](https://msdn.microsoft.com/library/ff800913.aspx). Instead, you can use the People app in Windows 10 to maintain your contacts.|
|Phone Companion|Use the **Phone** page in the Settings app. In Windows 10, version 1709, we added the new **Phone** page to help you sync your mobile phone with your PC. It includes all the Phone Companion features.|
|IPv4/6 Transition Technologies (6to4, ISATAP, and Direct Tunnels)|6to4 has been disabled by default since Windows 10, version 1607 (the Anniversary Update), ISATAP has been disabled by default since Windows 10, version 1703 (the Creators Update), and Direct Tunnels has always been disabled by default. Please use native IPv6 support instead.|
|[Layered Service Providers](https://msdn.microsoft.com/library/windows/desktop/bb513664)|Layered Service Providers have been deprecated since Windows 8 and Windows Server 2012. Use the [Windows Filtering Platform](https://msdn.microsoft.com/library/windows/desktop/aa366510) instead. When you upgrade from an older version of Windows, any layered service providers you're using aren't migrated; you'll need to re-install them after upgrading.|
|Business Scanning, also called Distributed Scan Management (DSM) **(Added 05/03/2018)**|The [Scan Management functionality](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd759124(v=ws.11)) was introduced in Windows 7 and enabled secure scanning and the management of scanners in an enterprise. We're no longer investing in this feature, and there are no devices available that support it.|
