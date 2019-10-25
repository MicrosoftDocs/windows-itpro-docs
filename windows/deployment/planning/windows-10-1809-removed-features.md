---
title: Windows 10, version 1809 - Features that have been removed
description: Learn about features that are removed in Windows 10, version 1809
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

# Features removed starting with Windows 10, version 1809

> Applies to: Windows 10, version 1809

Each release of Windows 10 adds new features and functionality; we also occasionally remove features and functionality, usually because we've added a better option. Here are the details about the features and functionalities that we removed in Windows 10, version 1809.

For information about features that might be removed in a future release, see [Windows 10 features we’re no longer developing](windows-10-deprecated-features.md)

> [!TIP]
> You can get early access to Windows 10 builds by joining the [Windows Insider program](https://insider.windows.com) - this is a great way to test feature changes.
> Have questions about other releases? Check out the information for [Features removed with Windows 10, version 1809](https://docs.microsoft.com/windows/deployment/planning/windows-10-1809-removed-features), [Features removed starting with Windows Server, version 1709](https://docs.microsoft.com/windows-server/get-started/removed-features-1709), and [Features that are removed in Windows 10, version 1703](https://docs.microsoft.com/windows/deployment/planning/windows-10-1703-removed-features).

**The list is subject to change and might not include every affected feature or functionality.** 

## Features we removed in this release

We're removing the following features and functionalities from the installed product image in Windows 10, version 1809. Applications or code that depend on these features won't function in this release or later releases.

| Feature | Details |
|-----------|--------------------|
|Business Scanning, also called Distributed Scan Management (DSM)|We're removing this secure scanning and scanner management capability - there are no devices that support this feature.|
|[FontSmoothing setting](https://docs.microsoft.com/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-visualeffects-fontsmoothing) in unattend.xml|The FontSmoothing setting let you specify the font antialiasing strategy to use across the system. We've changed Windows 10 to use [ClearType](https://docs.microsoft.com/typography/cleartype/) by default, so we're removing this setting as it is no longer necessary. If you include this setting in the unattend.xml file, it'll be ignored.|
|Hologram app|We've replaced the Hologram app with the [Mixed Reality Viewer](https://support.microsoft.com/help/4041156/windows-10-mixed-reality-help). If you would like to create 3D word art, you can still do that in Paint 3D and view your art in VR or Hololens with the Mixed Reality Viewer.|
|limpet.exe|We're releasing the limpet.exe tool, used to access TPM for Azure connectivity, as open source.|
|Phone Companion|When you update to Windows 10, version 1809, the Phone Companion app will be removed from your PC. Use the **Phone** page in the Settings app to sync your mobile phone with your PC. It includes all the Phone Companion features.|
|Future updates through [Windows Embedded Developer Update](https://docs.microsoft.com/previous-versions/windows/embedded/ff770079\(v=winembedded.60\)) for Windows Embedded Standard 7-SP1 (WES7-SP1) and Windows Embedded Standard 8 (WES8)|We’re no longer publishing new updates to the WEDU server. Instead, you may secure any new updates from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Home.aspx). [Learn how](https://techcommunity.microsoft.com/t5/Windows-Embedded/Change-to-the-Windows-Embedded-Developer-Update/ba-p/285704) to get updates from the catalog.|