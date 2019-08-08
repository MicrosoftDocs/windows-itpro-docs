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

Tamper Protection doesn't prevent you from viewing your security settings, or your security team from viewing or changing settings for your organization. In addition, Tamper Protection doesn't affect how third-party antivirus apps register with the Windows Security app.

> [!NOTE]
> On computers running Windows 10 Enterprise E5, users can't change the Tamper Protection setting.

## Turn Tamper Protection on (or off) for your organization 

If you are part of your organization's security team, you can turn Tamper Protection on (or off) in the Microsoft 365 Device Management portal. You must have appropriate [permissions](../microsoft-defender-atp/assign-portal-access.md), such as global admin, security admin, or security operations, to perform the following task. 

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
