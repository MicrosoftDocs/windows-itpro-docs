---
title: Find the Application User Model ID of an installed app
description: Learn how to find the Application User Model ID (AUMID) of the appications installed on a Windows device.
ms.topic: how-to
ms.date: 12/31/2017
---

# Find the Application User Model ID of an installed app

Windows uses Application User Model Id (AUMID, also known as AppId) values to identify and differentiate applications for switching, launching, telemetry, and other functions.\
AUMID are unique to each installed application, and independent of the installation path or the application's display name.

To configure Assigned Access, you must use the AUMID of the apps installed on a device. This article describes how to find the AUMID of an installed app.

## How to find the AUMID

You can find the AUMID by using Windows PowerShell, File Explorer, or the registry.

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/ps)

To get the names and AUMIDs for all apps installed for the current user, open a Windows PowerShell command prompt and enter the following command:

```powershell
Get-StartApps
```

To get the names and AUMIDs for Windows Store apps installed for another user, open a Windows PowerShell command prompt and enter the following commands:

```powershell
$installedapps = Get-AppxPackage

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

You can add the `-user <username>` or the `-allusers` parameters to the **Get-AppxPackage** cmdlet to list AUMIDs for other users. You must use an elevated Windows PowerShell prompt to use the `-user` or -`allusers` parameters.

<!-- new

In PowerShell Get-StartApps will list the AUMID values for apps that appear in the start menu (those that are hidden don't appear).

```powershell
$apps = Get-AppxPackage *calc* # remove param to see *all*
foreach ($app in $apps) {
    $man = Get-AppxPackageManifest $app
    $appIds = $man.Package.Applications.Application.Id
    foreach ($id in $appIds) {
        "$($app.PackageFamilyName)!$id"
    }
}
```

Powershell to display the AppId for the calc application (a packaged UWP App).

```powershell
$apps = Get-AppxPackage *calc* # remove param to see *all*
foreach ($app in $apps) {
    $man = Get-AppxPackageManifest $app
    $appIds = $man.Package.Applications.Application.Id
    foreach ($id in $appIds) {
        "$($app.PackageFamilyName)!$id"
    }
}
```
-->

#### [:::image type="icon" source="../images/icons/explorer.svg"::: **Explorer**](#tab/explorer)

Start.Run… shell:appsfolder to open File Explorer on the AppsFolder.

To get the names and AUMIDs for all apps installed for the current user, perform the following steps:

1. Select **Start** > **Run**, enter `shell:Appsfolder`, and select **OK**
1. A File Explorer window opens. Press <kbd>Alt</kbd>+<kbd>V</kbd> > **Choose details**
1. In the **Choose Details** window, select **AppUserModelId**, and then select **OK**. (You might need to c
1. Change the **View** setting from **Tiles** to **Details**

:::image type="content" source="images/aumid-file-explorer.png" alt-text="Screenshot of the File Explorer showing the AUMID details." border="false":::

#### [:::image type="icon" source="../images/icons/registry.svg"::: **Registry**](#tab/registry)

Querying the registry can only return information about Microsoft Store apps that are installed for the current user, while the Windows PowerShell query can find information for any account on the device.

At a command prompt, type the following command:

```cmd
reg query HKEY_CURRENT_USER\Software\Classes\ActivatableClasses\Package /s /f AppUserModelID | find "REG_SZ"
```

---

### Example to get AUMIDs of the installed apps for the specified user

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
        $installedapps = Get-AppxPackage -user $userAccount
    }
    else
    {
        # Find installed packages for the current account.
        $installedapps = Get-AppxPackage
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

The following Windows PowerShell commands demonstrate how you can call the listAumids function after you've created it.

```powershell
# Get a list of AUMIDs for the current account:
listAumids

# Get a list of AUMIDs for an account named "CustomerAccount":
listAumids("CustomerAccount")

# Get a list of AUMIDs for all accounts on the device:
listAumids("allusers")
```

### Example to get the AUMID of any application in the Start menu

The following code sample creates a function in Windows PowerShell that returns the AUMID of any application currently listed in the Start menu.

```powershell
function Get-AppAUMID {
param (
[string]$AppName
)
$Apps = (New-Object -ComObject Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items()
if ($AppName){
    $Result = $Apps | Where-Object { $_.name -like "*$AppName*" } | Select-Object name,@{n="AUMID";e={$_.path}}
        if ($Result){
            Return $Result
        }
    else {"Unable to locate {0}" -f $AppName}
}
else {
    $Result = $Apps | Select-Object name,@{n="AUMID";e={$_.path}}
    Return $Result
}
}
```

The following Windows PowerShell commands demonstrate how you can call the Get-AppAUMID function after you've created it.

```powershell
# Get the AUMID for OneDrive
Get-AppAUMID -AppName OneDrive

# Get the AUMID for Microsoft Word
Get-AppAUMID -AppName Word

# List all apps and their AUMID in the Start menu
Get-AppAUMID
```
