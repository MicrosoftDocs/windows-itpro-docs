---
title: Windows volume license media
description: Learn about volume license media in Windows, and channels such as the Volume License Service Center (VLSC).
ms.prod: windows-client
ms.localizationpriority: medium
ms.date: 09/29/2023
manager: aaroncz
ms.author: frankroj
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Windows volume license media

With each release of Windows, volume license media is made available on the [Volume Licensing Service Center](https://www.microsoft.com/vlsc) (VLSC) and other relevant channels such as Windows Update for Business, Windows Server Update Services (WSUS), and Visual Studio Subscriptions. This article provides a description of volume license media, and describes some of the changes that have been implemented with the current release of Windows.

## Windows media

To download Windows installation media from the VLSC, use the product search filter to find the appropriate version of Windows. For example, `Windows 11`.  A list of products will be displayed. The page then allows you to use your search results to download products, view keys, and view product and key descriptions.

When you select a product, for example `Windows 11 Enterprise` or `Windows 11 Education`, you can then choose the specific release by selecting **Download** and choosing the **Download Method**, **Language**, and **Operating system Type** (bitness).

Instead of having separate media and packages for each edition of Windows (Pro, Enterprise, Education, etc.), all are bundled together.

### Language packs

You must select **Multilanguage** from the drop-down list of languages.

### Features on demand

Features on demand can be downloaded by searching for `Windows x Enterprise Features on Demand` (where x is the version of Windows) and then following the same download process as previously described.

Features on demand is a method for adding features to the Windows image that aren't included in the base operating system image.

## Related articles

- [Microsoft Volume Licensing Service Center (VLSC) User Guide](https://www.microsoft.com/download/details.aspx?id=10585)
- [Volume Activation for Windows 10](./volume-activation/volume-activation-windows-10.md)
- [Plan for volume activation](./volume-activation/plan-for-volume-activation-client.md)
- [VLSC downloads FAQ](https://www.microsoft.com/Licensing/servicecenter/Help/FAQDetails.aspx?id=150)
- [Download and burn an ISO file on the volume licensing site (VLSC)](/troubleshoot/windows-client/deployment/iso-file-on-vlsc)
