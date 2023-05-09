---
title: Windows 10 volume license media
description: Learn about volume license media in Windows 10, and channels such as the Volume License Service Center (VLSC).
ms.prod: windows-client
ms.localizationpriority: medium
ms.date: 11/23/2022
manager: aaroncz
ms.author: frankroj
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
---

# Windows 10 volume license media

*Applies to:*

- Windows 10

With each release of Windows 10, volume license media is made available on the [Volume Licensing Service Center](https://www.microsoft.com/vlsc) (VLSC) and other relevant channels such as Windows Update for Business, Windows Server Update Services (WSUS), and Visual Studio Subscriptions. This article provides a description of volume license media, and describes some of the changes that have been implemented with the current release of Windows 10.

## Windows 10 media

To download Windows 10 installation media from the VLSC, use the product search filter to find "Windows 10."  A list of products will be displayed. The page then allows you to use your search results to download products, view keys, and view product and key descriptions.

When you select a product, for example "Windows 10 Enterprise" or "Windows 10 Education", you can then choose the specific release by clicking **Download** and choosing the **Download Method**, **Language**, and **Operating system Type** (bitness).

> [!NOTE]
> If you do not see a Windows 10 release available in the list of downloads, verify the [release date](https://technet.microsoft.com/windows/release-info.aspx).

Instead of having separate media and packages for Windows 10 Pro (volume licensing version), Windows 10 Enterprise, and Windows 10 Education, all three are bundled together.

### Language packs

- **Windows 10 1607 and later**: you must select **Multilanguage** from the drop-down list of languages.

### Features on demand

[Features on demand](/archive/blogs/mniehaus/adding-features-including-net-3-5-to-windows-10) can be downloaded by searching for "**Windows 10 Enterprise Features on Demand**" and then following the same download process that is described above.

Features on demand is a method for adding features to your Windows 10 image that aren't included in the base operating system image.

## Related articles

[Microsoft Volume Licensing Service Center (VLSC) User Guide](https://www.microsoft.com/download/details.aspx?id=10585)
<br>[Volume Activation for Windows 10](./volume-activation/volume-activation-windows-10.md)
<br>[Plan for volume activation](./volume-activation/plan-for-volume-activation-client.md)
<br>[VLSC downloads FAQ](https://www.microsoft.com/Licensing/servicecenter/Help/FAQDetails.aspx?id=150)
<br>[Download and burn an ISO file on the volume licensing site (VLSC)](/troubleshoot/windows-client/deployment/iso-file-on-vlsc)
