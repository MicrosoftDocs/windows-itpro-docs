---
title: Migrating to App-V from a Previous Version (Windows 10/11)
description: Learn how to migrate to Microsoft Application Virtualization (App-V) for Windows 10/11 from a previous version.
author: greg-lindsay
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: greglin
---


# Migrating to App-V from previous versions

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

To migrate from App-V 4.x to App-V for Windows 10/11, you must upgrade to App-V 5.x first. 

## <a href="" id="bkmk-pkgconvimprove"></a>Improvements to the App-V Package Converter


You can now use the package converter to convert App-V 4.6 packages that contain scripts, and registry information and scripts from source .osd files are now included in package converter output.

You can also use the `–OSDsToIncludeInPackage` parameter with the `ConvertFrom-AppvLegacyPackage` cmdlet to specify which .osd files’ information is converted and placed within the new package.

|New in App-V for Windows client|Prior to App-V for Windows 10|
|--- |--- |
|New .xml files are created corresponding to the .osd files associated with a package; these files include the following information:<li>environment variables<li>shortcuts<li>file type associations<li>registry information<li>scripts<br> <br>You can now choose to add information from a subset of the .osd files in the source directory to the package using the -OSDsToIncludeInPackage parameter.|Registry information and scripts included in .osd files associated with a package weren't included in package converter output.<br> <br>The package converter would populate the new package with information from all of the .osd files in the source directory.|

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

|These Source directory files…|…are converted to these Destination directory files…|…and will contain these items|Description|
|--- |--- |--- |--- |
|<li>X.osd<li>Y.osd<li>Z.osd|<li>X_Config.xml<li>Y_Config.xml<li>Z_Config.xml|<li>Environment variables:<li>Shortcuts<li>File type associations<li>Registry information<li>Scripts|Each .osd file is converted to a separate, corresponding .xml file that contains the items listed here in App-V deployment configuration format. These items can then be copied from these .xml files and placed in the deployment configuration or user configuration files as desired.<br>In this example, there are three .xml files, corresponding with the three .osd files in the source directory. Each .xml file contains the environment variables, shortcuts, file type associations, registry information, and scripts in its corresponding .osd file.|
|<li>X.osd<li>Y.osd|<li>ContosoApp.appv <li>ContosoApp_DeploymentConfig.xml  <li>ContosoApp_UserConfig.xml|<li>Environment variables<li>Shortcuts<li>File type associations|The information from the .osd files specified in the -OSDsToIncludeInPackage parameter is converted and placed inside the package. The converter then populates the deployment configuration file and the user configuration file with the contents of the package, just as App-V Sequencer does when sequencing a new package.<br>In this example, environment variables, shortcuts, and file type associations included in X.osd and Y.osd were converted and placed in the App-V package, and some of this information was also included in the deployment configuration and user configuration files. X.osd and Y.osd were used because they were included as arguments to the -OSDsToIncludeInPackage parameter. No information from Z.osd was included in the package, because it wasn't included as one of these arguments.|

## Converting packages created using a prior version of App-V


Use the package converter utility to upgrade virtual application packages created using versions of App-V prior to App-V 5.0. The package converter uses Windows PowerShell to convert packages and can help automate the process if you have many packages that require conversion. App-V packages created with App-V 5.x don't need to be converted.


**Important**  
After you convert an existing package you should test the package prior to deploying the package to ensure the conversion process was successful.

 

**What to know before you convert existing packages**

|Issue|Workaround|
|--- |--- |
|Virtual packages using DSC aren't linked after conversion.|Link the packages using connection groups. See [Managing Connection Groups](appv-managing-connection-groups.md).|
|Environment variable conflicts are detected during conversion.|Resolve any conflicts in the associated **.osd** file.|
|Hard-coded paths are detected during conversion.|Hard-coded paths are difficult to convert correctly. The package converter will detect and return packages with files that contain hard-coded paths. View the file with the hard-coded path, and determine whether the package requires the file. If so, it's recommended to re-sequence the package.|

When converting a package check for failing files or shortcuts, locate the item in App-V 4.6 package. It could possibly be a hard-coded path. Convert the path.

**Note**  
It's recommended that you use the App-V sequencer for converting critical applications or applications that need to take advantage of features. See [How to Sequence a New Application with App-V](appv-sequence-a-new-application.md).

If a converted package doesn't open after you convert it, it's also recommended that you resequence the application using the App-V sequencer.

[How to Convert a Package Created in a Previous Version of App-V](appv-convert-a-package-created-in-a-previous-version-of-appv.md)

## Migrating the App-V Server Full Infrastructure


There's no direct method to upgrade to a full App-V infrastructure. Use the information in the following section for information about upgrading the App-V server.

|Task|More Information|
|--- |--- |
|Review prerequisites.|[App-V Server prerequisite software](appv-prerequisites.md#app-v-server-prerequisite-software)|
|Enable the App-V client.|[Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md)|
|Install App-V Server.|[How to Deploy the App-V Server](appv-deploy-the-appv-server.md)|
|Migrate existing packages.|See [Converting packages created using a prior version of App-V](#converting-packages-created-using-a-prior-version-of-app-v) earlier in this topic.|

<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Other resources for performing App-V migration tasks

- [Operations for App-V](appv-operations.md)

- [A simplified Microsoft App-V 5.1 Management Server upgrade procedure](/archive/blogs/appv/a-simplified-microsoft-app-v-5-1-management-server-upgrade-procedure)