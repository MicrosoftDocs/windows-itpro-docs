---
title: Open Windows Defender Firewall with Advanced Security (Windows)
description: Learn how to open the Windows Defender Firewall with Advanced Security console. You must be a member of the Administrators group.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Open Windows Defender Firewall with Advanced Security


This procedure shows you how to open the Windows Defender Firewall with Advanced Security console.

**Administrative credentials**

To complete this procedure, you must be a member of the Administrators group. For more information, see Additional considerations.

## To open Windows Defender Firewall using the UI

Click Start, type **Windows Defender Firewall**, and then press ENTER.

## To open Windows Defender Firewall from a command prompt

1.  Open a command prompt window.

2.  At the command prompt, type:

    ``` syntax
    wf.msc
    ```

**Additional considerations**

Although standard users can start the Windows Defender Firewall MMC snap-in, to change most settings the user must be a member of a group with the permissions to modify those settings, such as Administrators.
