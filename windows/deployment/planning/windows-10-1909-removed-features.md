---
title: Windows 10, version 1909 - Features that have been removed
description: Learn about features that will be removed or deprecated in Windows 10, version 1903, or a future release
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
manager: laurawi
ms.author: greglin
ms.topic: article
---
# Features removed or planned for replacement starting with Windows 10, version 1909

> Applies to: Windows 10, version 1909

Each version of Windows 10 adds new features and functionality; occasionally we also remove features and functionality, often because we've added a better option. Below are the details about the features and functionalities that we removed in Windows 10, version 1909. **The list below is subject to change and might not include every affected feature or functionality.** 

> [!NOTE]
> Join the [Windows Insider program](https://insider.windows.com) to get early access to new Windows 10 builds and test these changes yourself.

## Features we removed or will remove soon

The following features and functionalities are removed from the installed product image for Windows 10, version 1903, or are planned for removal in an upcoming release. Applications or code that depend on these features won't function in this release unless you use another method.


|Feature    |  Details  |
| ----------- | --------------------- |
| Video project OneDrive syncing in Photos | The option to upload and projects in OneDrive in when using the Video Editor in the Photos app is being removed.|
| My People / People in the Shell |  My People is deprecated. It may be removed in a future update. | |
| TFS1/TFS2 IME | NEW Japanese/Simplified Chinese/Traditional Chinese/Korean IME (Windows components you can add to enable typing text for those Asian languages) called TSF3 IME will replace legacy version of IME called TSF1 or TSF2 IME.  Once TSF3 IME successfully replace legacy version of TSF1/TSF2 IME, we plan to deperecate/remove leagacy version. ​|
| XDDM-based remote display driver | Starting with the 1903 release the Remote Desktop Services uses a Windows Display Driver Model (WDDM) based Indirect Display Driver (IDD) for a single session remote desktop. The support for Windows 2000 Display Driver Model (XDDM) based remote display drivers will be removed in a future release. Independent Software Vendors that use XDDM-based remote display driver should plan a migration to the WDDM driver model. For more information on implementing remote indirect display driver ISVs can reach out to [rdsdev@microsoft.com](mailto:rdsdev@microsoft.com). |

## Features we’re no longer developing

We're no longer actively developing these features and may remove them from a future update. Some features have been replaced with other features or functionality, while others are now available from different sources.

If you have feedback about the proposed replacement of any of these features, you can use the [Feedback Hub app](https://support.microsoft.com/help/4021566/windows-10-send-feedback-to-microsoft-with-feedback-hub-app). 

|Feature    |  Details  |
| ----------- | --------------------- |
| Bing IME | Bing IME is still downloadable but is no longer being developed. |
| Taskbar settings roaming | Roaming of taskbar settings is no longer being developed and we plan to remove this capability in a future release. |
| Wi-Fi WEP and TKIP | In this release, a warning message will appear when connecting to Wi-Fi networks secured with WEP or TKIP, which are not as secure as those using WPA2 or WPA3. In a future release, any connection to a Wi-Fi network using these old ciphers will be disallowed. Wi-Fi routers should be updated to use AES ciphers, available with WPA2 or WPA3. |
| Windows To Go | Windows To Go is no longer being developed. <br><br>The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.|
| Print 3D app |G oing forward, 3D Builder is the recommended 3D printing app. To 3D print objects on new Windows devices, customers must first install 3D Builder from the Store.|