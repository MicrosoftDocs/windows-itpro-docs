---
title: Windows 10, version 1809 - Features that have been removed
description: Learn about features that will be removed or deprecated in Windows 10, version 1809, or a future release
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.date: 11/16/2018
ms.reviewer: 
manager: laurawi
ms.topic: article
---
# Features removed or planned for replacement starting with Windows 10, version 1809

> Applies to: Windows 10, version 1809

Each release of Windows 10 adds new features and functionality; we also occasionally remove features and functionality, usually because we've added a better option. Here are the details about the features and functionalities that we removed in Windows 10, version 1809.   

> [!TIP]
> - You can get early access to Windows 10 builds by joining the [Windows Insider program](https://insider.windows.com) - this is a great way to test feature changes.
> - Have questions about other releases? Check out the information for [Windows 10, version 1803](windows-10-1803-removed-features.md), [Windows 10, version 1709](windows-10-fall-creators-deprecation.md), and [Windows 10, version 1703](windows-10-creators-update-deprecation.md).

**The list is subject to change and might not include every affected feature or functionality.** 

## Features we removed in this release

We're removing the following features and functionalities from the installed product image in Windows 10, version 1809. Applications or code that depend on these features won't function in this release unless you use an alternate method.   

|Feature	|Instead you can use...|
|-----------|--------------------
|Business Scanning, also called Distributed Scan Management (DSM)|We're removing this secure scanning and scanner management capability - there are no devices that support this feature.|
|[FontSmoothing setting](https://docs.microsoft.com/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-visualeffects-fontsmoothing) in unattend.xml|The FontSmoothing setting let you specify the font antialiasing strategy to use across the system. We've changed Windows 10 to use [ClearType](https://docs.microsoft.com/typography/cleartype/) by default, so we're removing this setting as it is no longer necessary. If you include this setting in the unattend.xml file, it'll be ignored.|
|Hologram app|We've replaced the Hologram app with the [Mixed Reality Viewer](https://support.microsoft.com/help/4041156/windows-10-mixed-reality-help). If you would like to create 3D word art, you can still do that in Paint 3D and view your art in VR or Hololens with the Mixed Reality Viewer.|
|limpet.exe|We're releasing the limpet.exe tool, used to access TPM for Azure connectivity, as open source.|
|Phone Companion|When you update to Windows 10, version 1809, the Phone Companion app will be removed from your PC. Use the **Phone** page in the Settings app to sync your mobile phone with your PC. It includes all the Phone Companion features.|
|Future updates through [Windows Embedded Developer Update](https://docs.microsoft.com/previous-versions/windows/embedded/ff770079\(v=winembedded.60\)) for Windows Embedded Standard 7-SP1 (WES7-SP1) and Windows Embedded Standard 8 (WES8)|We’re no longer publishing new updates to the WEDU server. Instead, you may secure any new updates from the [Microsoft Update Catalog](http://www.catalog.update.microsoft.com/Home.aspx). [Learn how](https://techcommunity.microsoft.com/t5/Windows-Embedded/Change-to-the-Windows-Embedded-Developer-Update/ba-p/285704) to get updates from the catalog.|

## Features we’re no longer developing

We're no longer actively developing these features and may remove them from a future update. Some features have been replaced with other features or functionality, while others are now available from different sources. 

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

|Feature	|Instead you can use...|
|-----------|---------------------|
|Companion device dynamic lock APIS|The companion device framework (CDF) APIs enable wearables and other devices to unlock a PC. In Windows 10, version 1709, we introduced [Dynamic Lock](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-features#dynamic-lock), including an inbox method using Bluetooth to detect whether a user is present and lock or unlock the PC. Because of this, and because third party partners didn't adopt the CDF method, we're no longer developing CDF Dynamic Lock APIs.|
|OneSync service|The OneSync service synchronizes data for the Mail, Calendar, and People apps. We've added a sync engine to the Outlook app that provides the same synchronization.|
|Snipping Tool|The Snipping Tool is an application included in Windows 10 that is used to capture screenshots, either the full screen or a smaller, custom "snip" of the screen. In Windows 10, version 1809, we're [introducing a new universal app, Snip & Sketch](https://blogs.windows.com/windowsexperience/2018/05/03/announcing-windows-10-insider-preview-build-17661/#8xbvP8vMO0lF20AM.97), that provides the same screen snipping abilities, as well as additional features. You can launch Snip & Sketch directly and start a snip from there, or just press WIN + Shift + S. Snip & Sketch can also be launched from the “Screen snip” button in the Action Center. We're no longer developing the Snipping Tool as a separate app but are instead consolidating its functionality into Snip & Sketch.|


