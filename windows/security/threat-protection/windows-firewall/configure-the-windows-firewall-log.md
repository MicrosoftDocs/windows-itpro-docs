---
title: Configure the Windows Defender Firewall Log (Windows 10)
description: Configure the Windows Defender Firewall Log
ms.assetid: f037113d-506b-44d3-b9c0-0b79d03e7d18
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 08/17/2017
---

# Configure the Windows Defender Firewall with Advanced Security Log

**Applies to**
-   Windows 10
-   Windows Server 2016

To configure Windows Defender Firewall with Advanced Security to log dropped packets or successful connections, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management MMC snap-in.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## To configure the Windows Defender Firewall with Advanced Security log

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane, in the **Overview** section, click **Windows Defender Firewall Properties**.

3.  For each network location type (Domain, Private, Public), perform the following steps.

    1.  Click the tab that corresponds to the network location type.

    2.  Under **Logging**, click **Customize**.

    3.  The default path for the log is **%windir%\\system32\\logfiles\\firewall\\pfirewall.log**. If you want to change this, clear the **Not configured** check box and type the path to the new location, or click **Browse** to select a file location.

        >**Important:**  The location you specify must have permissions assigned that permit the Windows Defender Firewall service to write to the log file.

    4.  The default maximum file size for the log is 4,096 kilobytes (KB). If you want to change this, clear the **Not configured** check box, and type in the new size in KB, or use the up and down arrows to select a size. The file will not grow beyond this size; when the limit is reached, old log entries are deleted to make room for the newly created ones.

    5.  No logging occurs until you set one of following two options:

        -   To create a log entry when Windows Defender Firewall drops an incoming network packet, change **Log dropped packets** to **Yes**.

        -   To create a log entry when Windows Defender Firewall allows an inbound connection, change **Log successful connections** to **Yes**.

    6.  Click **OK** twice.
