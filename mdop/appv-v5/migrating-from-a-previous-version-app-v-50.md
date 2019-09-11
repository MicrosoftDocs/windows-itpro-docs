---
title: Migrating from a Previous Version
description: Migrating from a Previous Version
author: dansimp
ms.assetid: a13cd353-b22a-48f7-af1e-5d54ede2a7e5
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Migrating from a Previous Version


With App-V 5.0 you can migrate your existing App-V 4.6 infrastructure to the more flexible, integrated, and easier to manage App-V 5.0 infrastructure.

Consider the following sections when you plan your migration strategy:

**Note**  
For more information about the differences between App-V 4.6 and App-V 5.0, see the **Differences between App-V 4.6 and App-V 5.0 section** of [About App-V 5.0](about-app-v-50.md).

 

## Converting packages created using a prior version of App-V


Use the package converter utility to upgrade virtual application packages created using previous versions of App-V. The package converter uses PowerShell to convert packages and can help automate the process if you have many packages that require conversion.

**Important**  
After you convert an existing package you should test the package prior to deploying the package to ensure the conversion process was successful.

 

**What to know before you convert existing packages**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Issue</th>
<th align="left">Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Package scripts are not converted.</p></td>
<td align="left"><p>Test the converted package. If necessary convert the script.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Package registry setting overrides are not converted.</p></td>
<td align="left"><p>Test the converted package. If necessary, re-add registry overrides.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Virtual packages using DSC are not linked after conversion.</p></td>
<td align="left"><p>Link the packages using connection groups. See <a href="managing-connection-groups.md" data-raw-source="[Managing Connection Groups](managing-connection-groups.md)">Managing Connection Groups</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Environment variable conflicts are detected during conversion.</p></td>
<td align="left"><p>Resolve any conflicts in the associated <strong>.osd</strong> file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Hard-coded paths are detected during conversion.</p></td>
<td align="left"><p>Hard-coded paths are difficult to convert correctly. The package converter will detect and return packages with files that contain hard-coded paths. View the file with the hard-coded path, and determine whether the package requires the file. If so, it is recommended to re-sequence the package.</p></td>
</tr>
</tbody>
</table>

 

When converting a package check for failing files or shortcuts. Locate the item in App-V 4.6 package. It could possibly be hard-coded path. Convert the path.

**Note**  
It is recommended that you use the App-V 5.0 sequencer for converting critical applications or applications that need to take advantage of features. See, [How to Sequence a New Application with App-V 5.0](how-to-sequence-a-new-application-with-app-v-50-beta-gb18030.md).

If a converted package does not open after you convert it, it is also recommended that you re-sequence the application using the App-V 5.0 sequencer.

 

[How to Convert a Package Created in a Previous Version of App-V](how-to-convert-a-package-created-in-a-previous-version-of-app-v.md)

## Migrating Clients


The following table displays the recommended method for upgrading clients.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">More Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Upgrade your environment to App-V 4.6 SP2</p></td>
<td align="left"><p><a href="../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md" data-raw-source="[Application Virtualization Deployment and Upgrade Considerations](../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md)">Application Virtualization Deployment and Upgrade Considerations</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Install the App-V 5.0 client with co-existence enabled.</p></td>
<td align="left"><p><a href="how-to-deploy-the-app-v-46-and-the-app-v--50-client-on-the-same-computer.md" data-raw-source="[How to Deploy the App-V 4.6 and the App-V 5.0 Client on the Same Computer](how-to-deploy-the-app-v-46-and-the-app-v--50-client-on-the-same-computer.md)">How to Deploy the App-V 4.6 and the App-V 5.0 Client on the Same Computer</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Sequence and roll out App-V 5.0 packages. As needed, unpublish App-V 4.6 packages.</p></td>
<td align="left"><p><a href="how-to-sequence-a-new-application-with-app-v-50-beta-gb18030.md" data-raw-source="[How to Sequence a New Application with App-V 5.0](how-to-sequence-a-new-application-with-app-v-50-beta-gb18030.md)">How to Sequence a New Application with App-V 5.0</a>.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
You must be running App-V 4.6 SP3 to use coexistence mode. Additionally, when you sequence a package, you must configure the Managing Authority setting, which is in the **User Configuration** is located in the **User Configuration** section.

 

## Migrating the App-V 5.0 Server Full Infrastructure


There is no direct method to upgrade to a full App-V 5.0 infrastructure. Use the information in the following section for information about upgrading the App-V server.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">More Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Upgrade your environment to App-V 4.6 SP3.</p></td>
<td align="left"><p><a href="../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md" data-raw-source="[Application Virtualization Deployment and Upgrade Considerations](../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md)">Application Virtualization Deployment and Upgrade Considerations</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deploy App-V 5.0 version of the client.</p></td>
<td align="left"><p><a href="how-to-deploy-the-app-v-client-gb18030.md" data-raw-source="[How to Deploy the App-V Client](how-to-deploy-the-app-v-client-gb18030.md)">How to Deploy the App-V Client</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install App-V 5.0 server.</p></td>
<td align="left"><p><a href="how-to-deploy-the-app-v-50-server-50sp3.md" data-raw-source="[How to Deploy the App-V 5.0 Server](how-to-deploy-the-app-v-50-server-50sp3.md)">How to Deploy the App-V 5.0 Server</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Migrate existing packages.</p></td>
<td align="left"><p>See the <strong>Converting packages created using a prior version of App-V</strong> section of this article.</p></td>
</tr>
</tbody>
</table>

 

## Additional Migration tasks


You can also perform additional migration tasks such as reconfiguring end points as well as opening a package created using a prior version on a computer running the App-V 5.0 client. The following links provide more information about performing these tasks.

[How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.0 Package for All Users on a Specific Computer](how-to-migrate-extension-points-from-an-app-v-46-package-to-a-converted-app-v-50-package-for-all-users-on-a-specific-computer.md)

[How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.0 for a Specific User](how-to-migrate-extension-points-from-an-app-v-46-package-to-app-v-50-for-a-specific-user.md)

[How to Revert Extension Points from an App-V 5.0 Package to an App-V 4.6 Package For All Users on a Specific Computer](how-to-revert-extension-points-from-an-app-v-50-package-to-an-app-v-46-package-for-all-users-on-a-specific-computer.md)

[How to Revert Extension Points From an App-V 5.0 Package to an App-V 4.6 Package for a Specific User](how-to-revert-extension-points-from-an-app-v-50-package-to-an-app-v-46-package-for-a-specific-user.md)







## Other resources for performing App-V migration tasks


[Operations for App-V 5.0](operations-for-app-v-50.md)

[A simplified Microsoft App-V 5.1 Management Server upgrade procedure](https://go.microsoft.com/fwlink/p/?LinkId=786330)

 

 





