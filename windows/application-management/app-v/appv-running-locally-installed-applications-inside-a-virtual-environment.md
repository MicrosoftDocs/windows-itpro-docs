---
title: Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications (Windows 10/11)
description: Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications
author: aczechowski
ms.prod: w10
ms.date: 03/08/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
---

# Running a Locally Installed Application Inside a Virtual Environment with Virtualized Applications

**Applies to**
-   Windows 7 SP1
-   Windows 10
- Windows 11
-   Windows Server 2012 R2
-   Windows Server 2016

You can run a locally installed application in a virtual environment, alongside applications that have been virtualized by using Microsoft Application Virtualization (App-V). You might want to do this task if you:

-   Want to install and run an application locally on client computers, but want to virtualize and run specific plug-ins that work with that local application.

-   Are troubleshooting an App-V client package and want to open a local application within the App-V virtual environment.

Use any of the following methods to open a local application inside the App-V virtual environment:

-   [RunVirtual registry key](#bkmk-runvirtual-regkey)

-   [Get-AppvClientPackage Windows PowerShell cmdlet](#bkmk-get-appvclientpackage-posh)

-   [Command line switch /appvpid:&lt;PID&gt;](#bkmk-cl-switch-appvpid)

-   [Command line hook switch /appvve:&lt;GUID&gt;](#bkmk-cl-hook-switch-appvve)

Each method accomplishes essentially the same task, but some methods may be better suited for some applications than others, depending on whether the virtualized application is already running.

## <a href="" id="bkmk-runvirtual-regkey"></a>RunVirtual registry key


To add a locally installed application to a package or to a connection group’s virtual environment, you add a subkey to the `RunVirtual` registry key in the Registry Editor, as described in the following sections.

There's no Group Policy setting available to manage this registry key. So, you have to use Microsoft Intune or Configuration Manager, another electronic software distribution (ESD) system, or manually edit the registry.

Starting with App-V 5.0 SP3, when using RunVirtual, you can publish packages globally or to the user.


### Steps to create the subkey

1.  Using the information in the following table, create a new registry key using the name of the executable file, for example, **MyApp.exe**.

    - **Published globally**: Create the `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\AppV\Client\RunVirtual` registry key.

      For example, create `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\AppV\Client\RunVirtual\MyApp.exe`.

    - **Published to the user**: Create the `HKEY_CURRENT_USER\SOFTWARE\Microsoft\AppV\Client\RunVirtual` registry key.

       For example, create `HKEY_CURRENT_USER \SOFTWARE\Microsoft\AppV\Client\RunVirtual\MyApp.exe`.

    - Connection group can be:
      - Packages that are published globally or just to the user
      - Packages that are published globally and to the user

      Use the `HKEY_LOCAL_MACHINE` or `HKEY_CURRENT_USER` key. But, all of the following conditions must be fulfilled:

      - If you want to include multiple packages in the virtual environment, you must include them in an enabled connection group.
      - Create only one subkey for one of the packages in the connection group. For example, you have one package that is published globally and another package that is published to the user. You create a subkey for either of these packages, but not both. Although you create a subkey for only one of the packages, all of the packages in the connection group, plus the local application, will be available in the virtual environment.
      - The key under which you create the subkey must match the publishing method you used for the package.

        For example, if you published the package to the user, you must create the subkey under `HKEY_CURRENT_USER\SOFTWARE\Microsoft\AppV\Client\RunVirtual`. Don't add a key for the same application under both hives.

2.  Set the new registry subkey’s value to the PackageId and VersionId of the package, separating the values with an underscore.

    **Syntax**: `<PackageId>_<VersionId>`

    **Example**: 4c909996-afc9-4352-b606-0b74542a09c1\_be463724-Oct1-48f1-8604-c4bd7ca92fa

    The application in the previous example would produce a registry export file (.reg file) like the following example:

    ```registry
    Windows Registry Editor Version 5.00 
    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\AppV\Client\RunVirtual] 
    @="" 
    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\AppV\Client\RunVirtual\MyApp.exe] 
    @="aaaaaaaa-bbbb-cccc-dddd-eeeeeeee_11111111-2222-3333-4444-555555555
    ```

## <a href="" id="bkmk-get-appvclientpackage-posh"></a>Get-AppvClientPackage Windows PowerShell cmdlet


You can use the **Start-AppVVirtualProcess** cmdlet to retrieve the package name and then start a process within the specified package's virtual environment. This method lets you launch any command within the context of an App-V package, regardless of whether the package is currently running.

Use the following example syntax, and substitute the name of your package for `<Package>`:

`$AppVName = Get-AppvClientPackage <Package>`

`Start-AppvVirtualProcess -AppvClientObject $AppVName cmd.exe`

If you don’t know the exact name of your package, you can use the command line `Get-AppvClientPackage YourExecutable`, where `YourExecutable` is the name of the application. For example, enter `Get-AppvClientPackage Word`.

## <a href="" id="bkmk-cl-switch-appvpid"></a>Command line switch `/appvpid:<PID>`


You can apply the `/appvpid:<PID>` switch to any command, which enables that command to run within a virtual process that you select by specifying its process ID (PID). Using this method launches the new executable in the same App-V environment as an executable that is already running.

Example: `cmd.exe /appvpid:8108`

To find the process ID (PID) of your App-V process, run the command **tasklist.exe** from an elevated command prompt.

## <a href="" id="bkmk-cl-hook-switch-appvve"></a>Command line hook switch `/appvve:<GUID>`


This switch lets you run a local command within the virtual environment of an App-V package. Unlike the **/appvid** switch, where the virtual environment must already be running, this switch enables you to start the virtual environment.

Syntax: `cmd.exe /appvve:<PACKAGEGUID_VERSIONGUID>`

Example: `cmd.exe /appvve:aaaaaaaa-bbbb-cccc-dddd-eeeeeeee_11111111-2222-3333-4444-55555555`

To get the package GUID and version GUID of your application, run the **Get-AppvClientPackage** cmdlet. Concatenate the **/appvve** switch with the following:

-   A colon

-   Package GUID of the desired package

-   An underscore

-   Version ID of the desired package

If you don’t know the exact name of your package, use the command line `Get-AppvClientPackage YourExecutable`, where `YourExecutable` is the name of the application. For example, enter `Get-AppvClientPackage Word`.

This method lets you launch any command within the context of an App-V package, regardless of whether the package is currently running.

## Related articles


[Technical Reference for App-V](appv-technical-reference.md)
