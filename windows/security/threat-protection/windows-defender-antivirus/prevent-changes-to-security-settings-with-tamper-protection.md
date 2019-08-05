---
title: Protect security settings with Tamper Protection
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
author: dansimp
ms.author: dansimp
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
- Disabling IOfficeAntivirus (IOAV)
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

## Turn Tamper Protection on (or off) in the Windows Security app

You must have appropriate admin permissions on your machine to perform the following task.

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.
2. Select **Virus & threat protection**, then select **Virus & threat protection settings**.
3. Set **Tamper Protection** to **On** or **Off**.

> [!NOTE]
> Tamper Protection blocks attempts to modify Windows Defender Antivirus settings through the registry.
> 
> To help ensure that Tamper Protection doesn’t interfere with third-party security products or enterprise installation scripts that modify these settings, go to **Windows Security** and update **Security intelligence** to version 1.287.60.0 or later.
> 
> Once you’ve made this update, Tamper Protection will continue to protect your registry settings, and will also log attempts to modify them without returning errors.

## Turn Tamper Protection on (or off) in the Microsoft 365 Device Management portal

You must have appropriate [permissions](../microsoft-defender-atp/assign-portal-access.md), such as global admin, security admin, or security operations, to perform the following task. 

1. Go to the Microsoft 365 Device Management portal ([https://devicemanagement.microsoft.com](https://devicemanagement.microsoft.com)) and sign in with your work or school account. 
2. Select Device configuration > Profiles.
1. 