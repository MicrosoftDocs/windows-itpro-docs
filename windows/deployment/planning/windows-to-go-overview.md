---
title: Windows To Go feature overview (Windows 10)
description: Windows To Go is a feature in Windows 10 Enterprise and Windows 10 Education that enables the creation of a Windows To Go workspace that can be booted from a USB-connected external drive on PCs.
ms.assetid: 9df82b03-acba-442c-801d-56db241f8d42
keywords: workspace, mobile, installation, image, USB, device, image, edu
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: mobility, edu
ms.sitesec: library
author: greglin
ms.topic: article
---

# Windows To Go: feature overview


**Applies to**

-   Windows 10

>[!IMPORTANT]
>Windows To Go is no longer being developed. The feature does not support feature updates and therefore does not enable you to stay current. It also requires a specific type of USB that is no longer supported by many OEMs.

Windows To Go is a feature in Windows 10 Enterprise and Windows 10 Education that enables the creation of a Windows To Go workspace that can be booted from a USB-connected external drive on PCs.

PCs that meet the Windows 7 or later [certification requirements](https://go.microsoft.com/fwlink/p/?LinkId=618711) can run Windows 10 in a Windows To Go workspace, regardless of the operating system running on the PC. Windows To Go workspaces can use the same image enterprises use for their desktops and laptops and can be managed the same way. Windows To Go is not intended to replace desktops, laptops or supplant other mobility offerings. Rather, it provides support for efficient use of resources for alternative workplace scenarios. There are some additional considerations that you should keep in mind before you start to use Windows To Go:

-   [Differences between Windows To Go and a typical installation of Windows](#bkmk-wtgdif)
-   [Roaming with Windows To Go](#bkmk-wtgroam)
-   [Prepare for Windows To Go](#wtg-prep-intro)
-   [Hardware considerations for Windows To Go](#wtg-hardware)

**Note**  
Windows To Go is not supported on Windows RT.

 

## <a href="" id="bkmk-wtgdif"></a>Differences between Windows To Go and a typical installation of Windows


Windows To Go workspace operates just like any other installation of Windows with a few exceptions. These exceptions are:

-   **Internal disks are offline.** To ensure data isn’t accidentally disclosed, internal hard disks on the host computer are offline by default when booted into a Windows To Go workspace. Similarly if a Windows To Go drive is inserted into a running system, the Windows To Go drive will not be listed in Windows Explorer.

-   **Trusted Platform Module (TPM) is not used.** When using BitLocker Drive Encryption a pre-operating system boot password will be used for security rather than the TPM since the TPM is tied to a specific computer and Windows To Go drives will move between computers.

-   **Hibernate is disabled by default.** To ensure that the Windows To Go workspace is able to move between computers easily, hibernation is disabled by default. Hibernation can be re-enabled by using Group Policy settings.

-   **Windows Recovery Environment is not available.** In the rare case that you need to recover your Windows To Go drive, you should re-image it with a fresh image of Windows.

-   **Refreshing or resetting a Windows To Go workspace is not supported.** Resetting to the manufacturer’s standard for the computer doesn’t apply when running a Windows To Go workspace, so the feature was disabled.

-   **Upgrading a Windows To Go workspace is not supported.** Older Windows 8 or Windows 8.1 Windows To Go workspaces cannot be upgraded to Windows 10 workspaces, nor can Windows 10 Windows To Go workspaces be upgraded to future versions of Windows 10. For new versions, the workspace needs to be re-imaged with a fresh image of Windows.

## <a href="" id="bkmk-wtgroam"></a>Roaming with Windows To Go


Windows To Go drives can be booted on multiple computers. When a Windows To Go workspace is first booted on a host computer it will detect all hardware on the computer and install any needed drivers. When the Windows To Go workspace is subsequently booted on that host computer it will be able to identify the host computer and load the correct set of drivers automatically.

The applications that you want to use from the Windows To Go workspace should be tested to make sure they also support roaming. Some applications bind to the computer hardware which will cause difficulties if the workspace is being used with multiple host computers.

## <a href="" id="wtg-prep-intro"></a>Prepare for Windows To Go


Enterprises install Windows on a large group of computers either by using configuration management software (such as System Center Configuration Manager), or by using standard Windows deployment tools such as DiskPart and the Deployment Image Servicing and Management (DISM) tool.

These same tools can be used to provision Windows To Go drive, just as you would if you were planning for provisioning a new class of mobile PCs. You can use the [Windows Assessment and Deployment Kit](https://go.microsoft.com/fwlink/p/?LinkId=526803) to review deployment tools available.

**Important**  
Make sure you use the versions of the deployment tools provided for the version of Windows you are deploying. There have been many enhancements made to support Windows To Go. Using versions of the deployment tools released for earlier versions of Windows to provision a Windows To Go drive is not supported.

 

As you decide what to include in your Windows To Go image, be sure to consider the following questions:

Are there any drivers that you need to inject into the image?

How will data be stored and synchronized to appropriate locations from the USB device?

Are there any applications that are incompatible with Windows To Go roaming that should not be included in the image?

What should be the architecture of the image - 32bit/64bit?

What remote connectivity solution should be supported in the image if Windows To Go is used outside the corporate network?

For more information about designing and planning your Windows To Go deployment, see [Prepare your organization for Windows To Go](prepare-your-organization-for-windows-to-go.md).

## <a href="" id="wtg-hardware"></a>Hardware considerations for Windows To Go


**For USB drives**

The devices listed in this section have been specially optimized and certified for Windows To Go and meet the necessary requirements for booting and running a full version of Windows 10 from a USB drive. The optimizations for Windows To Go include the following:

-   Windows To Go certified USB drives are built for high random read/write speeds and support the thousands of random access I/O operations per second required for running normal Windows workloads smoothly.

-   Windows To Go certified USB drives have been tuned to ensure they boot and run on hardware certified for use with Windows 7 and later.

-   Windows To Go certified USB drives are built to last. Certified USB drives are backed with manufacturer warranties and should continue operating under normal usage. Refer to the manufacturer websites for warranty details.

As of the date of publication, the following are the USB drives currently certified for use as Windows To Go drives:

**Warning**  
Using a USB drive that has not been certified is not supported

 

-   IronKey Workspace W700 ([http://www.ironkey.com/windows-to-go-drives/ironkey-workspace-w700.html](https://go.microsoft.com/fwlink/p/?LinkId=618714))

-   IronKey Workspace W500 ([http://www.ironkey.com/windows-to-go-drives/ironkey-workspace-w500.html](https://go.microsoft.com/fwlink/p/?LinkId=618717))

-   IronKey Workspace W300 ([http://www.ironkey.com/windows-to-go-drives/ironkey-workspace-w300.html](https://go.microsoft.com/fwlink/p/?LinkId=618718))

-   Kingston DataTraveler Workspace for Windows To Go ([http://www.kingston.com/wtg/](https://go.microsoft.com/fwlink/p/?LinkId=618719))

-   Spyrus Portable Workplace ([http://www.spyruswtg.com/](https://go.microsoft.com/fwlink/p/?LinkId=618720))

    We recommend that you run the Spyrus Deployment Suite for Windows To Go to provision the Spyrus Portable Workplace.

-   Spyrus Secure Portable Workplace ([http://www.spyruswtg.com/](https://go.microsoft.com/fwlink/p/?LinkId=618720))

    **Important**  
    You must use the Spyrus Deployment Suite for Windows To Go to provision the Spyrus Secure Portable Workplace. For more information about the Spyrus Deployment Suite for Windows To Go please refer to [http://www.spyruswtg.com/](https://go.microsoft.com/fwlink/p/?LinkId=618720).

     

-   Spyrus Worksafe ([http://www.spyruswtg.com/](https://go.microsoft.com/fwlink/p/?LinkId=618720))

    **Tip**  
    This device contains an embedded smart card.

     

-   Super Talent Express RC4 for Windows To Go

    -and-

    Super Talent Express RC8 for Windows To Go

    ([http://www.supertalent.com/wtg/](https://go.microsoft.com/fwlink/p/?LinkId=618721))

-   Western Digital My Passport Enterprise ([http://www.wd.com/wtg](https://go.microsoft.com/fwlink/p/?LinkId=618722))

    We recommend that you run the WD Compass utility to prepare the Western Digital My Passport Enterprise drive for provisioning with Windows To Go.  For more information about the WD Compass utility please refer to [http://www.wd.com/wtg](https://go.microsoft.com/fwlink/p/?LinkId=618722)

**For host computers**

When assessing the use of a PC as a host for a Windows To Go workspace you should consider the following criteria:

-   Hardware that has been certified for use with Windows 7or later operating systems will work well with Windows To Go.

-   Running a Windows To Go workspace from a computer that is running Windows RT is not a supported scenario.

-   Running a Windows To Go workspace on a Mac computer is not a supported scenario.

The following table details the characteristics that the host computer must have to be used with Windows To Go:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Item</th>
<th align="left">Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Boot process</p></td>
<td align="left"><p>Capable of USB boot</p></td>
</tr>
<tr class="even">
<td align="left"><p>Firmware</p></td>
<td align="left"><p>USB boot enabled. (PCs certified for use with Windows 7 or later can be configured to boot directly from USB, check with the hardware manufacturer if you are unsure of the ability of your PC to boot from USB)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Processor architecture</p></td>
<td align="left"><p>Must support the image on the Windows To Go drive</p></td>
</tr>
<tr class="even">
<td align="left"><p>External USB Hubs</p></td>
<td align="left"><p>Not supported; connect the Windows To Go drive directly to the host machine</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Processor</p></td>
<td align="left"><p>1 Ghz or faster</p></td>
</tr>
<tr class="even">
<td align="left"><p>RAM</p></td>
<td align="left"><p>2 GB or greater</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Graphics</p></td>
<td align="left"><p>DirectX 9 graphics device with WDDM 1.2 or greater driver</p></td>
</tr>
<tr class="even">
<td align="left"><p>USB port</p></td>
<td align="left"><p>USB 2.0 port or greater</p></td>
</tr>
</tbody>
</table>

 

**Checking for architectural compatibility between the host PC and the Windows To Go drive**

In addition to the USB boot support in the BIOS, the Windows 10 image on your Windows To Go drive must be compatible with the processor architecture and the firmware of the host PC as shown in the table below.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Host PC Firmware Type</th>
<th align="left">Host PC Processor Architecture</th>
<th align="left">Compatible Windows To Go Image Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Legacy BIOS</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>32-bit only</p></td>
</tr>
<tr class="even">
<td align="left"><p>Legacy BIOS</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UEFI BIOS</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>32-bit only</p></td>
</tr>
<tr class="even">
<td align="left"><p>UEFI BIOS</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>64-bit only</p></td>
</tr>
</tbody>
</table>

 

## Additional resources


-   [Windows 10 forums](https://go.microsoft.com/fwlink/p/?LinkId=618949)

-   [Windows To Go Step by Step Wiki](https://go.microsoft.com/fwlink/p/?LinkId=618950)

-   [Tips for configuring your BIOS settings to work with Windows To Go](https://go.microsoft.com/fwlink/p/?LinkId=618951)

## Related topics


-   [Deploy Windows To Go in your organization](https://go.microsoft.com/fwlink/p/?LinkId=619975)

-   [Windows To Go: frequently asked questions](windows-to-go-frequently-asked-questions.md)

-   [Prepare your organization for Windows To Go](prepare-your-organization-for-windows-to-go.md)

-   [Deployment considerations for Windows To Go](deployment-considerations-for-windows-to-go.md)

-   [Security and data protection considerations for Windows To Go](security-and-data-protection-considerations-for-windows-to-go.md)

-   [Best practice recommendations for Windows To Go](best-practice-recommendations-for-windows-to-go.md)

 

 





