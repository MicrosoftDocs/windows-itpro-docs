---
title: Protect security settings with Tamper Protection
ms.reviewer: 
manager: dansimp
description: Use Tamper Protection to prevent malicious apps from changing important security settings.
keywords: malware, defender, antivirus, Tamper Protection
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: denisebmsft
ms.author: deniseb
---

# Protect security settings with Tamper Protection

**Applies to:**

- Windows 10

## Overview

During some kinds of cyber attacks, bad actors try to disable security features, such as anti-virus protection, on your machines. They do this to get easier access to your data, to install malware, or to otherwise exploit your data, identity, and devices. Tamper Protection helps prevent this from occurring. 

With Tamper Protection, malicious apps are prevented from taking actions like these:
- Disabling virus and threat protection
- Disabling real-time protection
- Turning off behavior monitoring
- Disabling antivirus (such as IOfficeAntivirus (IOAV))
- Disabling cloud-delivered protection
- Removing security intelligence updates

## How it works

 Tamper Protection essentially locks Microsoft Defender and prevents your security settings from being changed through apps and methods like these:
- Configuring settings in Registry Editor on your Windows machine 
- Changing settings through PowerShell cmdlets
- Editing or removing security settings through group policies
- and so on.

Tamper Protection doesn't prevent you from viewing your security settings. And, Tamper Protection doesn't affect how third-party antivirus apps register with the Windows Security app. If your organization is using Windows 10 Enterprise E5, individual users can't change the Tamper Protection setting; this is managed by your security team.

### What do you want to do?

[Turn Tamper Protection on (or off) for an individual machine](#turn-tamper-protection-on-or-off-for-an-individual-machine)

[Turn Tamper Protection on (or off) for your organization with Intune (Preview)](#turn-tamper-protection-on-or-off-for-your-organization-with-intune)

## Turn Tamper Protection on (or off) for an individual machine

If you are a home user, or you are not subject to settings managed by a security team, you can use the Windows Security app to turn Tamper Protection on or off. You must have appropriate admin permissions on your machine to perform the following task.

1. Click **Start**, and start typing *Defender*. In the search results, select **Windows Security**.

2. Select **Virus & threat protection** > **Virus & threat protection settings**.

3. Set **Tamper Protection** to **On** or **Off**.

> [!NOTE]
> Tamper Protection blocks attempts to modify Windows Defender Antivirus settings through the registry.
> 
> To help ensure that Tamper Protection doesn’t interfere with third-party security products or enterprise installation scripts that modify these settings, go to **Windows Security** and update **Security intelligence** to version 1.287.60.0 or later. (See [Security intelligence updates](https://www.microsoft.com/wdsi/definitions).)
> 
> Once you’ve made this update, Tamper Protection will continue to protect your registry settings, and will also log attempts to modify them without returning errors.


## Turn Tamper Protection on (or off) for your organization with Intune

If you are part of your organization's security team, the ability to turn Tamper Protection on (or off) for your organization in the Microsoft 365 Device Management portal (Intune) is now in preview. 

You must have appropriate [permissions](../microsoft-defender-atp/assign-portal-access.md), such as global admin, security admin, or security operations, to perform the following task. 

1. Make sure your organization meets the following requirements:

    - Your organization must have [Microsoft Defender Advanced Threat Protection E5](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp) (this is included in Microsoft 365 E5. See [Microsoft 365 Enterprise overview](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview) for more details.)
    - Your organization's devices must be managed by [Intune](https://docs.microsoft.com/intune/device-management-capabilities).
    - Your Windows machines must be running [Windows OS 1903](https://docs.microsoft.com/windows/release-information/status-windows-10-1903) or later.
    - You must be using Windows security and update [security intelligence](https://www.microsoft.com/wdsi/definitions) to version 1.287.60.0 (or above)
    - Your machines must be using anti-malware platform version 4.18.1906.3 (or above) and anti-malware engine version 1.1.15500.X (or above)


2. Go to the Microsoft 365 Device Management portal ([https://devicemanagement.microsoft.com](https://devicemanagement.microsoft.com)) and sign in with your work or school account. 

3. Select **Device configuration** > **Profiles**.

4. Create a profile that includes the following settings:

    - **Platform**: Windows 10 and later
    - **ProfileType**: Endpoint protection
    - **Settings** > Windows Defender Security Center > Tamper Protection 

5. Assign the profile to one or more groups.

## Frequently asked questions

### To which Windows OS versions is configuring Tamper Protection is applicable?

Windows 1903 May release

### Is configuring Tamper Protection in Intune supported on servers?

No

### Will Tamper Protection have any impact on third party antivirus registration?

No, third-party antivirus will continue to register with the Windows Security application.

### What happens if Microsoft Defender is not active on a device?

Tamper Protection will not have any impact on such devices.

### How can I turn Tamper Protection on/off?

If you are home user, see [Turn Tamper Protection on (or off) for an individual machine](#turn-tamper-protection-on-or-off-for-an-individual-machine).

If you are an organization using [Microsoft Defender Advanced Threat Protection E5](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp), you should be able to manage Tamper Protection in Intune similar to how you manage other endpoint protection features. See [Turn Tamper Protection on (or off) for your organization with Intune](#turn-tamper-protection-on-or-off-for-your-organization-with-intune).

 
### How does configuring Tamper Protection in Intune affect how I manage Windows Defender through my group policy?

Your regular group policy doesn’t apply to Tamper Protection, and changes to Windows Defender settings will be ignored when Tamper Protection is on.

### For Microsoft Defender Advanced Threat Protection E5, is configuring Tamper Protection in Intune targeted to the entire organization only?

Configuring Tamper Protection in Intune can be targeted to your entire organization as well as to devices and user groups with Intune.

### Can I configure Tamper Protection in System Center Configuration Manager?

Currently we do not have support to manage Tamper Protection through System Center Configuration Manager.

### I have the Windows E3 enrollment. Can I use configuring Tamper Protection in Intune?

Currently, configuring Tamper Protection in Intune is only available for customers who have [Microsoft Defender Advanced Threat Protection E5](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp).

### What happens if I try to change Microsoft Defender settings in Intune, System Center Configuration Manager, and Windows Management Instrumentation when Tamper Protection is enabled on a device?

You won’t be able to change the features that are protected by Tamper Protection; those change requests are ignored.

### I’m an enterprise customer. Can local admins change Tamper Protection on their devices?

No. Local admins cannot change or modify Tamper Protection settings.

### What happens if my device is onboarded with Microsoft Defender Advanced Threat Protection and then goes into an off-boarded state?

In this case, Tamper Protection status changes, and this feature is no longer applied.

### Will there be an alert about Tamper Protection status changing in the Microsoft Defender Advanced Threat Protection portal?

Yes. The alert is shown in [https://microsoft.securitycenter.com](https://microsoft.securitycenter.com) under **Alerts**. 

In addition, your security operations team can use hunting queries, such as the following:

`AlertEvents | where Title == "Tamper Protection bypass"`

### Will there be a group policy setting for Tamper Protection?

No.

## Related articles

[Windows 10 Enterprise Security](https://docs.microsoft.com/windows/security/index)

[Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://docs.microsoft.com/intune/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune)

[Microsoft 365 Enterprise overview (at a glance)](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview#at-a-glance)

[Microsoft Defender Advanced Threat Protection E5](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp)
