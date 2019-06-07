---
title: How to Configure Access to Packages by Using the Management Console
description: How to Configure Access to Packages by Using the Management Console
author: dansimp
ms.assetid: 8f4c91e4-f4e6-48cf-aa94-6085a054e8f7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure Access to Packages by Using the Management Console


Before you deploy an App-V 5.0 virtualized package, you must configure the Active Directory Domain Services (AD DS) security groups that will be allowed to access and run the applications. The security groups may contain computers or users. Entitling a package to a computer group publishes the package globally to all computers in the group.

Use the following procedure to configure access to virtualized packages.

**To grant access to an App-V 5.0 package**

1.  Find the package you want to configure:

    1.  Open the App-V 5.0 Management console.

    2.  To display the **AD ACCESS** page, right-click the package to be configured, and select **Edit active directory access**. Alternatively, select the package and click **EDIT** in the **AD ACCESS** pane.

2.  Provision a security group for the package:

    1.  Go to the **FIND VALID ACTIVE DIRECTORY NAMES AND GRANT ACCESS** page.

    2.  Using the format **mydomain** \\ **groupname**, type the name or part of the name of an Active Directory group object, and click **Check**.

        **Note**  
        Ensure that you provide an associated domain name for the group that you are searching for.

         

3.  To grant access to the package, select the desired group and click **Grant Access**. The newly added group is displayed in the **AD ENTITIES WITH ACCESS** pane.

4.  

    To accept the default configuration settings and close the **AD ACCESS** page, click **Close**.

    To customize configurations for a specific group, click the **ASSIGNED CONFIGURATIONS** drop-down and select **Custom**. To configure the custom configurations, click **EDIT**. After you grant access, click **Close**.

**To remove access to an App-V 5.0 package**

1.  Find the package you want to configure:

    1.  Open the App-V 5.0 Management console.

    2.  To display the **AD ACCESS** page, right-click the package to be configured, and select **Edit active directory access**. Alternatively, select the package and click **EDIT** in the **AD ACCESS** pane.

2.  Select the group you want to remove, and click **DELETE**.

3.  To close the **AD ACCESS** page, click **Close**.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





