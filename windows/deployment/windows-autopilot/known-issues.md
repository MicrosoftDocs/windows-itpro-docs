---
title: Windows Autopilot known issues
ms.reviewer: 
manager: laurawi
description: Inform yourself about known issues that may occur during Windows Autopilot deployment.
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

<tr><td>Blocking apps specified in a user-targeted Enrollment Status Profile are ignored during device ESP.</td>
<td>The services responsible for determining the list of apps that should be blocking during device ESP are not able to determine the correct ESP profile containing the list of apps because they do not know the user identity.  As a workaround, enable the default ESP profile (which targets all users and devices) and place the blocking app list there.  In the future, it will be possible to instead target the ESP profile to device groups to avoid this issue.</tr>

<tr><td>That username looks like it belongs to another organization. Try signing in again or start over with a different account.</td>
  <td>Confirm that all of your information is correct at HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Provisioning\Diagnostics\AutoPilot. See <a href="https://docs.microsoft.com/windows/deployment/windows-autopilot/troubleshooting#windows-10-version-1709-and-above">Troubleshooting Windows Auto Pilot </a> for more details.</td></tr>

<tr><td>Windows Autopilot user-driven Hybrid Azure AD deployments do not grant users Administrator rights even when specified in the Windows Autopilot profile.</td>
<td>This will occur when there is another user on the device that already has Administrator rights.  For example, a PowerShell script or policy could create an additional local account that is a member of the Administrators group.  To ensure this works properly, do not create an additional account until after the Windows Autopilot process has completed.</tr>

<tr><td>Windows Autopilot device provisioning can fail with TPM attestation errors or ESP timeouts on devices where the real-time clock is off by a significant amount of time (e.g. several minutes or more).</td>
<td>To fix this issue: <ol><li>Boot the device to the start of the out-of-box experience (OOBE).
<li>Establish a network connection (wired or wireless).
<li>Run the command <b>w32tm /resync /force</b> to sync the time with the default time server (time.windows.com).</ol>
</tr>

<tr><td>Windows Autopilot for existing devices does not work for Windows 10, version 1903 or 1909; you see screens that you've disabled in your Windows Autopilot profile, such as the Windows 10 License Agreement screen.
<br>&nbsp;<br>
This happens because Windows 10, version 1903 and 1909 deletes the AutopilotConfigurationFile.json file.
<td>To fix this issue: <ol><li>Edit the Configuration Manager task sequence and disable the <b>Prepare Windows for Capture</b> step.
<li>Add a new <b>Run command line</b> step that runs <b>c:\windows\system32\sysprep\sysprep.exe /oobe /reboot</b>.</ol>
<a href="https://oofhours.com/2019/09/19/a-challenge-with-windows-autopilot-for-existing-devices-and-windows-10-1903/">More information</a></tr>
  
<tr><td>TPM attestation fails on Windows 10 1903 due to missing AKI extension in EK certificate.  (An additional validation added in Windows 10 1903 to check that the TPM EK certs had the proper attributes according to the TCG specifications uncovered that a number of them don’t, so that validation will be removed).
<td>Download and install the <a href="https://support.microsoft.com/help/4517211/windows-10-update-kb4517211">KB4517211 update</a>.
<tr><td>The following known issues are resolved by installing the August 30, 2019 KB4512941 update (OS Build 18362.329):

- Windows Autopilot for existing devices feature does not properly suppress “Activities” page during OOBE.  (Because of this, you’ll see that extra page during OOBE).
- TPM attestation state is not cleared by sysprep /generalize, causing TPM attestation failure during later OOBE flow.  (This isn’t a particularly common issue, but you could run into it while testing if you are running sysprep /generalize and then rebooting or reimaging the device to go back through an Autopilot white glove or self-deploying scenario).
- TPM attestation may fail if the device has a valid AIK cert but no EK cert.  (This is related to the previous item).
- If TPM attestation fails during the Windows Autopilot white glove process, the landing page appears to be hung.  (Basically, the white glove landing page, where you click “Provision” to start the white glove process, isn’t reporting errors properly).
- TPM attestation fails on newer Infineon TPMs (firmware version > 7.69).  (Prior to this fix, only a specific list of firmware versions was accepted).
- Device naming templates may truncate the computer name at 14 characters instead of 15.
- Assigned Access policies cause a reboot which can interfere with the configuration of single-app kiosk devices.
<td>Download and install the <a href="https://support.microsoft.com/help/4512941">KB4512941 update</a>. <br><br>See the section: <b>How to get this update</b> for information on specific release channels you can use to obtain the update.
<tr><td>The following known issues are resolved by installing the July 26, 2019 KB4505903 update (OS Build 18362.267):

