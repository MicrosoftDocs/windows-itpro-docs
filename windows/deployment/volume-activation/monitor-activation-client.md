---
title: Monitor activation (Windows 10)
ms.assetid: 264a3e86-c880-4be4-8828-bf4c839dfa26
ms.reviewer: 
manager: laurawi
ms.author: greglin
description:
keywords: vamt, volume activation, activation, windows activation
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Monitor activation

**Applies to**
-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2012
-   Windows Server 2008 R2

**Looking for retail activation?**

-   [Get Help Activating Microsoft Windows](https://go.microsoft.com/fwlink/p/?LinkId=618644)

You can monitor the success of the activation process for a computer running Windows 8.1 in several ways. The most popular methods include:
-   Using the Volume Licensing Service Center website to track use of MAK keys.
-   Using the **Slmgr /dlv** command on a client computer or on the KMS host. (For a full list of options, see [Slmgr.vbs Options](https://technet.microsoft.com/library/ff793433.aspx).)
-   Viewing the licensing status, which is exposed through Windows Management Instrumentation (WMI); therefore, it is available to non-Microsoft or custom tools that can access WMI. (Windows PowerShell can also access WMI information.)
-   Most licensing actions and events are recorded in the Event log.
-   Microsoft System Center Operations Manager and the KMS Management Pack can provide insight and information to users of System Center Operations Manager.
-   The VAMT provides a single site from which to manage and monitor volume activations. This is explained in the next section.

## See also

-   [Volume Activation for Windows 10](volume-activation-windows-10.md)
 
 
