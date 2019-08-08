---
title: Protect security settings with tamper protection
ms.reviewer: 
manager: dansimp
description: Use tamper protection to prevent malicious apps from changing important security settings.
keywords: malware, defender, antivirus, tamper protection
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
---

# Protect security settings with tamper protection

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

Tamper Protection doesn't prevent you from viewing your security settings, or your security team from viewing or changing settings for your organization. In addition, Tamper Protection doesn't affect how third-party antivirus apps register with the Windows Security app. Note that if your organization is using Windows 10 Enterprise E5, individual users can't change the Tamper Protection setting; this is managed by your security team.

### What do you want to do?

- [Turn Tamper Protection on (or off) for an individual machine](#turn-tamper-protection-on-or-off-for-an-individual-machine)

- [Turn Tamper Protection on (or off) for your organization with Intune](#turn-tamper-protection-on-or-off-for-your-organization-with-intune)

## Turn Tamper Protection on (or off) for an individual machine

If you are a home user, or you are not subject to settings managed by a security team, you can use the Windows Security app to turn Tamper Protection on or off. You must have appropriate admin permissions on your machine to perform the following task.

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Select **Virus & threat protection**, then select **Virus & threat protection settings**.

3. Set **Tamper Protection** to **On** or **Off**.

> [!NOTE]
> Tamper Protection blocks attempts to modify Windows Defender Antivirus settings through the registry.
> 
> To help ensure that Tamper Protection doesn’t interfere with third-party security products or enterprise installation scripts that modify these settings, go to **Windows Security** and update **Security intelligence** to version 1.287.60.0 or later.
> 
> Once you’ve made this update, Tamper Protection will continue to protect your registry settings, and will also log attempts to modify them without returning errors.


## Turn Tamper Protection on (or off) for your organization with Intune

If you are part of your organization's security team, you can now turn Tamper Protection on (or off) in the Microsoft 365 Device Management portal (Intune). You must have appropriate [permissions](../microsoft-defender-atp/assign-portal-access.md), such as global admin, security admin, or security operations, to perform the following task. 

1. Make sure your organization meets the following requirements:

    - Your organization must have Microsoft 365 E5, which includes Defender Advanced Threat Protection. (See [Microsoft 365 Enterprise overview](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview) for more details.)
    - Your organization's devices must be managed by Intune.
    - Your Windows machines must be running Windows OS 1903 or later.
    - Your machines must be using antimalware platform version  4.18.1906.3 (or above) and antimalware engine version 15500.X (or above)
    - You must be using Windows Security and update security intelligence to version 1.287.60.0 (or above)

2. Go to the Microsoft 365 Device Management portal ([https://devicemanagement.microsoft.com](https://devicemanagement.microsoft.com)) and sign in with your work or school account. 

3. Select **Device configuration** > **Profiles**.

4. Create a profile that includes the following settings:

    - Platform: Windows 10 and later
    - ProfileType: Endpoint protection
    - Settings > Windows Defender Security Center > Tamper Protection 

5. Assign the profile to one or more groups.

### Frequently asked questions about configuring tamper protection in Intune (Microsoft 365 E5)

#### To which Windows OS versions is configuring Tamper Protection is applicable?

Ans: Windows 1903 May release

#### Is feature supported on servers?

No

#### Will the feature has any impact on third party AV registration?

No, third party AV will continue to register with Windows Security Application

#### What happens if defender is not active on the device?

Feature will not have any impact on such devices

#### How can I turn feature on/off?

If you are home user, you should be able to turn feature on/off from windows security center app
 
If you are MDATP E5 customer, you should be able to mange feature from Intune in similar way you manage other endpoint protection features.
1.	Go to Device configuration – profiles 
2.	Create a profile
a.	Platform: Windows 10 and later.
b.	ProfileType: Endpoint protection
c.	Settings/Windows Defender Security Center/Tamper Protection 
3.	Assign the profile to groups
 
#### How does this affect how i manage WD through my group policy?

“regular group policy doesn’t apply to tamper protection, and changes to WD setting will be ignored when TP is on”

#### For MDATP E5, is the  feature targeted to org only?

Feature can be targeted to entire og, device and user group via Intune

#### Can I manage feature from SCCM?

Currently we do not have support to mange Tamper protection through SCCM

#### I have windows E3 enrollment, can I use this feature
At present feature is only available for MDATP E5

#### What happens if I try to change defender setting from Intune, SCCM, WMI when tamper protection is enabled on the device

You won’t be able to turn the feature on; those change request will be ignored.

#### I’m enterprise customer, can local admin change the tamper protection from the device

No local admin will not be able to change/modify tamper protection state.

#### What happens if my device is MDATP (Sense onboarded) and then goes into off boarded state?

TP state will be changed, and feature will not be applicable

#### Will there be alert on defender tampering on Microsoft Defender ATP portal

Yes. it will be shown as alert and sec ops can also do write hunting query.
Go to Microsoft.securitycerter.com/
Under alerts you could see the alerts
 
You can use advance hunting  query as shown below
 
