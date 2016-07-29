---
title: How to Modify Client Configuration by Using PowerShell (Windows 10)
description: How to Modify Client Configuration by Using PowerShell
author: jamiejdt
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Modify Client Configuration by Using PowerShell


Use the following procedure to configure the App-V client configuration.

**To modify App-V client configuration using PowerShell**

1.  To configure the client settings using PowerShell, use the **Set-AppvClientConfiguration** cmdlet. For more information about installing PowerShell, and a list of cmdlets see, [How to Load the PowerShell Cmdlets and Get Cmdlet Help](appv-load-the-powershell-cmdlets-and-get-cmdlet-help.md).

2.  To modify the client configuration, open a PowerShell Command prompt and run the following cmdlet **Set-AppvClientConfiguration** with any required parameters. For example:

    `$config = Get-AppvClientConfiguration`

    `Set-AppcClientConfiguration $config`

    `Set-AppcClientConfiguration –Name1 MyConfig –Name2 “xyz”`

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)

 

 





