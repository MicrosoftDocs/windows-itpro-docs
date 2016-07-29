---
title: How to Deploy the App-V 4.6.x and the App-V Client on the Same Computer (Windows 10)
description: How to Deploy the App-V 4.6.x and the App-V Client on the Same Computer
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Deploy the App-V 4.6.x and the App-V Client on the Same Computer


Use the following information to install the Microsoft Application Virtualization (App-V) client (preferably, with the latest Service Packs and hotfixes) and the App-V 4.6 SP2 client or the App-V 4.6 S3 client on the same computer. For supported versions, requirements, and other planning information, see [Planning for Migrating from a Previous Version of App-V](appv-planning-for-migrating-from-a-previous-version-of-appv.md).

**To deploy the App-V client and App-V 4.6.x client on the same computer**

1.  Install one of the following versions of the App-V client on the computer that is running App-V 4.6.

    -   [Microsoft Application Virtualization 4.6 Service Pack 2](http://go.microsoft.com/fwlink/?LinkId=262687)

    -   [Microsoft Application Virtualization 4.6 Service Pack 3](http://www.microsoft.com/download/details.aspx?id=41187)

2.  Install the App-V client on the computer that is running the App-V 4.6 SP2 or 4.6 SP3 version of the client. For best results, we recommend that you install all available updates to the App-V client.

3.  Convert or re-sequence the packages gradually.

    -   To convert the packages, use the App-V package converter and convert the required packages to the App-V (**.appv**) file format.

    -   To re-sequence the packages, consider using the latest version of the Sequencer for best results.

    For more information about publishing packages, see [How to Publish a Package by Using the Management Console](appv-publish-a-packages-with-the-management-console.md).

4.  Deploy packages to the client computers.

5.  Convert extension points, as needed. For more information, see the following resources:

    -   [How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V Package for All Users on a Specific Computer](appv-migrate-extension-points-from-an-appv-46-sp2-package-to-a-converted-appv-51-package-for-all-users-on-a-specific-computer.md)

    -   [How to Migrate Extension Points From an App-V 4.6 Package to App-V for a Specific User](appv-migrate-extension-points-from-an-appv-46-sp2-package-to-appv-51-for-a-specific-user.md)

    -   [How to Convert a Package Created in a Previous Version of App-V](appv-convert-a-package-created-in-a-previous-version-of-appv.md)

6.  Test that your App-V packages are successful, and then remove the 4.6 packages. To check the user state of your client computers, we recommend that you use [User Experience Virtualization](http://technet.microsoft.com/library/dn458947.aspx) or another user environment management tool.

    **Have a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Planning for Migrating from a Previous Version of App-V](appv-planning-for-migrating-from-a-previous-version-of-appv.md)

[Deploying the App-V Sequencer and Client](appv-deploying-the-appv-sequencer-and-client.md)

 

 





