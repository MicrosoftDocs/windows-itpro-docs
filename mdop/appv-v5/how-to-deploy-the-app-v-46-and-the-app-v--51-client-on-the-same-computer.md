---
title: How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer
description: How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer
ms.assetid: 498d50c7-f13d-4fbb-8ea1-b959ade26fdf
ms.reviewer: 
manager: dansimp
ms.author: dansimp
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---

# How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer

**Note:** App-V 4.6 has exited Mainstream support.

Use the following information to install the Microsoft Application Virtualization (App-V) 5.1 client (preferably, with the latest Service Packs and hotfixes) and the App-V 4.6 SP2 client or the App-V 4.6 S3 client on the same computer. For supported versions, requirements, and other planning information, see [Planning for Migrating from a Previous Version of App-V](planning-for-migrating-from-a-previous-version-of-app-v51.md).

**To deploy the App-V 5.1 client and App-V 4.6 client on the same computer**

1.  Install the following version of the App-V client on the computer that is running App-V 4.6.

    -   [Microsoft Application Virtualization 4.6 Service Pack 3](https://www.microsoft.com/download/details.aspx?id=41187)

2.  Install the App-V 5.1 client on the computer that is running the App-V 4.6 SP3 version of the client. For best results, we recommend that you install all available updates to the App-V 5.1 client.

3.  Convert or re-sequence the packages gradually.

    -   To convert the packages, use the App-V 5.1 package converter and convert the required packages to the App-V 5.1 (**.appv**) file format.

    -   To re-sequence the packages, consider using the latest version of the Sequencer for best results.

    For more information about publishing packages, see [How to Publish a Package by Using the Management Console](how-to-publish-a-package-by-using-the-management-console-51.md).

4.  Deploy packages to the client computers.

5.  Convert extension points, as needed. For more information, see the following resources:

    -   [How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.1 Package for All Users on a Specific Computer](how-to-migrate-extension-points-from-an-app-v-46-package-to-a-converted-app-v-51-package-for-all-users-on-a-specific-computer.md)

    -   [How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.1 for a Specific User](how-to-migrate-extension-points-from-an-app-v-46-package-to-app-v-51-for-a-specific-user.md)

    -   [How to Convert a Package Created in a Previous Version of App-V](how-to-convert-a-package-created-in-a-previous-version-of-app-v51.md)

6.  Test that your App-V 5.1 packages are successful, and then remove the 4.6 packages. To check the user state of your client computers, we recommend that you use [User Experience Virtualization](https://technet.microsoft.com/library/dn458947.aspx) or another user environment management tool.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Planning for Migrating from a Previous Version of App-V](planning-for-migrating-from-a-previous-version-of-app-v51.md)

[Deploying the App-V 5.1 Sequencer and Client](deploying-the-app-v-51-sequencer-and-client.md)

 

 





