---
title: How to manage App-V packages running on a stand-alone computer by using Windows PowerShell (Windows 10)
description: How to manage App-V packages running on a stand-alone computer by using Windows PowerShell.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/24/2018
ms.topic: article
---
# How to manage App-V packages running on a stand-alone computer by using Windows PowerShell

>Applies to: Windows 10, version 1607

The following sections explain how to perform various management tasks on a stand-alone client computer with Windows PowerShell cmdlets.

## Return a list of packages

Enter the **Get-AppvClientPackage** cmdlet to return a list of packages entitled to a specific user. Its parameters are *-Name*, *-Version*, *-PackageID*, and *-VersionID*.

For example:

```PowerShell
Get-AppvClientPackage –Name "ContosoApplication" -Version 2
```

## Add a package

Use the **Add-AppvClientPackage** cmdlet to add a package to a computer.

>[!IMPORTANT]
>This example only adds a package. It does not publish the package to the user or the computer.

For example:

```PowerShell
$Contoso = Add-AppvClientPackage \\\\path\\to\\appv\\package.appv
```

## Publish a package

Use the **Publish-AppvClientPackage** cmdlet to publish a package that has been added to either a specific user or globally to any user on the computer.

Enter the cmdlet with the application name to publish it to the user.

```PowerShell
Publish-AppvClientPackage "ContosoApplication"
```

To publish the application globally, just add the *-Global* parameter.

```Powershell
Publish-AppvClientPackage "ContosoApplication" -Global
```

## Publish a package to a specific user

>[!NOTE]  
>You must use App-V 5.0 SP2 Hotfix Package 5 or later to use this parameter.

An administrator can publish a package to a specific user by specifying the optional *–UserSID* parameter with the **Publish-AppvClientPackage** cmdlet, where *-UserSID* represents the end user’s security identifier (SID).

To use this parameter:

- You can run this cmdlet from the user or administrator session.
- You must be logged in with administrative credentials to use the parameter.
- The end user must be signed in.
- You must provide the end user’s security identifier (SID).

For example:

```PowerShell
Publish-AppvClientPackage "ContosoApplication" -UserSID S-1-2-34-56789012-3456789012-345678901-2345
```

## Add and publish a package

Use the **Add-AppvClientPackage** cmdlet to add a package to a computer and publish it to the user.

For example:

```PowerShell
Add-AppvClientPackage <path to App-V package> | Publish-AppvClientPackage
```

## Unpublish an existing package

Use the **Unpublish-AppvClientPackage** cmdlet to unpublish a package which has been entitled to a user but not remove the package from the computer.

For example:

```PowerShell
Unpublish-AppvClientPackage "ContosoApplication"
```

## Unpublish a package for a specific user

>[!NOTE]
>You must use App-V 5.0 SP2 Hotfix Package 5 or later to use this parameter.

An administrator can unpublish a package for a specific user by using the optional *-UserSID* parameter with the **Unpublish-AppvClientPackage** cmdlet, where *-UserSID* represents the end user’s security identifier (SID).

To use this parameter:

- You can run this cmdlet from the user or administrator session.
- You must sign in with administrative credentials to use the parameter.
- The end user must be signed in.
- You must provide the end user’s security identifier (SID).

For example:

```PowerShell
Unpublish-AppvClientPackage "ContosoApplication" -UserSID S-1-2-34-56789012-3456789012-345678901-2345
```

## Remove an existing package

Use the **Remove-AppvClientPackage** cmdlet to remove a package from the computer.

For example:

```PowerShell
Remove-AppvClientPackage "ContosoApplication"
```

>[!NOTE]
>App-V cmdlets have been assigned to variables for the previous examples for clarity only; assignment is not a requirement. Most cmdlets can be combined as displayed in [Add and publish a package](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#add-and-publish-a-package). For a detailed tutorial, see [App-V 5.0 Client PowerShell Deep Dive](https://blogs.technet.microsoft.com/appv/2012/12/03/app-v-5-0-client-powershell-deep-dive/).

## Enable only administrators to publish or unpublish packages

Starting in App-V 5.0 SP3, you can use the **Set-AppvClientConfiguration** cmdlet and *-RequirePublishAsAdmin* parameter to enable only administrators (not end users) to publish or unpublish packages.

You can set the *-RequirePublishAsAdmin* parameter to the following values:

- 0: False
- 1: True

For example:

```PowerShell
Set-AppvClientConfiguration –RequirePublishAsAdmin1
```

To use the App-V Management console to set this configuration, see [How to publish a package by using the Management Console](appv-publish-a-packages-with-the-management-console.md).

## About pending packages: UserPending and GlobalPending

Starting in App-V 5.0 SP2, if you run a Windows PowerShell cmdlet that affects a package currently in use, the task you're trying to perform is placed in a pending state. For example, if you try to publish a package when an application in that package is being used, and then run **Get-AppvClientPackage**, the pending status appears in the cmdlet output as follows:

|Cmdlet output item|Description|
|---|---|
|UserPending|Indicates whether the listed package has a pending task that is being applied to the user:<br>- True<br>- False|
|GlobalPending|Indicates whether the listed package has a pending task that is being applied globally to the computer:<br>- True<br>- False|

The pending task will run later, according to the following rules:

|Task type|Applicable rule|
|---|---|
|User-based<br>(for example, publishing a package to a user)|The pending task will be performed after the user logs off and then logs back on.|
|Globally based<br>(for example, enabling a connection group globally)|The pending task will be performed when the computer is shut down and then restarted.|

For more information about pending tasks, see [Upgrading an in-use App-V package](appv-application-publishing-and-client-interaction.md#upgrading-an-in-use-app-v-package).

 



## Related topics

- [Operations for App-V](appv-operations.md)
- [Administering App-V by using Windows PowerShell](appv-administering-appv-with-powershell.md)
