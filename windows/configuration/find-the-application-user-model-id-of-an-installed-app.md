---
title: Find the Application User Model ID of an installed app
ms.reviewer: 
manager: dansimp
description: To configure assigned access (kiosk mode), you need the Application User Model ID (AUMID) of apps installed on a device. 
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.prod: w10
---
# Find the Application User Model ID of an installed app

To configure assigned access (kiosk mode), you need the Application User Model ID (AUMID) of apps installed on a device. You can find the AUMID by using Windows PowerShell, File Explorer, or the registry.

## To find the AUMID by using Windows PowerShell

To get the names and AUMIDs for all apps installed for the current user, open a Windows PowerShell command prompt and enter the following command:

```powershell
get-StartApps
```

To get the names and AUMIDs for Windows Store apps installed for another user, open a Windows PowerShell command prompt and enter the following commands:

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

## To find the AUMID by using File Explorer

To get the names and AUMIDs for all apps installed for the current user, perform the following steps:

1. Open **Run**, enter **shell:Appsfolder**, and select **OK**.

2. A File Explorer window opens. Press **Alt** > **View** > **Choose details**.

3. In the **Choose Details** window, select **AppUserModelId**, and then select **OK**. (You might need to change the **View** setting from **Tiles** to **Details**.)

![Image of the Choose Details options](images/aumid-file-explorer.png)

## To find the AUMID of an installed app for the current user by using the registry

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
