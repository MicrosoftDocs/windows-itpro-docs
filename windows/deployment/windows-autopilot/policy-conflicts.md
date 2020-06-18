---
title: Windows Autopilot policy conflicts
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
author: mtniehaus
ms.author: mniehaus
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot - Policy Conflicts

**Applies to**

- Windows 10

There are a significant number of policy settings available for Windows 10, both as native MDM policies and group policy (ADMX-backed) settings. Some of these can cause issues in certain Windows Autopilot scenarios as a result of how they change the behavior of Windows 10. If you encounter any of these issues, remove the policy in question to resolve the issue.

<table>
<th>Policy<th>More information

<tr><td width="50%">Device restriction / <a href="https://docs.microsoft.com/windows/client-management/mdm/devicelock-csp">Password Policy</a></td>
<td>When certain <a href="https://docs.microsoft.com/windows/client-management/mdm/policy-csp-devicelock">DeviceLock policies</a>, such as minimum password length and password complexity, or any similar group policy settings, including any that disable auto-logon, are applied to a device, and that device reboots during the device Enrollment Status Page (ESP), the out-of-box experience or user desktop auto-logon could fail unexpectantly.  This is especially true for kiosk scenarios where passwords are automatically generated.</td>

<tr><td width="50%">Windows 10 Security Baseline / <a href="https://docs.microsoft.com/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions">Administrator elevation prompt behavior</a>
<br>Windows 10 Security Baseline / <a href="https://docs.microsoft.com/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions">Require admin approval mode for administrators</a></td>
<td>When modifying user account control (UAC) settings during the out-of-box experience (OOBE) using device Enrollment Status Page (ESP), additional UAC prompts may result, especially if the device reboots after these policies are applied enabling them to take effect.  To work around this issue, the policies can be targeted to users instead of devices so that they apply later in the process.</td>

</table>

## Related topics

[Troubleshooting Windows Autopilot](troubleshooting.md)
