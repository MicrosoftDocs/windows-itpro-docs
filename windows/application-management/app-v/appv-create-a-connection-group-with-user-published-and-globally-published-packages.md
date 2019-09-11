---
title: How to create a connection croup with user-published and globally published packages (Windows 10)
description: How to create a connection croup with user-published and globally published packages.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# How to create a connection croup with user-published and globally published packages

>Applies to: Windows 10, version 1607

You can create user-entitled connection groups that contain both user-published and globally published packages, using either of the following methods:

- [How to use Windows PowerShell cmdlets to create user-entitled connection groups](#how-to-use-windows-powershell-cmdlets-to-create-user-entitled-connection-groups)
- [How to use the App-V Server to create user-entitled connection groups](#how-to-use-the-app-v-server-to-create-user-entitled-connection-groups)

## Unsupported scenarios and potential issues

Here are some important things to know before you get started:

- If you add user-published packages in globally entitled connection groups, the connection group will fail.
- Track the connection groups where you've used a non-optional package before removing it with the **Unpublish-AppvClientPackage <</span>package> -global** cmdlet.
      
    In situations where you have a globally published package that's listed as non-optional in a user-published connection group that also appears in other packages, running **Unpublish-AppvClientPackage <</span>package> -global** cmdlet can unpublish the package from every connection group containing that package. Tracking connection groups can help you avoid unintentionally unpublishing non-optional packages.

## How to use Windows PowerShell cmdlets to create user-entitled connection groups

1. Add and publish packages by using the following commands:
    
    ```PowerShell
    Add-AppvClientPackage <Package1_AppV_file_Path>
    Add-AppvClientPackage <Package2_AppV_file_Path>
    Publish-AppvClientPackage -PackageId <Package1_ID> -VersionId <Package1_Version_ID> -Global
    Publish-AppvClientPackage -PackageId <Package2_ID> -VersionId <Package2_Version_ID>
    ```

2. Create the connection group XML file. For more information, see [About the connection group file](appv-connection-group-file.md).

3. Add and publish the connection group by using the following commands:
    
    ```PowerShell
    Add-AppvClientConnectionGroup <Connection_Group_XML_file_Path>
    Enable-AppvClientConnectionGroup -GroupId <CG_Group_ID> -VersionId <CG_Version_ID>
    ```

## How to use the App-V Server to create user-entitled connection groups

1. Open the App-V Management Console.

2. Follow the instructions in [How to publish a package by using the Management Console](appv-publish-a-packages-with-the-management-console.md) to publish packages globally and to the user.

3. Follow the instructions in [How to create a connection group](appv-create-a-connection-group.md) to create the connection group and  add the user-published and globally published packages.





## Related topics

- [Managing Connection Groups](appv-managing-connection-groups.md)
