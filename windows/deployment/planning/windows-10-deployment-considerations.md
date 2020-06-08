---
title: Windows 10 deployment considerations (Windows 10)
description: There are new deployment options in Windows 10 that help you simplify the deployment process and automate migration of existing settings and applications.
ms.assetid: A8DD6B37-1E11-4CD6-B588-92C2404219FE
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, upgrade, update, in-place
ms.prod: w10
ms.localizationpriority: medium
ms.mktglfcycl: plan
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Windows 10 deployment considerations


**Applies to**

-   Windows 10

There are new deployment options in Windows 10 that help you simplify the deployment process and automate migration of existing settings and applications.

For many years, organizations have deployed new versions of Windows using a “wipe and load” deployment process. At a high level, this process captures existing data and settings from the existing device, deploys a new custom-built Windows image to a PC, injects hardware drivers, reinstalls applications, and finally restores the data and settings. With Windows 10, this process is still fully supported, and for some deployment scenarios is still necessary.

Windows 10 also introduces two additional scenarios that organizations should consider:

-   **In-place upgrade**, which provides a simple, automated process that leverages the Windows setup process to automatically upgrade from an earlier version of Windows. This process automatically migrates existing data, settings, drivers, and applications.

-   **Dynamic provisioning**, which enables organizations to configure new Windows 10 devices for organization use without having to deploy a new custom organization image to the device.

    Both of these scenarios eliminate the image creation process altogether, which can greatly simplify the deployment process.

    So how do you choose? At a high level:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Consider ...</th>
<th align="left">For these scenarios</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">In-place upgrade</td>
<td align="left"><ul>
<li><p>When you want to keep all (or at least most) existing applications</p></li>
<li><p>When you do not plan to significantly change the device configuration (for example, BIOS to UEFI) or operating system configuration (for example, x86 to x64, language changes, Administrators to non-Administrators, Active Directory domain consolidations)</p></li>
<li><p>To migrate from Windows 10 to a later Windows 10 release</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Traditional wipe-and-load</td>
<td align="left"><ul>
<li><p>When you upgrade significant numbers of applications along with the new Windows OS</p></li>
<li><p>When you make significant device or operating system configuration changes</p></li>
<li><p>When you “start clean”. For example, scenarios where it is not necessary to preserve existing apps or data (for example, call centers) or when you move from unmanaged to well-managed PCs</p></li>
<li><p>When you migrate from Windows Vista or other previous operating system versions</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Dynamic provisioning</td>
<td align="left"><ul>
<li><p>For new devices, especially in “choose your own device” scenarios when simple configuration (not reimaging) is all that is required</p></li>
<li><p>When used in combination with a management tool (for example, an MDM service like Microsoft Intune) that enables self-service installation of user-specific or role-specific apps</p></li>
</ul></td>
</tr>
</tbody>
</table>

 
## Migration from previous Windows versions

For existing PCs running Windows 7 or Windows 8.1, in-place upgrade is the recommended method for Windows 10 deployment and should be used whenever possible. Although wipe-and-load (OS refresh) deployments are still fully supported (and necessary in some scenarios, as mentioned previously), in-place upgrade is simpler and faster, and enables a faster Windows 10 deployment overall.

The original Windows 8 release was only supported until January 2016. For devices running Windows 8.0, you can update to Windows 8.1 and then upgrade to Windows 10.

For PCs running operating systems older than Windows 7, you can perform wipe-and-load (OS refresh) deployments when you use compatible hardware.

For organizations with Software Assurance for Windows, both in-place upgrade or wipe-and-load can be leveraged (with in-place upgrade being the preferred method, as previously discussed).

For organizations that did not take advantage of the free upgrade offer and are not enrolled in Software Assurance for Windows, Windows 10 upgrade licenses are available for purchase through existing Volume License (VL) agreements.

## Setting up new computers

For new computers acquired with Windows 10 preinstalled, you can leverage dynamic provisioning scenarios to transform the device from its initial state into a fully-configured organization PC. There are two primary dynamic provisioning scenarios you can use:

-   **User-driven, from the cloud.** By joining a device into Azure Active Directory and leveraging the automatic mobile device management (MDM) provisioning capabilities at the same time, an end user can initiate the provisioning process themselves just by entering the Azure Active Directory account and password (called their “work or school account” within Windows 10). The MDM service can then transform the device into a fully-configured organization PC. For more information, see [Azure Active Directory integration with MDM](https://go.microsoft.com/fwlink/p/?LinkId=625075).

-   **IT admin-driven, using new tools.** Using the new Windows Imaging and Configuration Designer (ICD) tool, IT administrators can create provisioning packages that can be applied to a computer to transform it into a fully-configured organization PC. For more information, see [Windows Imaging and Configuration Designer](https://go.microsoft.com/fwlink/p/?LinkId=625076).

In either of these scenarios, you can make a variety of configuration changes to the PC:

-   Transform the edition (SKU) of Windows 10 that is in use.
-   Apply configuration and settings to the device (for example, security settings, device restrictions, policies, Wi-Fi and VPN profiles, certificates, and so on).
-   Install apps, language packs, and updates.
-   Enroll the device in a management solution (applicable for IT admin-driven scenarios, configuring the device just enough to allow the management tool to take over configuration and ongoing management).

## Stay up to date

For computers already running Windows 10 on the Semi-Annual Channel, new upgrades will be deployed two times per year. You can deploy these upgrades by using a variety of methods:

-   Windows Update or Windows Update for Business, for devices where you want to receive updates directly from the Internet.
-   Windows Server Update Services (WSUS), for devices configured to pull updates from internal servers after they are approved (deploying like an update). 
-   Configuration Manager task sequences.
-   Configuration Manager software update capabilities (deploying like an update).

These upgrades (which are installed differently than monthly updates) leverage an in-place upgrade process. Unlike updates, which are relatively small, these upgrades will include a full operating system image (around 3 GB for 64-bit operating systems), which requires time (1-2 hours) and disk space (approximately 10 GB) to complete. Ensure that the deployment method you use can support the required network bandwidth and/or disk space requirements.

The upgrade process is also optimized to reduce the overall time and network bandwidth consumed.

## Related topics


[Windows 10 compatibility](windows-10-compatibility.md)<br>
[Windows 10 infrastructure requirements](windows-10-infrastructure-requirements.md)

 

 





