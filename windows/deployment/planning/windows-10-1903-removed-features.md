---
title: Windows 10, version 1903 - Features that have been removed
description: Learn about features that will be removed or deprecated in Windows 10, version 1903, or a future release
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.author: greglin
manager: laurawi
ms.topic: article
---

# Features removed starting with Windows 10, version 1903

> Applies to: Windows 10, version 1903

Each version of Windows 10 adds new features and functionality; occasionally we also remove features and functionality, often because we've added a better option. Below are the details about the features and functionalities that we removed in Windows 10, version 1903. **The list below is subject to change and might not include every affected feature or functionality.**

For information about features that might be removed in a future release, see [Windows 10 features we’re no longer developing](windows-10-deprecated-features.md)

> [!NOTE]
> Join the [Windows Insider program](https://insider.windows.com) to get early access to new Windows 10 builds and test these changes yourself.

## Features we removed

The following features and functionalities are removed from the installed product image for Windows 10, version 1903. Applications or code that depend on these features won't function in this release or later releases.


|Feature    |Details|
|-----------|---------------------|
| XDDM-based remote display driver  | Starting with this release the Remote Desktop Services uses a Windows Display Driver Model (WDDM) based Indirect Display Driver (IDD) for a single session remote desktop. The support for Windows 2000 Display Driver Model (XDDM) based remote display drivers will be removed in a future release. Independent Software Vendors that use XDDM-based remote display driver should plan a migration to the WDDM driver model. For more information on implementing remote indirect display driver ISVs can reach out to [rdsdev@microsoft.com](mailto:rdsdev@microsoft.com). |
| Desktop messaging app doesn't offer messages sync |  The messaging app on Desktop has a sync feature that can be used to sync SMS text messages received from Windows Mobile and keep a copy of them on the Desktop. The sync feature has been removed from all devices. Due to this change, you will only be able to access messages from the device that received the message.  |