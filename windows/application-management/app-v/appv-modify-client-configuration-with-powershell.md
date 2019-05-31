---
title: How to Modify Client Configuration by Using Windows PowerShell (Windows 10)
description: How to Modify Client Configuration by Using Windows PowerShell
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
---


# How to Modify Client Configuration by Using Windows PowerShell

**Applies to**
-   Windows 10, version 1607

Use the following procedure to configure the App-V client configuration.

1.  To configure the client settings using Windows PowerShell, use the **Set-AppVClientConfiguration** cmdlet. For more information about installing Windows PowerShell, and a list of cmdlets see, [How to Load the Windows PowerShell Cmdlets for App-V and Get Cmdlet Help](appv-load-the-powershell-cmdlets-and-get-cmdlet-help.md).

2.  To modify the client configuration, open a Windows PowerShell Command prompt and run **Set-AppVClientConfiguration** with any required parameters. For example:

    `$config = Get-AppVClientConfiguration`

    `Set-AppVClientConfiguration $config`

    `Set-AppVClientConfiguration –Name1 MyConfig –Name2 "xyz"`


 
 
<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Operations for App-V](appv-operations.md)
