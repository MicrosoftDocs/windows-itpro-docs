---
title: Prevent security settings changes with Tamper Protection
description: Use tamper protection to prevent malicious apps from changing important security settings.
keywords: malware, defender, antivirus, tamper protection
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: andreabichsel
ms.author: v-anbic
---

# Prevent security settings changes with tamper protection

**Applies to:**

- Windows 10

Tamper protection helps prevent malicious apps from changing important security settings. These settings include:

- Real-time protection
- Cloud-delivered protection
- IOfficeAntivirus (IOAV)
- Behavior monitoring
- Removing security intelligence updates

With tamper protection set to **On**, you can still change these settings in the Windows Security app. The following apps and methods can't change these settings:

- Mobile device management (MDM) apps like Intune
- Enterprise configuration management apps like System Center Configuration Manager (SCCM)
- Command line instruction MpCmdRun.exe -removedefinitions -dynamicsignatures
- Windows System Image Manager (Windows SIM) settings DisableAntiSpyware and DisableAntiMalware (used in Windows unattended setup)
- Group Policy
- Other Windows Management Instrumentation (WMI) apps

The tamper protection setting doesn't affect how third party antivirus apps register with the Windows Security app.

On computers running Windows 10 Enterprise E5, users can't change the tamper protection setting.

Tamper protection is On by default. If you set tamper protection to **Off**, you will see a yellow warning in the Windows Security app under **Virus & threat protection**.

## Configure tamper protection

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.
2. Select **Virus & threat protection**, then select **Virus & threat protection settings**.
3. Set **Tamper Protection** to **On** or **Off**.

>[!NOTE]
>If your computer is running Windows 10 Enterprise E5, you can't change the tamper protection settings from within Windows Security App.