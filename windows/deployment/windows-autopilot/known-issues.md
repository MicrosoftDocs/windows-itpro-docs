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
audience: itpro
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot - known issues

**Applies to**

- Windows 10

<table>
<th>Issue<th>More information
<tr><td>Windows Autopilot white glove does not work for a non-English OS and you see a red screen that says "Success."<td>Download and install the <a href="https://support.microsoft.com/help/4505903">KB4505903 update</a>.
<tr><td>Windows Autopilot reports an AUTOPILOTUPDATE error during OOBE after sysprep, reset or other variations.  This typically happens if you reset the OS or used a custom sysprepped image.<td>Download and install the <a href="https://support.microsoft.com/help/4505903">KB4505903 update</a>.
<tr><td>BitLocker encryption is not correctly configured. Ex: BitLocker didn’t get an expected notification after policies were applied to begin encryption.<td>Download and install the <a href="https://support.microsoft.com/help/4505903">KB4505903 update</a>.
<tr><td>You are unable to install UWP apps from the Microsoft Store, causing failures during Windows Autopilot.  If you are deploying Company Portal as a blocking app during Windows Autopilot ESP, you’ve probably seen this error.<td>Download and install the <a href="https://support.microsoft.com/help/4505903">KB4505903 update</a>.
<tr><td>A user is not granted administrator rights in the Windows Autopilot user-driven Hybrid Azure AD join scenario.  This is another non-English OS issue.<td>Download and install the <a href="https://support.microsoft.com/help/4505903">KB4505903 update</a>.
<tr><td>White glove gives a red screen and the <b>Microsoft-Windows-User Device Registration/Admin</b> event log displays <b>HResult error code 0x801C03F3</b><td>This can happen if Azure AD can’t find an AAD device object for the device that you are trying to deploy. This will occur if you manually delete the object. To fix it, remove the device from AAD, Intune, and Autopilot, then re-register it with Autopilot, which will recreate the AAD device object.<br> 
<br>To obtain troubleshooting logs use: <b>Mdmdiagnosticstool.exe -area Autopilot;TPM -cab c:\autopilot.cab</b>
<tr><td>White glove gives a red screen<td>White glove is not supported on a VM.
<tr><td>Error importing Windows Autopilot devices from a .csv file<td>Ensure that you have not edited the .csv file in Microsoft Excel or an editor other than Notepad. Some of these editors can introduce extra characters causing the file format to be invalid. 
<tr><td>Windows Autopilot for existing devices does not follow the Autopilot OOBE experience.<td>Ensure that the JSON profile file is saved in <b>ANSI/ASCII</b> format, not Unicode or UTF-8.
<tr><td><b>Something went wrong</b> is displayed page during OOBE.<td>The client is likely unable to access all the required AAD/MSA-related URLs. For more information, see <a href="windows-autopilot-requirements.md#networking-requirements">Networking requirements</a>.
</table>

## Related topics

[Diagnose MDM failures in Windows 10](https://docs.microsoft.com/windows/client-management/mdm/diagnose-mdm-failures-in-windows-10)<br>
[Troubleshooting Windows Autopilot](troubleshooting.md)