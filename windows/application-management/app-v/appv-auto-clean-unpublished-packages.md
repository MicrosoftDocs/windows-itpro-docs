---
title: Auto-remove unpublished packages on App-V client (Windows 10/11)
description: How to automatically clean up any unpublished packages on your App-V client devices.
author: aczechowski
ms.prod: w10
ms.date: 06/15/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
---
# Automatically clean up unpublished packages on the App-V client

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

If you wanted to free up additional storage space in previous versions of App-V, you would have had to manually remove your unpublished packages from your client devices. Starting with Windows 10 version 1703, use PowerShell or Group Policy settings to automatically clean up your unpublished packages after restarting your device.

## Clean up with PowerShell cmdlets

You can enter PowerShell cmdlets to turn on the **AutoCleanupEnabled** setting, which will automatically clean up your unpublished App-V packages from your App-V client devices.

### Turn on the AutoCleanupEnabled option

1. Open PowerShell as an admin and enter the following cmdlet to turn on the automatic package cleanup functionality:

    ```PowerShell
    Set-AppvClientConfiguration -AutoCleanupEnabled 1
    ```

    After running the cmdlet, you should see the following info on the PowerShell screen:

    |Name|Value|SetbyGroupPolicy|
    |---|---|---|
    |AutoCleanupEnabled|1|False|

1. Run the following cmdlet to check if the configuration has the cleanup setting turned on.

    ```PowerShell
    Get-AppvClientConfiguration
    ```
    If the **AutoCleanupEnabled** option shows a value of **1** in the configuration list, that means the setting is turned on.

## Clean up with Group Policy settings

Using Group Policy, you can turn on the **Enable automatic cleanup of unused App-V packages** setting to automatically clean up your unpublished App-V packages from your App-V client devices.

### Turn on the Enable automatic cleanup of unused App-V packages setting

1. Open your Group Policy editor and select the **Administrative Templates\System\App-V\PackageManagement\Enable automatic cleanup of unused App-V packages** setting.

2. Select **Enabled**, then select **OK**.

    After your Group Policy updates and you reset the client, the setting will clean up any unpublished App-V packages on the App-V client.





## Related articles

- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)
- [Deploying App-V for Windows client](appv-deploying-appv.md)
- [Using the App-V Client Management Console](appv-using-the-client-management-console.md)
