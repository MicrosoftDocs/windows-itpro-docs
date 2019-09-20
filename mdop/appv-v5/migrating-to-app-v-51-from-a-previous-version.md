---
title: Migrating to App-V 5.1 from a Previous Version
description: Migrating to App-V 5.1 from a Previous Version
author: dansimp
ms.assetid: e7ee0edc-7544-4c0a-aaca-d922a33bc1bb
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Migrating to App-V 5.1 from a Previous Version


With Microsoft Application Virtualization (App-V) 5.1, you can migrate your existing App-V 4.6 or App-V 5.0 infrastructure to the more flexible, integrated, and easier to manage App-V 5.1 infrastructure.
However, you cannot migrate directly from App-V 4.x to App-V 5.1, you must migrate to App-V 5.0 first. For more information on migrating from App-V 4.x to App-V 5.0, see [Migrating from a Previous Version](migrating-from-a-previous-version-app-v-50.md)  

**Note**  
App-V 5.1 packages are exactly the same as App-V 5.0 packages. There has been no change in the package format between the versions and therefore, there is no need to convert App-V 5.0 packages to App-V 5.1 packages.

For more information about the differences between App-V 4.6 and App-V 5.1, see the **Differences between App-V 4.6 and App-V 5.0 section** of [About App-V 5.0](about-app-v-50.md).

 

## <a href="" id="bkmk-pkgconvimprove"></a>Improvements to the App-V 5.1 Package Converter


You can now use the package converter to convert App-V 4.6 packages that contain scripts, and registry information and scripts from source .osd files are now included in package converter output.

You can also use the `–OSDsToIncludeInPackage` parameter with the `ConvertFrom-AppvLegacyPackage` cmdlet to specify which .osd files’ information is converted and placed within the new package.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">New in App-V 5.1</th>
<th align="left">Prior to App-V 5.1</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>New .xml files are created corresponding to the .osd files associated with a package; these files include the following information:</p>
<ul>
<li><p>environment variables</p></li>
<li><p>shortcuts</p></li>
<li><p>file type associations</p></li>
<li><p>registry information</p></li>
<li><p>scripts</p></li>
</ul>
<p>You can now choose to add information from a subset of the .osd files in the source directory to the package using the <code>-OSDsToIncludeInPackage</code> parameter.</p></td>
<td align="left"><p>Registry information and scripts included in .osd files associated with a package were not included in package converter output.</p>
<p>The package converter would populate the new package with information from all of the .osd files in the source directory.</p></td>
</tr>
</tbody>
</table>

 

### Example conversion statement

To understand the new process, review the following example `ConvertFrom-AppvLegacyPackage` package converter statement.

**If the source directory (\\\\OldPkgStore\\ContosoApp) includes the following:**

-   ContosoApp.sft

-   ContosoApp.msi

-   ContosoApp.sprj

-   ContosoApp\_manifest.xml

-   X.osd

-   Y.osd

-   Z.osd

**And you run this command:**

``` syntax
ConvertFrom-AppvLegacyPackage –SourcePath \\OldPkgStore\ContosoApp\ 
-DestinationPath \\NewPkgStore\ContosoApp\
-OSDsToIncludeInPackage X.osd,Y.osd
```

**The following is created in the destination directory (\\\\NewPkgStore\\ContosoApp):**

-   ContosoApp.appv

-   ContosoApp.msi

-   ContosoApp\_DeploymentConfig.xml

-   ContosoApp\_UserConfig.xml

-   X\_Config.xml

-   Y\_Config.xml

-   Z\_Config.xml

**In the above example:**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">These Source directory files…</th>
<th align="left">…are converted to these Destination directory files…</th>
<th align="left">…and will contain these items</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>X.osd</p></li>
<li><p>Y.osd</p></li>
<li><p>Z.osd</p></li>
</ul></td>
<td align="left"><ul>
<li><p>X_Config.xml</p></li>
<li><p>Y_Config.xml</p></li>
<li><p>Z_Config.xml</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Environment variables</p></li>
<li><p>Shortcuts</p></li>
<li><p>File type associations</p></li>
<li><p>Registry information</p></li>
<li><p>Scripts</p></li>
</ul></td>
<td align="left"><p>Each .osd file is converted to a separate, corresponding .xml file that contains the items listed here in App-V 5.1 deployment configuration format. These items can then be copied from these .xml files and placed in the deployment configuration or user configuration files as desired.</p>
<p>In this example, there are three .xml files, corresponding with the three .osd files in the source directory. Each .xml file contains the environment variables, shortcuts, file type associations, registry information, and scripts in its corresponding .osd file.</p></td>
</tr>
<tr class="even">
<td align="left"><ul>
<li><p>X.osd</p></li>
<li><p>Y.osd</p></li>
</ul></td>
<td align="left"><ul>
<li><p>ContosoApp.appv</p></li>
<li><p>ContosoApp_DeploymentConfig.xml</p></li>
<li><p>ContosoApp_UserConfig.xml</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Environment variables</p></li>
<li><p>Shortcuts</p></li>
<li><p>File type associations</p></li>
</ul></td>
<td align="left"><p>The information from the .osd files specified in the <code>-OSDsToIncludeInPackage</code> parameter are converted and placed inside the package. The converter then populates the deployment configuration file and the user configuration file with the contents of the package, just as App-V Sequencer does when sequencing a new package.</p>
<p>In this example, environment variables, shortcuts, and file type associations included in X.osd and Y.osd were converted and placed in the App-V package, and some of this information was also included in the deployment configuration and user configuration files. X.osd and Y.osd were used because they were included as arguments to the <code>-OSDsToIncludeInPackage</code> parameter. No information from Z.osd was included in the package, because it was not included as one of these arguments.</p></td>
</tr>
</tbody>
</table>

 

