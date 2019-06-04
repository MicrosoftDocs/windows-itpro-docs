---
title: Configure always-on real-time Windows Defender Antivirus protection
description: Enable and configure Windows Defender Antivirus real-time protection features such as behavior monitoring, heuristics, and machine-learning
keywords: antivirus, real-time protection, rtp, machine-learning, behavior monitoring, heuristics
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 11/13/2018
ms.reviewer: 
manager: dansimp
---

# Enable and configure antivirus always-on protection and monitoring

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Always-on protection consists of real-time protection, behavior monitoring, and heuristics to identify malware based on known suspicious and malicious activities.

These activities include events such as processes making unusual changes to existing files, modifying or creating automatic startup registry keys and startup locations (also known as auto-start extensibility points, or ASEPs), and other changes to the file system or file structure.

## Configure and enable always-on protection

You can configure how always-on protection works with the Group Policy settings described in this section.

To configure these settings:

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

4. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK** and repeat for any other settings.

Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Real-time protection | Monitor file and program activity on your computer | The Windows Defender Antivirus engine makes note of any file changes (file writes, such as moves, copies, or modifications) and general program activity (programs that are opened or running and that cause other programs to run) | Enabled
Real-time protection | Scan all downloaded files and attachments | Downloaded files and attachments are automatically scanned. This operates in addition to the SmartScreen filter, which scans files before and during downloading | Enabled
Real-time protection | Turn on process scanning whenever real-time protection is enabled | You can independently enable the Windows Defender Antivirus engine to scan running processes for suspicious modifications or behaviors. This is useful if you have temporarily disabled real-time protection and want to automatically scan processes that started while it was disabled | Enabled
Real-time protection | Turn on behavior monitoring | The AV engine will monitor file processes, file and registry changes, and other events on your endpoints for suspicious and known malicious activity | Enabled
Real-time protection | Turn on raw volume write notifications | Information about raw volume writes will be analyzed by behavior monitoring | Enabled
Real-time protection | Define the maximum size of downloaded files and attachments to be scanned | You can define the size in kilobytes | Enabled
Real-time protection | Configure monitoring for incoming and outgoing file and program activity | Specify whether monitoring should occur on incoming, outgoing, both, or neither direction. This is relevant for Windows Server installations where you have defined specific servers or Server Roles that see large amounts of file changes in only one direction and you want to improve network performance. Note that fully updated endpoints (and servers) on a network will see little performance impact irrespective of the number or direction of file changes. | Enabled (both directions)
Scan | Turn on heuristics | Heuristic protection will disable or block suspicious activity immediately before the Windows Defender Antivirus engine is asked to detect the activity | Enabled
Root | Allow antimalware service to startup with normal priority | You can lower the priority of the Windows Defender Antivirus engine, which may be useful in lightweight deployments where you want to have as lean a startup process as possible. This may impact protection on the endpoint. | Enabled
Root | Allow antimalware service to remain running always | If protection updates have been disabled, you can set Windows Defender Antivirus to still run. This lowers the protection on the endpoint. | Disabled

## Disable real-time protection
> [!WARNING]
> Disabling real-time protection will drastically reduce the protection on your endpoints and is not recommended.

The main real-time protection capability is enabled by default, but you can disable it with Group Policy:

**Use Group Policy to disable real-time protection:**

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus > Real-time protection**.

4. Double-click the **Turn off real-time protection** setting and set the option to **Enabled**. Click **OK**.

## Related topics

- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
