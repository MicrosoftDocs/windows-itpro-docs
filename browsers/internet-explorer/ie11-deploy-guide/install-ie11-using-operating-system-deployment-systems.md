---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
description: How to install the Internet Explorer 11 update using Microsoft Deployment Toolkit (MDT) and your Windows images.
author: lomayor
ms.prod: ie11
ms.assetid: e16f9144-170c-4964-a62d-0d1a16f4cd1f
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Install Internet Explorer 11 (IE11) using Microsoft Deployment Toolkit (MDT) and your Windows images (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Install Internet Explorer 11 (IE11) using Microsoft Deployment Toolkit (MDT) and your Windows images

You can install Internet Explorer 11 (IE11) using Microsoft Deployment Toolkit (MDT) and your Windows images.

You'll need to extract the .cab file for each supported operating system and platform combination and the .msu file for each prerequisite update. Download the IE11 update and prerequisites here:

-   [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=279697)

-   [Microsoft Update Catalog](https://go.microsoft.com/fwlink/p/?LinkId=214287)

After you install the .msu file updates, you'll need to add them to your MDT deployment. You'll also need to extract the IE11 .cab update file from the IE11 installation package, using the `/x` command-line option. For example, `IE11-Windows6.1-x64-en-us.exe /x:c:\ie11cab`.

## Installing IE11 using Microsoft Deployment Toolkit (MDT) 

MDT adds IE11 to your Windows images, regardless whether you are creating or deploying a customized or non-customized image. MDT also lets you perform offline servicing during the System Center 2012 R2 Configuration Manager task sequence, letting you add IE11 before starting Windows. For info, see [Microsoft Deployment Toolkit (MDT)](https://go.microsoft.com/fwlink/p/?linkid=331148).

 **To add IE11 to a MDT deployment share**

1.  Right-click **Packages** from each **Deployment Shares** location, and then click **Import OS Packages**.

2.  Go to the **Specify Directory** page, search for your folder with your update files (.cab and .msu) for import, and click **Next**.

3.  Go to the **Summary** page and click **Next**.<p>
MDT starts importing your update files.<p>**Note**<br>Ignore any warnings that say, "Skipping invalid CAB file". This shows up because the **Import OS Packages** wizard skips the IE11\_Support.cab file, which isn't an actual update file.

4.  After the import finishes, click **Finish**.

### Offline servicing with MDT

You can add the IE11 update while you're performing offline servicing, or slipstreaming, of your Windows images. This method lets you deploy IE11 without needing any additional installation after you've deployed Windows.

These articles have step-by-step details about adding packages to your Windows images:

-   For Windows 8.1, see [Add or Remove Packages Offline Using DISM](https://go.microsoft.com/fwlink/p/?LinkId=276791).

-   For Windows 7 SP1, see [Add or Remove Packages Offline](https://go.microsoft.com/fwlink/p/?LinkId=214490).

 

 



