---
title: How to configure access to packages by using the Management Console (Windows 10)
description: How to configure access to packages by using the App-V Management Console.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/18/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# How to configure access to packages by using the Management Console

>Applies to: Windows 10, version 1607

Before you deploy an App-V virtualized package, you must configure the Active Directory Domain Services (AD DS) security groups that will be allowed to access and run the applications. The security groups may contain computers or users. Entitling a package to a computer group publishes the package globally to all computers in the group.

Use the following procedure to configure access to virtualized packages.

## Grant access to an App-V package

1. Find the package you want to configure:

    1. Open the App-V Management console.

    1. Right-click the package to be configured, then select **Edit active directory access** to display the **AD Access** page. Alternatively, select the package and select **Edit** in the **AD Access** pane.

2. Provision a security group for the package:

    1. Go to the **Find valid Active Directory names and grant access** page.

    1. Using the format **mydomain** \\ **groupname**, enter the name or part of the name of an Active Directory group object, then select **Check**.

       > [!NOTE]  
        >Ensure that you provide an associated domain name for the group that you are searching for.

3. Grant access to the package by first selecting the desired group, then selecting **Grant Access**. The newly added group is displayed in the **AD entities with access** pane.

4. Select **Close** to accept the default configuration settings and close the AD Access page.

    To customize configurations for a specific group, select the **Assigned configurations** drop-down menu, then select **Custom**. To make changes to your custom configurations, select **Edit**. After you grant access, select **Close**.

## Remove access to an App-V package

1. Find the package you want to configure:

    1. Open the App-V Management console.

    1. To display the **AD Access** page, right-click the package to be configured, then select **Edit active directory access**. Alternatively, select the package, then select **Edit** in the **AD Access** pane.

2. Select the group you want to remove, then select **Delete**.

3. Select **Close**.





## Related topics

* [Operations for App-V](appv-operations.md)
