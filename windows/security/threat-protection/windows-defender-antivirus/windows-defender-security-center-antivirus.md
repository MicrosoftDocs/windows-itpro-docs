---
title: Windows Defender Antivirus in the Windows Security app
description: Windows Defender AV is now included in the Windows Security app.
keywords: wdav, antivirus, firewall, security, windows
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Windows Defender Antivirus in the Windows Security app

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

In Windows 10, version 1703 and later, the Windows Defender app is part of the Windows Security.

Settings that were previously part of the Windows Defender client and main Windows Settings have been combined and moved to the new app, which is installed by default as part of Windows 10, version 1703.

> [!IMPORTANT]
> Disabling the Windows Security Center service will not disable Windows Defender AV or [Windows Defender Firewall](https://docs.microsoft.com/windows/access-protection/windows-firewall/windows-firewall-with-advanced-security). These are disabled automatically when a third-party antivirus or firewall product is installed and kept up to date.

> [!WARNING]
> If you do disable the Windows Security Center service, or configure its associated Group Policy settings to prevent it from starting or running, the Windows Security app may display stale or inaccurate information about any antivirus or firewall products you have installed on the device. 
>It may also prevent Windows Defender AV from enabling itself if you have an old or outdated third-party antivirus, or if you uninstall any third-party antivirus products you may have previously installed. 
>This will significantly lower the protection of your device and could lead to malware infection.


See the [Windows Security topic](/windows/threat-protection/windows-defender-security-center/windows-defender-security-center) for more information on other Windows security features that can be monitored in the app.

>[!NOTE]
>The Windows Security app is a client interface on Windows 10, version 1703 and later. It is not the Microsoft Defender Security Center web portal that is used to review and manage [Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md).

**Review virus and threat protection settings in the Windows Security app:**

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).

![Screenshot of the Virus & threat protection settings label in the Windows Security app](images/defender/wdav-protection-settings-wdsc.png)
    
## Comparison of settings and functions of the old app and the new app

All of the previous functions and settings from the Windows Defender app (in versions of Windows 10 before version 1703) are now found in the new Windows Security app. Settings that were previously located in Windows Settings under **Update & security** > **Windows Defender** are also now in the new app. 

The following diagrams compare the location of settings and functions between the old and new apps:

![Version of Windows Defender in Windows 10 before version 1703](images/defender/wdav-windows-defender-app-old.png)

![Windows Defender Antivirus in Windows 10, version 1703 and later](images/defender/wdav-wdsc.png)

Item | Windows 10, before version 1703 | Windows 10, version 1703 and later | Description
---|---|---|---
1 | **Update** tab | **Protection updates** | Update the protection (Security intelligence)
2 | **History** tab | **Scan history** | Review threats that were quarantined, removed, or allowed
3 | **Settings** (links to **Windows Settings**) | **Virus & threat protection settings** | Enable various features, including Real-time protection, Cloud-delivered protection, Advanced notifications, and Automatic ample submission
4 | **Scan options** | **Advanced scan** | Run a full scan, custom scan, or a Windows Defender Offline scan
5 | Run a scan (based on the option chosen under **Scan options** | **Quick scan** | In Windows 10, version 1703 and later, you can run custom and full scans under the **Advanced scan** option


## Common tasks

This section describes how to perform some of the most common tasks when reviewing or interacting with the threat protection provided by Windows Defender Antivirus in the Windows Security app.

> [!NOTE]
> If these settings are configured and deployed using Group Policy, the settings described in this section will be greyed-out and unavailable for use on individual endpoints. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings. The [Configure end-user interaction with Windows Defender Antivirus](configure-end-user-interaction-windows-defender-antivirus.md) topic describes how local policy override settings can be configured.

<a id="scan"></a>
**Run a scan with the Windows Security app**
1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Click **Scan now**.

4. Click **Run a new advanced scan** to specify different types of scans, such as a full scan.

<a id="definition-version"></a>
**Review the security intelligence update version and download the latest updates in the Windows Security app**
1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Click **Virus & threat protection updates**. The currently installed version is displayed along with some information about when it was downloaded. You can check this against the latest version available for manual download, or review the change log for that version.

![Security intelligence version number information](images/defender/wdav-wdsc-defs.png)

4. Click **Check for updates** to download new protection updates (if there are any).



**Ensure Windows Defender Antivirus is enabled in the Windows Security app**

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Click **Virus & threat protection settings**.

4. Toggle the **Real-time protection** switch to **On**.

>[!NOTE]
>If you switch **Real-time protection** off, it will automatically turn back on after a short delay. This is to ensure you are protected from malware and threats.  
>If you install another antivirus product, Windows Defender AV will automatically disable itself and will indicate this in the Windows Security app. A setting will appear that will allow you to enable [limited periodic scanning](limited-periodic-scanning-windows-defender-antivirus.md).


<a id="exclusions"></a>
**Add exclusions for Windows Defender Antivirus in the Windows Security app**
1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Click **Virus & threat protection settings**.

4. Under the **Exclusions** setting, click **Add or remove exclusions**. 

5. Click the plus icon to choose the type and set the options for each exclusion. 

<a id="detection-history"></a>
**Review threat detection history in the Windows Defender Security Center app**
1. Open the Windows Defender Security Center app by clicking the shield icon in the task bar or searching the start menu for **Defender**.
 
2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).
 
3. Click **Threat history**.
 
4. Click **See full history** under each of the categories (**Current threats**, **Quarantined threats**, **Allowed threats**).
 
<a id="ransomware"></a>
**Set ransomware protection and recovery options**
1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Click **Ransomware protection**.

4. To change Controlled folder access settings, see [Protect important folders with Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard).

5. To set up ransomware recovery options, click **Set up** under **Ransomware data recovery** and follow the instructions for linking or setting up your OneDrive account so you can easily recover from a ransomware attack.


## Related topics

- [Windows Defender Antivirus](windows-defender-antivirus-in-windows-10.md)


