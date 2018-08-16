---
title: Windows 10, version 1809 - Features that have been removed
description: Learn about features that will be removed or deprecated in Windows 10, version 1809, or a future release
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
author: lizap
ms.author: elizapo
ms.date: 08/31/2018
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
|Phone Companion|When you update to Windows 10, version 1809, the Phone Companion app will be removed from your PC. Use the **Phone** page in the Settings app to sync your mobile phone with your PC. It includes all the Phone Companion features.|
|limpet.exe|We're releasing the limpet.exe tool, used to access TPM for Azure connectivity, as open source (as a nuget component).|


## Features we’re no longer developing

We are no longer actively developing these features and may remove them from a future update. Some features have been replaced with other features or functionality, while others are now available from different sources. 

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

|Feature	|Instead you can use...|
|-----------|---------------------|
|Snipping tool|The snipping tool is an application included in Windows 10 that is used to capture screenshots, either the full screen or a smaller, custom "snip" of the screen. In Windows 10 version 1809 we're introducing a new universal app, Screen Sketch, that provides the same screen snipping abilities, as well as additional features. You can launch Screen Sketch directly and start a snip from there, or just press WIN + Shift + S, click the back of your pen, or press the Print Screen key (the later two you will need to turn on in Settings). We're no longer developing the snipping tool as a separate app but are instead consolidating its functionality into Screen Sketch.|
|Companion device dynamic lock APIS|The companion device framework (CDF) APIs enable wearables and other devices to unlock a PC. In Windows 19 1709 we introduced Dynamic Lock, a different method using Bluetooth to detect whether a user is present and lock or unlock the PC. Because of this, and because third party partners didn't adopt the CDF method, we're no longer developing CDF APIs.|
|OneSync service|The OneSync service synchronizes data for the Mail, Calendar, and People apps. We've added a sync engine to the Outlook app that provides the same synchronization.|



