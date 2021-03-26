---
title: Microsoft Defender Antivirus in the Windows Security app
description: With Microsoft Defender Antivirus now included in the Windows Security app, you can review, compare, and perform common tasks.
keywords: wdav, antivirus, firewall, security, windows
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Microsoft Defender Antivirus in the Windows Security app

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

In Windows 10, version 1703 and later, the Windows Defender app is part of the Windows Security.

Settings that were previously part of the Windows Defender client and main Windows Settings have been combined and moved to the new app, which is installed by default as part of Windows 10, version 1703.

> [!IMPORTANT]
> Disabling the Windows Security Center service does not disable Microsoft Defender Antivirus or [Windows Defender Firewall](../windows-firewall/windows-firewall-with-advanced-security.md). These are disabled automatically when a third-party antivirus or firewall product is installed and kept up to date.
>
> If you do disable the Windows Security Center service, or configure its associated Group Policy settings to prevent it from starting or running, the Windows Security app might display stale or inaccurate information about any antivirus or firewall products you have installed on the device.
> It might also prevent Microsoft Defender Antivirus from enabling itself if you have an old or outdated third-party antivirus, or if you uninstall any third-party antivirus products you might have previously installed.
> This will significantly lower the protection of your device and could lead to malware infection.

See the [Windows Security article](/windows/threat-protection/windows-defender-security-center/windows-defender-security-center) for more information on other Windows security features that can be monitored in the app.

The Windows Security app is a client interface on Windows 10, version 1703 and later. It is not the Microsoft Defender Security Center web portal that is used to review and manage [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint).

## Review virus and threat protection settings in the Windows Security app

![Screenshot of the Virus & threat protection settings label in the Windows Security app](images/defender/wdav-protection-settings-wdsc.png)

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).
   
The following sections describe how to perform some of the most common tasks when reviewing or interacting with the threat protection provided by Microsoft Defender Antivirus in the Windows Security app.

> [!NOTE]
> If these settings are configured and deployed using Group Policy, the settings described in this section will be greyed-out and unavailable for use on individual endpoints. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings. The [Configure end-user interaction with Microsoft Defender Antivirus](configure-end-user-interaction-microsoft-defender-antivirus.md) topic describes how local policy override settings can be configured.

## Run a scan with the Windows Security app

1. Open the Windows Security app by searching the start menu for **Security**, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Quick scan**. Or, to run a full scan, select **Scan options**, and then select an option, such as **Full scan**.

## Review the security intelligence update version and download the latest updates in the Windows Security app

![Security intelligence version number information](images/defender/wdav-wdsc-defs.png)

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Virus & threat protection updates**. The currently installed version is displayed along with some information about when it was downloaded. You can check your current against the latest version available for manual download, or review the change log for that version. See [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).

4. Select **Check for updates** to download new protection updates (if there are any).

## Ensure Microsoft Defender Antivirus is enabled in the Windows Security app

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Virus & threat protection settings**.

4. Toggle the **Real-time protection** switch to **On**.

    > [!NOTE]
    > If you switch **Real-time protection** off, it will automatically turn back on after a short delay. This is to ensure you are protected from malware and threats.
    > If you install another antivirus product, Microsoft Defender Antivirus automatically disables itself and is indicated as such in the Windows Security app. A setting will appear that will allow you to enable [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md).

## Add exclusions for Microsoft Defender Antivirus in the Windows Security app

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Under the **Manage settings**, select **Virus & threat protection settings**.

4. Under the **Exclusions** setting, select **Add or remove exclusions**. 

5. Select the plus icon (**+**) to choose the type and set the options for each exclusion. 

The following table summarizes exclusion types and what happens:

|Exclusion type  |Defined by  |What happens  |
|---------|---------|---------|
|**File** |Location <br/>Example: `c:\sample\sample.test` |The specific file is skipped by Microsoft Defender Antivirus. |
|**Folder**    |Location <br/>Example: `c:\test\sample`       |All items in the specified folder are skipped by Microsoft Defender Antivirus.         |
|**File type**   |File extension <br/>Example: `.test` |All files with the `.test` extension anywhere on your device are skipped by Microsoft Defender Antivirus.         |
|**Process**     |Executable file path <br>Example: `c:\test\process.exe`         |The specific process and any files that are opened by that process are skipped by Microsoft Defender Antivirus.         |

To learn more, see the following resources:
- [Configure and validate exclusions based on file extension and folder location](./configure-extension-file-exclusions-microsoft-defender-antivirus.md) 
- [Configure exclusions for files opened by processes](./configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)

## Review threat detection history in the Windows Defender Security Center app

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Protection history**. Any recent items are listed.

## Set ransomware protection and recovery options

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Under **Ransomware protection**, select **Manage ransomware protection**.

4. To change **Controlled folder access** settings, see [Protect important folders with Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders).

5. To set up ransomware recovery options, select **Set up** under **Ransomware data recovery** and follow the instructions for linking or setting up your OneDrive account so you can easily recover from a ransomware attack.

## See also
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-in-windows-10.md)