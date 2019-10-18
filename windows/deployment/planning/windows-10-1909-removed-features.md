---
title: Windows 10, version 1909 - Features that have been removed
description: Learn about features that will be removed in Windows 10, version 1903
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
# Features removed starting with Windows 10, version 1909

> Applies to: Windows 10, version 1909

Each version of Windows 10 adds new features and functionality; occasionally we also remove features and functionality, often because we've added a better option. Below are the details about the features and functionalities that we removed in Windows 10, version 1909. **The list below is subject to change and might not include every affected feature or functionality.** 

For information about features that might be removed in a future release, see [Windows 10 features we’re no longer developing](windows-10-deprecated-features.md)

> [!NOTE]
> Join the [Windows Insider program](https://insider.windows.com) to get early access to new Windows 10 builds and test these changes yourself.

## Features we removed

The following features and functionalities are removed from the installed product image for Windows 10, version 1903, or are planned for removal in an upcoming release. Applications or code that depend on these features won't function in this release unless you use another method.

|Feature    |  Details  |
| ----------- | --------------------- |
| Video project OneDrive syncing in Photos | The option to upload and projects in OneDrive in when using the Video Editor in the Photos app is being removed.|
| Cortana voice commands (VCD) | After upgrading and the new Cortana UWP app is deployed, users will no longer be able to use custom voice commands to invoke apps locally using Cortana. |
| PNRP APIs| ​The PNRP cloud service was removed in Windows 10, version 1809. We are planning to complete the removal process by removing the corresponding APIs.  |
| PSR and SSF | PSR and SSF are planned for removal in this release.​ |
| XDDM-based remote display driver | Starting with the 1903 release the Remote Desktop Services uses a Windows Display Driver Model (WDDM) based Indirect Display Driver (IDD) for a single session remote desktop. The support for Windows 2000 Display Driver Model (XDDM) based remote display drivers will be removed in a future release. Independent Software Vendors that use XDDM-based remote display driver should plan a migration to the WDDM driver model. For more information on implementing remote indirect display driver ISVs can reach out to [rdsdev@microsoft.com](mailto:rdsdev@microsoft.com). |