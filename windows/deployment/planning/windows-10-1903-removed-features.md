---
title: Windows 10, version 1903 - Features that have been removed
description: Learn about features that will be removed or deprecated in Windows 10, version 1903, or a future release
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.topic: article
---
# Features removed or planned for replacement starting with Windows 10, version 1903

> Applies to: Windows 10, version 1903

Each release of Windows 10 adds new features and functionality; occasionally we also remove features and functionality, usually because we've added a better option. Below are the details about the features and functionalities that we removed in Windows 10, version 1903. **The list below is subject to change and might not include every affected feature or functionality.** 

**Note**: Join the [Windows Insider program](https://insider.windows.com) to get early access to new Windows 10 builds and test these changes yourself.

## Features we removed or will remove soon

The following features and functionalities are removed from the installed product image for Windows 10, version 1903, or are planned for removal in an upcoming release. Applications or code that depend on these features won't function in this release unless you use another method.   

|Feature	|Status|Details|
|-----------|--------------------|---------
|Cortana will be removed from Windows 10 in all non-English/US markets. Cortana will still be available for en-us markets. |Pending removal|A new Cortana UWP app is being developed.  Precise dates for release not yet available.|
|Cortana on Android is removing all Cortana cross-device functionality from it's application in November.  |Removed |This will remove all of the mirrored notifications and Cortana natural language skills for texting or calling a mobile device and finding their phone. The **Your Phone** applicaiton on PC is offering a partial replacement for text notifications from Android phones but not the full spectrum of features. |
|XDDM-based Remote Desktop driver|Removed|The default driver for remote desktop was switched to the IDD for a single-user scenarios. We plan to use IDD as default for all use cases and anounce deprecation of XP Display Driver Model (XDDM) based RD fdriver|
|Desktop messaging app doesn't offer messages sync |Removed|The messaging app on Desktop has a sync feature that can be used to sync SMS text messages received from Windows Mobile and keep a copy of them on the Desktop. We will be removing the messaging app from Desktop devices in a future release.  When sync is removed, you will only be able to access messages from the device that received the message.|
|Print 3D app|Removed|The Print 3D app will no longer be installed automatically in a future release of Windows. It will remain available for download from the Store. To 3D print objects on a new Windows devices, you must first install the app (1P or 3P app) from the Store.|
|My People / People|Pending removal|The **My People** experience will be removed in a future release.|
|UCS log collection tool|Pending removal|The UCS log collection tool is being replaced by the Feedback hub|
|Wi-Fi WEP and TKIP|Removed|Wi-Fi networks that are secured with passwords using older WEP and TKIP protocals are not as secure as those secured with new protocols such as WPA, WPA2, and soon WPA3. In this release, connecting to WEP or TKIP network will show a warning message that the network is not secure. In a future release any connection to a Wi-Fi network using these old protocols will be disallowed. |

## Features we’re no longer developing

We're no longer actively developing these features and may remove them from a future update. Some features have been replaced with other features or functionality, while others are now available from different sources. 

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

|Feature	|Details|
|-----------|---------------------|
|Windows To Go|Windows To Go is no longer being developed. <br><br>The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.|

