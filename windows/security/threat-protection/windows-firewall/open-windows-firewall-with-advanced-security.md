---
title: Open Windows Defender Firewall with Advanced Security (Windows)
description: Learn how to open the Windows Defender Firewall with Advanced Security console. You must be a member of the Administrators group.
ms.assetid: 788faff2-0f50-4e43-91f2-3e2595c0b6a1
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: mde
---

# Open Windows Defender Firewall with Advanced Security

**Applies to**
-   Windows 10
-   Windows 11
-   Windows Server 2016 and above

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
