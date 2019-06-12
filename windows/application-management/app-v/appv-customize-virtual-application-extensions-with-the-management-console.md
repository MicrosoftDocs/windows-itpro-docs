---
title: How to customize virtual application extensions for a specific AD group by using the Management Console (Windows 10)
description: How to customize virtual application extensions for a specific AD group by using the Management Console.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# How to customize virtual applications extensions for a specific AD group by using the Management Console

>Applies to: Windows 10, version 1607

Use the following procedure to customize the virtual application extensions for an Active Directory (AD) group.

## Customize virtual applications extensions for an AD group

1. To view the package that you want to configure, open the App-V Management Console. To view the configuration assigned to a given user group, select the package, then right-click the package name and select **Edit active directory access**. Alternatively, select the package and select **EDIT** in the **AD ACCESS** pane.

2. To customize an AD group, you can find the group from the list of **AD Entities with Access**. Then, using the drop-down box in the **Assigned Configuration** pane, select **Custom**, and then select **EDIT**.

3. To disable all extensions for a given application, clear **ENABLE**.

    To add a new shortcut for the selected application, right-click the application in the **SHORTCUTS** pane, and select **Add new shortcut**. To remove a shortcut, right-click the application in the **SHORTCUTS** pane and select **Remove Shortcut**. To edit an existing shortcut, right-click the application and select **Edit Shortcut**.

4. To view any other application extensions, select **Advanced**, and select **Export Configuration**. Enter a filename and select **Save**. You can view all application extensions that are associated with the package using the configuration file.

5. To edit additional application extensions, modify the configuration file and select **Import and Overwrite this Configuration**. Select the modified file and select **Open**. In the dialog, select **Overwrite** to complete the process.





## Related topics

- [Operations for App-V](appv-operations.md)
