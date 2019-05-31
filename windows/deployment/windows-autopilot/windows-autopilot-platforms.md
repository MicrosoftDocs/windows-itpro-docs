---
title: Windows Autopilot platforms
ms.reviewer: 
manager: laurawi
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot platforms

**Applies to**

-   Windows 10

- [Administering Autopilot via Partner Center](https://docs.microsoft.com/en-us/partner-center/autopilot)
- [Administering Autopilot via Microsoft Intune](https://docs.microsoft.com/intune/enrollment-autopilot)
- [Administering Autopilot via Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles)
- [Administering Autopilot via Microsoft 365 Business & Office 365 Admin portal](https://support.office.com/article/Create-and-edit-Autopilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa)


Several platforms are available to register devices with Windows Autopilot. A summary of each platform's capabilities is provided below.

<table>

<tr>
<td BGCOLOR="#a0e4fa"><B>Platform/Portal</th>
<td BGCOLOR="#a0e4fa"><B>Register devices?</th>
<td BGCOLOR="#a0e4fa"><B>Create/Assign profile</th>
<td BGCOLOR="#a0e4fa"><B>Acceptable DeviceID</th>
</tr>

<tr>
<td>OEM Direct API</td>
<td>YES - 1000 at a time max</td>
<td>NO</td>
<td>Tuple or PKID</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/en-us/partner-center/autopilot">Partner Center</a></td>
<td>YES - 1000 at a time max<b>\*</b></td>
<td>YES</td>
<td>Tuple or PKID or 4K HH</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/en-us/intune/enrollment-autopilot">Intune</a></td>
<td>YES - 175 at a time max</td>
<td>YES<b>\*</b></td>
<td>4K HH</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/en-us/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles">Microsoft Store for Business</a></td>
<td>YES - 1000 at a time max</td>
<td>YES</td>
<td>4K HH</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/en-us/microsoft-365/business/create-and-edit-autopilot-profiles?redirectSourcePath=%252farticle%252fCreate-and-edit-Autopilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa">Microsoft Business 365</a></td>
<td>YES - 1000 at a time max</td>
<td>YES</td>
<td>4K HH</td>
</tr>

</table>

><b>*</b>Microsoft recommended platform to use


## Related topics

