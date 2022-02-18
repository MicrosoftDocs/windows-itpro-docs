---
title: How to Manage Connection Groups on a Stand-alone Computer by Using Windows PowerShell (Windows 10/11)
description: How to Manage Connection Groups on a Stand-alone Computer by Using Windows PowerShell
author: greg-lindsay
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: greglin
---


# How to Manage Connection Groups on a Stand-alone Computer by Using Windows PowerShell

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

An App-V connection group allows you to run all the virtual applications as a defined set of packages in a single virtual environment. For example, you can virtualize an application and its plug-ins by using separate packages, but run them together in a single connection group.

A connection group XML file defines the connection group for the App-V client. For information about the connection group XML file and how to configure it, see [About the Connection Group File](appv-connection-group-file.md).

This topic explains the following procedures:

-   [To add and publish the App-V packages in the connection group](#to-add-and-publish-the-app-v-packages-in-the-connection-group)

-   [To add and enable the connection group on the App-V client](#to-add-and-enable-the-connection-group-on-the-app-v-client)

-   [To enable or disable a connection group for a specific user](#to-enable-or-disable-a-connection-group-for-a-specific-user)

-   [To allow only administrators to enable connection groups](#to-allow-only-administrators-to-enable-connection-groups)

## To add and publish the App-V packages in the connection group

1.  To add and publish the App-V packages to the computer running the App-V client, type the following command:

    Add-AppvClientPackage –path c:\\tmpstore\\quartfin.appv | Publish-AppvClientPackage

2.  Repeat **step 1** of this procedure for each package in the connection group.

## To add and enable the connection group on the App-V client

1.  Add the connection group by typing the following command:

    Add-AppvClientConnectionGroup –path c:\\tmpstore\\financ.xml

2.  Enable the connection group by typing the following command:

    Enable-AppvClientConnectionGroup –name "Financial Applications"

    When any virtual applications that are in the member packages are run on the target computer, they'll run inside the connection group’s virtual environment and will be available to all the virtual applications in the other packages in the connection group.

## To enable or disable a connection group for a specific user

1.  Review the parameter description and requirements:

    -   The parameter enables an administrator to enable or disable a connection group for a specific user.

    -   You must use App-V 5.0 SP2 Hotfix Package 5 or later to use this parameter.

    -   You can run this cmdlet from the user or administrator session.

    -   You must be logged in with administrative credentials to use the parameter.

    -   The end user must be logged in.

    -   You must provide the end user’s security identifier (SID).

2.  Use the following cmdlets, and add the optional **–UserSID** parameter, where **-UserSID** represents the end user’s security identifier (SID):

    |Cmdlet|Examples|
    |--- |--- |
    |Enable-AppVClientConnectionGroup|Enable-AppVClientConnectionGroup "ConnectionGroupA" -UserSID S-1-2-34-56789012-3456789012-345678901-2345|
    |Disable-AppVClientConnectionGroup|Disable-AppVClientConnectionGroup "ConnectionGroupA" -UserSID S-1-2-34-56789012-3456789012-345678901-2345|

## To allow only administrators to enable connection groups

1.  Review the description and requirement for using this cmdlet:

    -   Use this cmdlet and parameter to configure the App-V client to allow only administrators (not end users) to enable or disable connection groups.

    -   You must be using at least App-V 5.0 SP3 to use this cmdlet.

2.  Run the following cmdlet and parameter:

    |Cmdlet|Parameter and values|Example|
    |--- |--- |--- |
    |Set-AppvClientConfiguration|-RequirePublishAsAdmin<li>0 - False<li>1 - True|Set-AppvClientConfiguration -RequirePublishAsAdmin<br>1|

<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)

[Administering App-V by Using Windows PowerShell](appv-administering-appv-with-powershell.md)