- Windows Autopilot white glove does not work for a non-English OS and you see a red screen that says "Success."
- Windows Autopilot reports an AUTOPILOTUPDATE error during OOBE after sysprep, reset or other variations.  This typically happens if you reset the OS or used a custom sysprepped image.
- BitLocker encryption is not correctly configured. Ex: BitLocker didn’t get an expected notification after policies were applied to begin encryption.
- You are unable to install UWP apps from the Microsoft Store, causing failures during Windows Autopilot.  If you are deploying Company Portal as a blocking app during Windows Autopilot ESP, you’ve probably seen this error.
- A user is not granted administrator rights in the Windows Autopilot user-driven Hybrid Azure AD join scenario.  This is another non-English OS issue.
<td>Download and install the <a href="https://support.microsoft.com/help/4505903">KB4505903 update</a>. <br><br>See the section: <b>How to get this update</b> for information on specific release channels you can use to obtain the update.
<tr><td>Windows Autopilot <a href="https://docs.microsoft.com/windows/deployment/windows-autopilot/self-deploying">self-deploying mode</a> fails with an error code:
<td><table>
<tr><td>0x800705B4<td>This is a general error indicating a timeout. A common cause of this error in self-deploying mode is that the device is not TPM 2.0 capable (ex: a virtual machine). Devices that are not TPM 2.0 capable cannot be used with self-deploying mode.
<tr><td>0x801c03ea<td>This error indicates that TPM attestation failed, causing a failure to join Azure Active Directory with a device token.
<tr><td>0xc1036501<td>The device cannot do an automatic MDM enrollment because there are multiple MDM configurations in Azure AD. See <a href="https://oofhours.com/2019/10/01/inside-windows-autopilot-self-deploying-mode/">Inside Windows Autopilot self-deploying mode</a>.
</table>
<tr><td>White glove gives a red screen and the <b>Microsoft-Windows-User Device Registration/Admin</b> event log displays <b>HResult error code 0x801C03F3</b><td>This can happen if Azure AD can’t find an AAD device object for the device that you are trying to deploy. This will occur if you manually delete the object. To fix it, remove the device from AAD, Intune, and Autopilot, then re-register it with Autopilot, which will recreate the AAD device object.<br> 
<br>To obtain troubleshooting logs use: <b>Mdmdiagnosticstool.exe -area Autopilot;TPM -cab c:\autopilot.cab</b>
<tr><td>White glove gives a red screen<td>White glove is not supported on a VM.
<tr><td>Error importing Windows Autopilot devices from a .csv file<td>Ensure that you have not edited the .csv file in Microsoft Excel or an editor other than Notepad. Some of these editors can introduce extra characters causing the file format to be invalid. 
<tr><td>Windows Autopilot for existing devices does not follow the Autopilot OOBE experience.<td>Ensure that the JSON profile file is saved in <b>ANSI/ASCII</b> format, not Unicode or UTF-8.
<tr><td><b>Something went wrong</b> is displayed page during OOBE.<td>The client is likely unable to access all the required AAD/MSA-related URLs. For more information, see <a href="windows-autopilot-requirements.md#networking-requirements">Networking requirements</a>.
<tr><td>Using a provisioning package in combination with Windows Autopilot can cause issues, especially if the PPKG contains join, enrollment, or device name information.<td>Using PPKGs in combination with Windows Autopilot is not recommended.
</table>

## Related topics

[Diagnose MDM failures in Windows 10](https://docs.microsoft.com/windows/client-management/mdm/diagnose-mdm-failures-in-windows-10)<br>
[Troubleshooting Windows Autopilot](troubleshooting.md)
