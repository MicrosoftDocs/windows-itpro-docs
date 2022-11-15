---
title: How to create a custom configuration file by using the App-V Management Console (Windows 10/11)
description: How to create a custom configuration file by using the App-V Management Console.
author: aczechowski
ms.prod: windows-client
ms.date: 07/10/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
ms.technology: itpro-apps
---

# How to create a custom configuration file by using the App-V Management Console

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

You can use a dynamic configuration to customize an App-V package for a specific user. However, you must first create the dynamic user configuration (.xml) file or the dynamic deployment configuration file before you can use the files. Creation of the file is an advanced manual operation. For general information about dynamic user configuration files, see [About App-V dynamic configuration](appv-dynamic-configuration.md).

You can create a dynamic user configuration file with the App-V Management Console by following the steps in this article.

## Create a dynamic user configuration file

1. Right-click the name of the package that you want to view and select **Edit active directory access** to view the configuration that is assigned to a given user group. Alternatively, select the package, and click **Edit**.

2. Using the list of **AD Entities with Access**, select the AD group that you want to customize. Select **Custom** from the drop-down list. A link named **Edit** will appear.

3. Select **Edit**. The Dynamic User Configuration assigned to the AD Group will appear.

4. Select **Advanced**, and then select **Export Configuration**. Enter a file name and select **Save**. Now you can edit the file to configure a package for a user.

   > [!NOTE]
   > If you want to export a configuration while running on Windows Server, make sure to disable the IE Enhanced Security Configuration setting. If this setting is enalbed and set to block downloads, you won't be able to download anything from the App-V Server.


## Related articles

- [Operations for App-V](appv-operations.md)