## Converting packages created using a prior version of App-V


Use the package converter utility to upgrade virtual application packages created using versions of App-V prior to App-V 5.0. The package converter uses PowerShell to convert packages and can help automate the process if you have many packages that require conversion.

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
<td align="left"><p>Virtual packages using DSC are not linked after conversion.</p></td>
<td align="left"><p>Link the packages using connection groups. See <a href="managing-connection-groups51.md" data-raw-source="[Managing Connection Groups](managing-connection-groups51.md)">Managing Connection Groups</a>.</p></td>
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

 

When converting a package check for failing files or shortcuts. Locate the item in App-V 4.6 package. It could possibly be a hard-coded path. Convert the path.

**Note**  
It is recommended that you use the App-V 5.1 sequencer for converting critical applications or applications that need to take advantage of features. See, [How to Sequence a New Application with App-V 5.1](how-to-sequence-a-new-application-with-app-v-51-beta-gb18030.md).

If a converted package does not open after you convert it, it is also recommended that you re-sequence the application using the App-V 5.1 sequencer.

 

[How to Convert a Package Created in a Previous Version of App-V](how-to-convert-a-package-created-in-a-previous-version-of-app-v51.md)

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
<td align="left"><p>Upgrade your environment to the latest version of App-V 4.6</p></td>
<td align="left"><p><a href="../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md" data-raw-source="[Application Virtualization Deployment and Upgrade Considerations](../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md)">Application Virtualization Deployment and Upgrade Considerations</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Install the App-V 5.1 client with co-existence enabled.</p></td>
<td align="left"><p><a href="how-to-deploy-the-app-v-46-and-the-app-v--51-client-on-the-same-computer.md" data-raw-source="[How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer](how-to-deploy-the-app-v-46-and-the-app-v--51-client-on-the-same-computer.md)">How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Sequence and roll out App-V 5.1 packages. As needed, unpublish App-V 4.6 packages.</p></td>
<td align="left"><p><a href="how-to-sequence-a-new-application-with-app-v-51-beta-gb18030.md" data-raw-source="[How to Sequence a New Application with App-V 5.1](how-to-sequence-a-new-application-with-app-v-51-beta-gb18030.md)">How to Sequence a New Application with App-V 5.1</a>.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
You must be running the latest version of App-V 4.6 to use coexistence mode. Additionally, when you sequence a package, you must configure the Managing Authority setting, which is in the **User Configuration** is located in the **User Configuration** section.

 

## Migrating the App-V 5.1 Server Full Infrastructure


There is no direct method to upgrade to a full App-V 5.1 infrastructure. Use the information in the following section for information about upgrading the App-V server.

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
<td align="left"><p>Upgrade your environment to the latest version of App-V 4.6.</p></td>
<td align="left"><p><a href="../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md" data-raw-source="[Application Virtualization Deployment and Upgrade Considerations](../appv-v4/application-virtualization-deployment-and-upgrade-considerations-copy.md)">Application Virtualization Deployment and Upgrade Considerations</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deploy App-V 5.1 version of the client.</p></td>
<td align="left"><p><a href="how-to-deploy-the-app-v-client-51gb18030.md" data-raw-source="[How to Deploy the App-V Client](how-to-deploy-the-app-v-client-51gb18030.md)">How to Deploy the App-V Client</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install App-V 5.1 server.</p></td>
<td align="left"><p><a href="how-to-deploy-the-app-v-51-server.md" data-raw-source="[How to Deploy the App-V 5.1 Server](how-to-deploy-the-app-v-51-server.md)">How to Deploy the App-V 5.1 Server</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Migrate existing packages.</p></td>
<td align="left"><p>See the <strong>Converting packages created using a prior version of App-V</strong> section of this article.</p></td>
</tr>
</tbody>
</table>

 

## Additional Migration tasks


You can also perform additional migration tasks such as reconfiguring end points as well as opening a package created using a prior version on a computer running the App-V 5.1 client. The following links provide more information about performing these tasks.

[How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.1 Package for All Users on a Specific Computer](how-to-migrate-extension-points-from-an-app-v-46-package-to-a-converted-app-v-51-package-for-all-users-on-a-specific-computer.md)

[How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.1 for a Specific User](how-to-migrate-extension-points-from-an-app-v-46-package-to-app-v-51-for-a-specific-user.md)

[How to Revert Extension Points from an App-V 5.1 Package to an App-V 4.6 Package For All Users on a Specific Computer](how-to-revert-extension-points-from-an-app-v-51-package-to-an-app-v-46-package-for-all-users-on-a-specific-computer.md)

[How to Revert Extension Points From an App-V 5.1 Package to an App-V 4.6 Package for a Specific User](how-to-revert-extension-points-from-an-app-v-51-package-to-an-app-v-46-package-for-a-specific-user.md)







## Other resources for performing App-V migration tasks


[Operations for App-V 5.1](operations-for-app-v-51.md)

[A simplified Microsoft App-V 5.1 Management Server upgrade procedure](https://go.microsoft.com/fwlink/p/?LinkId=786330)

 

 





