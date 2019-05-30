---
title: How to Load the Windows PowerShell Cmdlets for App-V and Get Cmdlet Help (Windows 10)
description: How to Load the Windows PowerShell Cmdlets for App-V and Get Cmdlet Help
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/27/2018
ms.topic: article
---
# How to load the Windows PowerShell cmdlets for App-V and get cmdlet help

>Applies to: Windows 10, version 1607

## Requirements for using Windows PowerShell cmdlets

This section will tell you what you'll need to use the PowerShell cmdlets.

### How to let users access PowerShell cmdlets

You can grant your users access to PowerShell cmdlets through one of the following methods:

* While you're deploying and configuring the App-V server, specify an Active Directory group or individual user with permissions to manage the App-V environment. For more information, see [How to deploy the App-V Server](appv-deploy-the-appv-server.md).
* After you've deployed the App-V server, you can use the App-V Management console to add an additional Active Directory group or user. For more information, see [How to add or remove an administrator by using the Management console](appv-add-or-remove-an-administrator-with-the-management-console.md).

### Elevated command prompt

You'll need an elevated command prompt to run the following cmdlets:

* **Add-AppvClientPackage**
* **Remove-AppvClientPackage**
* **Set-AppvClientConfiguration**
* **Add-AppvClientConnectionGroup**
* **Remove-AppvClientConnectionGroup**
* **Add-AppvPublishingServer**
* **Remove-AppvPublishingServer**
* **Send-AppvClientReport**
* **Set-AppvClientMode**
* **Set-AppvClientPackage**
* **Set-AppvPublishingServer**

### Other cmdlets

The following cmdlets are ones that end-users can run unless you configure them to require an elevated command prompt.

* **Publish-AppvClientPackage**
* **Unpublish-AppvClientPackage**

To configure these cmdlets to require an elevated command prompt, use one of the following methods:

* Run the **Set-AppvClientConfiguration** cmdlet with the *-RequirePublishAsAdmin* parameter. For more information, see the following resources:
    * [How to manage connection groups on a stand-alone computer by using Windows PowerShell](appv-manage-connection-groups-on-a-stand-alone-computer-with-powershell.md)
    * [Understanding pending packages: UserPending and GlobalPending](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#about-pending-packages-userpending-and-globalpending)
* Enable the **Require publish as administrator** Group Policy setting for App-V Clients. For more information, see [How to publish a package by using the Management Console](appv-publish-a-packages-with-the-management-console.md).

## Loading the Windows PowerShell cmdlets

To load the Windows PowerShell cmdlet modules:

1. Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).
2. Enter one of the following cmdlets to load a list of usable cmdlets for the module you want:

|App-v component|Cmdlet to enter|
|---|---|
|App-V Server|**Import-Module AppvServer**|
|App-V Sequencer|**Import-Module AppvSequencer**|
|App-V Client|**Import-Module AppvClient**|

## Getting help for the Windows PowerShell cmdlets

Starting in App-V 5.0 SP3, cmdlet help is available in two formats:

* As a downloadable module in PowerShell. To access the module, open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE) and enter one of the cmdlets from the following table.

|App-v component|Cmdlet to enter|
|---|---|
|App-V Server|**Update-Help -Module AppvServer**|
|App-V Sequencer|**Update-Help -Module AppvSequencer**|
|App-V Client|**Update-Help -Module AppvClient**|

* Online in the [Microsoft Desktop Optimization Pack](https://docs.microsoft.com/powershell/mdop/get-started?view=win-mdop2-ps).

## Displaying the help for a Windows PowerShell cmdlet

To display help for a specific Windows PowerShell cmdlet:

1. Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).
2. Enter **Get-Help** followed by the cmdlet you need help with. For example:
   ```PowerShell
   Get-Help Publish-AppvClientPackage
   ```



