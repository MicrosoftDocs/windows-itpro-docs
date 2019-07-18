---
title: Prevent security settings changes with Tamper Protection
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

# Prevent security settings changes with tamper protection

**Applies to:**

- Windows 10

Tamper Protection helps prevent malicious apps from changing important security settings. These settings include:

- Real-time protection
- Cloud-delivered protection
- IOfficeAntivirus (IOAV)
- Behavior monitoring
- Removing security intelligence updates

With Tamper Protection set to **On**, you can still change these settings in the Windows Security app. The following apps and methods can't change these settings:

- Mobile device management (MDM) apps like Intune
- Enterprise configuration management apps like System Center Configuration Manager (SCCM)
- Command line instruction MpCmdRun.exe -removedefinitions -dynamicsignatures
- Windows System Image Manager (Windows SIM) settings DisableAntiSpyware and DisableAntiMalware (used in Windows unattended setup)
- Group Policy
- Other Windows Management Instrumentation (WMI) apps

The Tamper Protection setting doesn't affect how third party antivirus apps register with the Windows Security app.

On computers running Windows 10 Enterprise E5, users can't change the Tamper Protection setting.

Tamper Protection is set to **On** by default. If you set Tamper Protection to **Off**, you will see a yellow warning in the Windows Security app under **Virus & Threat Protection**.

## Configure tamper protection

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.
2. Select **Virus & threat protection**, then select **Virus & threat protection settings**.
3. Set **Tamper Protection** to **On** or **Off**.

>[!NOTE]
>Tamper Protection blocks attempts to modify Windows Defender Antivirus settings through the registry.
>
>To help ensure that Tamper Protection doesn’t interfere with third-party security products or enterprise installation scripts that modify these settings, go to **Windows Security** and update **Security intelligence** to version 1.287.60.0 or later.
>
>Once you’ve made this update, Tamper Protection will continue to protect your registry settings, and will also log attempts to modify them without returning errors.
