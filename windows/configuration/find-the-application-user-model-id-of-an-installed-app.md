---
title: Find the Application User Model ID of an installed app
description: In order to use assigned access with Mobile Device Management (MDM), you must know the Application User Model ID (AUMID) of Microsoft Store apps installed on a device. You can find the AUMID by either using Windows PowerShell or querying the registry.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: BD8BD003-887D-4EFD-9C7A-A68AB895D8CD
author: alhopper-msft
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Find the Application User Model ID of an installed app

In order to use assigned access with Mobile Device Management (MDM), you must know the Application User Model ID (AUMID) of Microsoft Store apps installed on a device. You can find the AUMID by either using Windows PowerShell or querying the registry.

## To identify the AUMID of an installed app by using Windows PowerShell

At a Windows PowerShell command prompt, type the following commands to list the AUMIDs for all Microsoft Store apps installed for the current user on your device:

```powershell
$installedapps = get-AppxPackage

$aumidList = @()
foreach ($app in $installedapps)
{
    foreach ($id in (Get-AppxPackageManifest $app).package.applications.application.id)
    {
        $aumidList += $app.packagefamilyname + "!" + $id
    }
}

$aumidList
```

You can add the –user &lt;username&gt; or the –allusers parameters to the get-AppxPackage cmdlet to list AUMIDs for other users. You must use an elevated Windows PowerShell prompt to use the –user or –allusers parameters.

## To identify the AUMID of an installed app for the current user by using the registry

Querying the registry can only return information about Microsoft Store apps that are installed for the current user, while the Windows PowerShell query can find information for any account on the device.

At a command prompt, type the following command:

`reg query HKEY_CURRENT_USER\Software\Classes\ActivatableClasses\Package /s /f AppUserModelID | find "REG_SZ"`

## Example

The following code sample creates a function in Windows PowerShell that returns an array of AUMIDs of the installed apps for the specified user.

```powershell
function listAumids( $userAccount ) {

    if ($userAccount -eq "allusers")
    {
        # Find installed packages for all accounts. Must be run as an administrator in order to use this option.
        $installedapps = Get-AppxPackage -allusers
    }
    elseif ($userAccount)
    {
        # Find installed packages for the specified account. Must be run as an administrator in order to use this option.
        $installedapps = get-AppxPackage -user $userAccount
    }
    else
    {
        # Find installed packages for the current account.
        $installedapps = get-AppxPackage
    }

    $aumidList = @()
    foreach ($app in $installedapps)
    {
        foreach ($id in (Get-AppxPackageManifest $app).package.applications.application.id)
        {
            $aumidList += $app.packagefamilyname + "!" + $id
        }
    }

    return $aumidList
}
```

The following Windows PowerShell commands demonstrate how you can call the listAumids function after you have created it.

```powershell
# Get a list of AUMIDs for the current account:
listAumids

# Get a list of AUMIDs for an account named “CustomerAccount”:
listAumids("CustomerAccount")

# Get a list of AUMIDs for all accounts on the device:
listAumids("allusers")
```
