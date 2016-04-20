---
title: How to Deploy the App-V 4.6.x and the App-V 5.0 Client on the Same Computer
description: How to Deploy the App-V 4.6.x and the App-V 5.0 Client on the Same Computer
ms.assetid: 5b7e27e4-4360-464c-b832-f1c7939e5485
author: jamiejdt
---

# How to Deploy the App-V 4.6.x and the App-V 5.0 Client on the Same Computer


Use the following information to install the App-V 5.0 client (preferably, with the latest Service Packs and hotfixes) and the App-V 4.6 SP2 client or the App-V 4.6 S3 client on the same computer. For supported versions, requirements, and other planning information, see [Planning for Migrating from a Previous Version of App-V](planning-for-migrating-from-a-previous-version-of-app-v.md).

**To deploy the App-V 5.0 client and App-V 4.6.x client on the same computer**

1.  Install one of the following versions of the App-V client on the computer that is running App-V 4.6.

    -   [Microsoft Application Virtualization 4.6 Service Pack 2](http://go.microsoft.com/fwlink/?LinkId=262687)

    -   [Microsoft Application Virtualization 4.6 Service Pack 3](http://www.microsoft.com/download/details.aspx?id=41187)

2.  Install the App-V 5.0 client on the computer that is running the App-V 4.6 SP2 or 4.6 SP3 version of the client. For best results, we recommend that you install all available updates to the App-V 5.0 client.

3.  Convert or re-sequence the packages gradually.

    -   To convert the packages, use the App-V 5.0 package converter and convert the required packages to the App-V 5.0 (**.appv**) file format.

    -   To re-sequence the packages, consider using the latest version of the Sequencer for best results.

    For more information about publishing packages, see [How to Publish a Package by Using the Management Console](how-to-publish-a-package-by-using-the-management-console-50.md).

4.  Deploy packages to the client computers.

5.  Convert extension points, as needed. For more information, see the following resources:

    -   [How to Migrate Extension Points From an App-V 4.6 SP2 Package to a Converted App-V 5.0 Package for All Users on a Specific Computer](how-to-migrate-extension-points-from-an-app-v-46-sp2-package-to-a-converted-app-v-50-package-for-all-users-on-a-specific-computer.md)

    -   [How to Migrate Extension Points From an App-V 4.6 SP2 Package to App-V 5.0 for a Specific User](how-to-migrate-extension-points-from-an-app-v-46-sp2-package-to-app-v-50-for-a-specific-user.md)

    -   [How to Convert a Package Created in a Previous Version of App-V](how-to-convert-a-package-created-in-a-previous-version-of-app-v.md)

6.  Test that your App-V 5.0 packages are successful, and then remove the 4.6 packages. To check the user state of your client computers, we recommend that you use [User Experience Virtualization](http://technet.microsoft.com/library/dn458947.aspx) or another user environment management tool.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Planning for Migrating from a Previous Version of App-V](planning-for-migrating-from-a-previous-version-of-app-v.md)

[Deploying the App-V 5.0 Sequencer and Client](deploying-the-app-v-50-sequencer-and-client.md)

 

 





