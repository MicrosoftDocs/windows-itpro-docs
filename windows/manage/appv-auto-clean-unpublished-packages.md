---
title: Automatically cleanup unpublished packages on the App-V client (Windows 10)
description: How to automatically clean-up any unpublished packages on your App-V client devices.
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Automatically cleanup unpublished packages on the App-V client

**Applies to**
-   Windows 10, version 1703

Previous versions of App-V have required you to manually remove your unpublished packages from your client devices, to free up additional storage space. Windows 10, version 1703 introduces the ability to use PowerShell or Group Policy settings to automatically cleanup your unpublished packages after a device restart.

## Cleanup by using PowerShell commands
Using PowerShell, you can turn on the **AutoCleanupEnabled** setting to automatically cleanup your unpublished App-V packages from your App-V client devices.

**To turn on the AutoCleanupEnabled option**
1. Open PowerShell as an admin and run the following command to turn on the automatic package cleanup functionality:

    ```ps1
    Set-AppvClientConfiguration -AutoCleanupEnabled 1
    ```
    The command runs and you should see the following info on the PowerShell screen:
    
    <table border="1">
        <tr>
            <thead>
                <th>Name</th>
                <th>Value</th>
                <th>SetbyGroupPolicy</th>
            </thead>
        </tr>
        <tbody>
            <tr>
                <td>AutoCleanupEnabled</td>
                <td>1</td>
                <td>False</td>
            </tr>
        </tbody>
    </table>

2. Run the following command to make sure the packages were successfully cleaned up.

    ```ps1
    Get-AppvClientConfiguration
    ```
    You should see the **AutoCleanupEnabled** option turned on (shows a value of "1") in the configuration list.

## Clean-up by using Group Policy settings
Using Group Policy, you can turn on the **Enable automatic cleanup of unused appv packages** setting to automatically cleanup your unpublished App-V packages from your App-V client devices.

**To turn on the Enable automatic cleanup of unused appv packages setting**
1. Open your Group Policy editor and double-click the Administrative Templates\System\App-V\PackageManagement\Enable automatic cleanup of unused appv packages setting.

2.Click **Enabled**, and then click **OK**.

    The setting is turned on and will cleanup any unpublished App-V packages on the App-V Client after restarting.

### Related topics
- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)

**Have a suggestion for App-V?**<p>
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).