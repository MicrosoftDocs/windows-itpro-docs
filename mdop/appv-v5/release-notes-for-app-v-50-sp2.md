---
title: Release Notes for App-V 5.0 SP2
description: Release Notes for App-V 5.0 SP2
author: dansimp
ms.assetid: fe73139d-240c-4ed5-8e59-6ae76ee8e80c
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Release Notes for App-V 5.0 SP2


**To search for a specific issue in these release notes, press CTRL+F.**

Read these release notes thoroughly before you install App-V 5.0 SP2.

These release notes contain information that is required to successfully install App-V 5.0 SP2. The release notes also contain information that is not available in the product documentation. If there are differences between these release notes and other App-V 5.0 documentation, the latest change should be considered authoritative. These release notes supersede the content that is included with this product.

## About the Product Documentation


For information about App-V 5.0 documentation, see the App-V 5.0 home page on Microsoft TechNet.

## Provide Feedback


We are interested in your feedback on App-V 5.0. You can send your feedback to <mdopdocs@microsoft.com>.

**Note**  
This email address is not a support channel, but your feedback will help us to plan for future changes in our documentation and product releases.

 

For the latest information about MDOP and additional learning resources, see the [MDOP Information Experience](https://go.microsoft.com/fwlink/p/?LinkId=236032) page.

For more information about new updates or to provide feedback, follow us on [Facebook](https://go.microsoft.com/fwlink/p/?LinkId=242445) or [Twitter](https://go.microsoft.com/fwlink/p/?LinkId=242447).

## Known Issues with Hotfix Package 4 for Application Virtualization 5.0 SP2


### Packages stop working after you uninstall Hotfix Package 4 for Application Virtualization 5.0 SP2

Packages published when Hotfix Package 4 for Application Virtualization 5.0 SP2 is applied stop working when Hotfix Package 4 for Application Virtualization 5.0 SP2 is removed.

WORKAROUND:

If the following folder exists, then you must delete it:

**%localappdata%** \\ **Microsoft** \\ **AppV** \\ **Client** \\ **VFS** \\ **&lt;package ID&gt;** for each package that was published.

**Note**  
You must have elevated privileges to delete this folder.

 

To use a script, for each user account on the computer and for each package id that was published after installing Hotfix Package 4 for Application Virtualization 5.0 SP2:

`Rd /s /q “%systemdrive%\users\[UserName]\AppData\Local\Microsoft\AppV\Client\VFS\[Package ID]`

-   The shortcuts will remain with the user sessions even after deleting the folder from the directory in the previous section, so you can click on the shortcut to run the application again. There is no need to re-publish the application.

-   This issue happens for both user published packaged and globally published packages for example, Microsoft Office 2013. The folder must be deleted for both types of packages.

-   You do not need to delete the VFS folder in the Roaming app data (**%appdata%**). Only the **%localappdata%** must be deleted.

### Microsoft Office integration points to wrong file system location

Microsoft Office integration points to wrong file system location (Groove.exe error message).

WORKAROUND:

Use one of the following methods:

1.  Delete the shortcut in the start-up folder after upgrade.

2.  Change the shortcut in the start-up folder using a script.

3.  Use the deployment configuration file to specify the shortcut target to the integration root.

### <a href="" id="-------------hotfix-package-4-for-application-virtualization-5-0-sp2-installer-can-take-a-long-time"></a> Hotfix Package 4 for Application Virtualization 5.0 SP2 installer can take a long time

The Hotfix Package 4 for Application Virtualization 5.0 SP2 installer can potentially take a long time depending on how many files are stored in the existing package cache.

Updating associated package security descriptors during the Hotfix Package 4 for Application Virtualization 5.0 SP2 installation has a significant impact on how long it takes the installation will take. Previously, the installation install was standard in duration. However, it now depends on how many files you have staged in the package cache.

WORKAROUND: None

### Uninstalling Hotfix Package 4 for Application Virtualization 5.0 SP2 fails if JIT-V package is in use

If you install Hotfix Package 4 for Application Virtualization 5.0 SP2 and then try to uninstall the hotfix when just-in-time virtualization (JIT-V) is being used, the operation will fail if all of the following conditions are true:

-   You installed by using a Windows Installer file (.msi), and then you apply updates by using a Microsoft Installer Patch File (.msp).

-   You try to uninstall an update by using the Add or Remove Programs item in Control Panel.

-   A JIT-V-enabled package is running on the computer.

WORKAROUND: Complete the following steps:

1.  Open Windows PowerShell and run the following commands:

    -   **Import-module appvclient**

    -   **Get-AppvClientPackage | Stop-AppvClientPackage**

2.  Uninstall the update using Add or Remove Programs.

## Known Issues with App-V 5.0 SP2


### <a href="" id="bkmk-folderredirection"></a>App-V client folder redirection sometimes fails to move files from %AppData% to %LocalAppData%

When %AppData% is a shared network folder that you have configured for folder redirection, the changes that end users make to AppData (Roaming) can be lost when they switch computers or when their local AppData is cleared when they log off and then log back on. This error occurs because the registry key (AppDataTime), which indicates the last known upload, gets out of synchronization with the local cached AppData.

WORKAROUND: Manually delete the following registry key for each relevant package when an end user logs on or off:

``` syntax
HKCU\Software\Microsoft\AppV\Client\Packages\<PACKAGE_GUID>\AppDataTime
```

The first time that end users start an application in the package after they log in, App-V forces a download of the zipped %AppData%, even if %LocalAppData% is already up to date.

### <a href="" id="-------------app-v-5-0-service-pack-2--app-v-5-0-sp2--does-not-include-a-new-version-of-the-app-v-server"></a> App-V 5.0 Service Pack 2 (App-V 5.0 SP2) does not include a new version of the App-V Server

App-V 5.0 SP2 does not include a new version of the App-V Server. If you deploy App-V 5.0 SP2 clients running Windows 8.1 in your environment and plan to manage the clients using the App-V infrastructure, you must install [Hotfix Package 2 for Microsoft Application Virtualization 5.0 Service Pack 1](https://go.microsoft.com/fwlink/?LinkId=386634). (https://go.microsoft.com/fwlink/?LinkId=386634)

If you are running and managing App-V 5.0 SP2 clients using any of the following methods no client update is required:

-   Standalone mode.

-   Configuration Manager.

-   Third party ESD.

The App-V 5.0 SP2 client is fully compatible with Windows 8.1

WORKAROUND: None.

## Release Notes Copyright Information


Microsoft, Active Directory, ActiveX, Bing, Excel, Silverlight, SQL Server, Windows, Microsoft Intune, and Windows PowerShell are trademarks of the Microsoft group of companies. All other trademarks are property of their respective owners.








## Related topics


[About App-V 5.0 SP2](about-app-v-50-sp2.md)

 

 





