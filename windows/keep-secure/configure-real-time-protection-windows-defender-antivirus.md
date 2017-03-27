---
title: Configure always-on real-time protection in Windows Defender AV
description: Enable and configure real-time protectoin features such as behavior monitoring, heuristics, and machine-learning in Windows Defender AV
keywords: real-time protection, rtp, machine-learning, behavior monitoring, heuristics
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---



# Enable and configure Windows Defender AV always-on protection and monitoring



**Applies to:**

- Windows 10


**Audience**

- Enterprise security administrators


**Manageability available with**

- Group Policy




Always-on protection consists of real-time protection, behavior monitoring, and heuristics to identify malware based on known suspicious and malicious activities. 

These activities include events such as processes making unusual changes to existing files, modifiying or creating automatic startup registry keys and startup locations (also known as auto-start extensibilty points, or ASEPs), and other changes to the file system or file structure.


## Configure and enable always-on protection

You can configure how always-on protection works with the following Group Policy settings described in this section.

To configure these settings:

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus** and then the **Location** specified in the table below.

6. Double-click the policy **Setting** as specified in the table below, and set the option to your desired configuration. Click **OK**, and repeat for any other settings.




Location | Setting | Description | Default setting (if not configured)
---|---|---|---
Real-time protection | Monitor file and program activity on your computer | The AV engine makes note of any file changes (file writes, such as moves, copies, or modifications) and general program activity (programs that are opened or running and that cause other programs to run) | Enabled
Real-time protection | Scan all downloaded files and attachments | Downloaded files and attachments are automatically scanned. This operates in addition to Windows Defender SmartScreen filter, which scans files before and during downloading | Enabled
Real-time protection | Turn on process scanning whenever real-time protection is enabled | You can independently enable the AV engine to scan running processes for suspicious modifications or behaviors. This is useful if you have disabled real-time protection | Enabled
Real-time protection | Turn on behavior monitoring | The AV engine will monitor file processes, file and registry changes, and other events on your endpoints for suspicious and known malicious activity | Enabled
Real-time protection | Turn on raw volume write notifications | Information about raw volume writes will be analysed by behavior monitoring | Enabled
Real-time protection | Define the maximum size of downloaded files and attachments to be scanned | You can define the size in kilobytes | Enabled 
Real-time protection | Configure monitoring for incoming and outgoing file and program activity | Specify whether monitoring should occur on incoming, outgoing, both, or neither direction. This is relevant for Windows Server installations where you have defined specific servers or server roles that see large amounts of file changes in only one direction and you want to improve network performance. Note that fully updated endpoints (and servers) on a network will see little performance impact irrespective of the number or direction of file changes. 
Scan	| Turn on heuristics | Heuristic protection will disable or block suspicious activity immediately before the AV engine is asked to detect the activity | Enabled (both directions)




## Disable real-time protection
> [!WARNING]
> Disabling real-time protection will drastically reduce the protection on your endpoints and is not recommended.

The main real-time protection capability is enabled by default, but you can disable it with Group Policy:

**Use Group Policy to diasble real-time protection:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Real-time protection**.

6. Double-click the **Turn off real-time protection** setting and set the option to **Enabled**. Click **OK**. 



## Related topics

- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)