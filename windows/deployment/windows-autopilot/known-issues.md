---
title: Windows Autopilot known issues
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


# Windows Autopilot - known issues

**Applies to**

-   Windows 10

<table>
<th>Issue<th>More information
<tr><td>White glove gives a red screen<td>White glove is not supported on a VM.
<tr><td>Error importing Windows Autopilot devices from a .csv file<td>Ensure that you have not edited the .csv file in Microsoft Excel or an editor other than Notepad. Some of these editors can introduce extra characters causing the file format to be invalid. 
<tr><td>Windows Autopilot for existing devices does not follow the Autopilot OOBE experience.<td>Ensure that the JSON profile file is saved in **ANSI/ASCII** format, not Unicode or UTF-8.
<tr><td><b>Something went wrong</b> is displayed page during OOBE.<td>The client is likely unable to access all the required AAD/MSA-related URLs. For more information, see <a href="windows-autopilot-requirements.md#networking-requirements">Networking requirements</a>.
</table>


## Related topics

[Troubleshooting Windows Autopilot](troubleshooting.md)