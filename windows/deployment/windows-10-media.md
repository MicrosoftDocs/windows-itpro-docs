---
title: Windows 10 volume license media
description: There are specific infrastructure requirements to deploy and manage Windows 10 that should be in place prior to significant Windows 10 deployments within your organization.
keywords: deploy, upgrade, update, software, media
ms.prod: w10
ms.mktglfcycl: plan
ms.localizationpriority: medium
ms.date: 10/20/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.sitesec: library
author: dansimp
ms.topic: article
---

# Windows 10 volume license media


**Applies to**

-   Windows 10

With each release of Windows 10, volume license media is made available on the [Volume Licensing Service Center](https://www.microsoft.com/vlsc) (VLSC) and other relevant channels such as Windows Update for Business, Windows Server Update Services (WSUS), and Visual Studio Subscriptions. This topic provides a description of volume license media, and describes some of the changes that have been implemented with the current release of Windows 10.

## Windows 10 media

To download Windows 10 installation media from the VLSC, use the product search filter to find “Windows 10.”  A list of products will be displayed. The page then allows you to use your search results to download products, view keys, and view product and key descriptions.

When you select a product, for example “Windows 10 Enterprise” or “Windows 10 Education”, you can then choose the specific release by clicking **Download** and choosing the **Download Method**, **Language**, and **Operating system Type** (bitness).

>If you do not see a Windows 10 release available in the list of downloads, verify the [release date](https://technet.microsoft.com/windows/release-info.aspx).

In Windows 10, version 1709 the packaging of volume licensing media and upgrade packages is different than it has been for previous releases. Instead of having separate media and packages for Windows 10 Pro (volume licensing version), Windows 10 Enterprise, and Windows 10 Education, all three are bundled together. The following section explains this change.

### Windows 10, version 1709

Windows 10, version 1709 is available starting on 10/17/2017 in all relevant distribution channels. Note: An updated [Windows ADK for Windows 10](https://developer.microsoft.com/en-us/windows/hardware/windows-assessment-deployment-kit) is also available.

For ISOs that you download from the VLSC or Visual Studio Subscriptions, you can still search for the individual Windows editions. However, each of these editions (Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education) will point to the same ISO file, so you only need to download the ISO once. A single Windows image (WIM) file is included in the ISO that contains all the volume licensing images:

![Images](images\table01.png)

When using the contents of these ISOs with tools such as the Microsoft Deployment Toolkit or System Center Configuration Manager, make sure you select the appropriate image index in any task sequences that you create or update.

For packages published to Windows Server Update Services (WSUS), you’ll also notice the change because, instead of having separate packages for each Windows edition, there will be just one package:

<br>

| Title | Classification | Description |
| --- | --- | --- |
| Feature update to Windows 10, version 1709, \<language\> | Upgrades | Package to upgrade Windows 10 Pro (VL), Windows 10 Enterprise, or Windows 10 Education to version 1709 |
| Windows 7 and 8.1 upgrade to Windows 10, version 1709, \<language\> | Upgrades | Package to upgrade Windows 7 Professional (VL), Windows 7 Enterprise, Windows 8.1 Professional (VL), or Windows 8.1 Enterprise to Windows 10 1709 |

<br>

When you approve one of these packages, it applies to all of the editions.

This Semi-Annual Channel release of Windows 10 continues the Windows as a service methodology.  For more information about implementing Windows as a service in your organization in order to stay up to date with Windows, see [Update Windows 10 in the enterprise](https://aka.ms/waas).


### Language packs

- **Windows 10 versions 1507 and 1511**: you can select **Windows 10 Enterprise Language Pack**, click **Download** and then select **English** and **64-bit** to see these downloads. 
- **Windows 10 1607 and later**: you must select **Multilanguage** from the drop-down list of languages.

See the following example for Windows 10, version 1709:

![Windows 10, version 1709 lang pack](images\lang-pack-1709.png)

### Features on demand

[Features on demand](https://blogs.technet.microsoft.com/mniehaus/2015/08/31/adding-features-including-net-3-5-to-windows-10/) can be downloaded by searching for "**Windows 10 Enterprise Features on Demand**" and then following the same download process that is described above.

Features on demand is a method for adding features to your Windows 10 image that aren’t included in the base operating system image.


## Related topics

[Microsoft Volume Licensing Service Center (VLSC) User Guide](https://www.microsoft.com/en-us/download/details.aspx?id=10585)
<br>[Volume Activation for Windows 10](https://docs.microsoft.com/windows/deployment/volume-activation/volume-activation-windows-10)
<br>[Plan for volume activation](https://docs.microsoft.com/windows/deployment/volume-activation/plan-for-volume-activation-client)
<br>[VLSC downloads FAQ](https://www.microsoft.com/Licensing/servicecenter/Help/FAQDetails.aspx?id=150)
<br>[Download and burn an ISO file on the volume licensing site (VLSC)](https://support.microsoft.com/help/2472143/download-and-burn-an-iso-file-on-the-volume-licensing-site-vlsc)


 

 





