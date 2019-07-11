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

New features are added in each version of Windows 10. Occasionally features are also removed, often because a better option has been added. Details about features that have been removed in Windows 10, version 1903 are listed below. **The list is subject to change and might not include every affected feature.** 

**Note**: Join the [Windows Insider program](https://insider.windows.com) to get early access to new Windows 10 builds and test these changes yourself.

## Features we removed or will remove soon

The following features are removed from the installed product image for Windows 10, version 1903, or are planned for removal in an upcoming release. Apps depending on these features won't function in this release.   


|                      Feature                      |                                                                                                                                                                                                                                                                                    Details                                                                                                                                                                                                                                                                                    |
|---------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|         XDDM-based remote display driver          | Starting with this release, Remote Desktop Services uses an Indirect Display Driver (IDD)—based on Windows Display Driver Model (WDDM)—a single session remote desktop. The support for remote display drivers based on Windows 2000 Display Driver Model (XDDM) will be removed in a future release. Independent Software Vendors (ISVs) that use XDDM-based remote display driver should plan a migration to the WDDM driver model. For more information on implementing remote indirect display driver, ISVs can reach out to [rdsdev@microsoft.com](mailto:rdsdev@microsoft.com). |
| The Messaging app on desktop doesn't offer messages sync |                                                                                                                          The desktop version of the Messaging app has a sync feature that can be used to sync SMS text messages received from Windows Mobile and keep a copy of them on the desktop. The sync feature has been removed. Because of this change, you will only be able to access messages from the device that have received them.                                                                                                                          |

## Features we’re no longer developing

We're no longer developing these features, and may remove them in a future release. Some features have been replaced with other features , while others are now available from different sources. 

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

|Feature    |Details|
|-----------|---------------------|
| Taskbar settings roaming| Roaming of taskbar settings is no longer being developed and we plan to disable this capability in a future release|
|Wi-Fi WEP and TKIP|In this release, a warning message appears when connecting to Wi-Fi networks secured with WEP or TKIP, which are not as secure as those using WPA2 or WPA3. In a future release, any connection to a Wi-Fi network using these old ciphers will be disallowed. Wi-Fi routers should be updated to use AES ciphers, available with WPA2 or WPA3. |
|Windows To Go|Windows To Go is no longer developed. It does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB flash drive that OEMs no longer produce.|
|Print 3D app|Going forward, 3D Builder is the recommended 3D printing app. To 3D print objects on new Windows devices, customers must first install 3D Builder from the Store.|

