---
title: Deploying Microsoft Office 2016 by using App-V (Windows 10)
description: Deploying Microsoft Office 2016 by using App-V
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Deploying Microsoft Office 2016 by using App-V

>Applies to: Windows 10, version 1607

Use the information in this article to use Application Virtualization (App-V) to deliver Microsoft Office 2016 as a virtualized application to computers in your organization. For information about using App-V to deliver Office 2013, see [Deploying Microsoft Office 2013 by using App-V](appv-deploying-microsoft-office-2013-with-appv.md). For information about using App-V to deliver Office 2010, see [Deploying Microsoft Office 2010 by using App-V](appv-deploying-microsoft-office-2010-wth-appv.md).

## What to know before you start

Before you deploy Office 2016 with App-V, review the following planning information.

### Supported Office versions and Office coexistence

Use the following table to get information about supported versions of Office and running coexisting versions of Office.

|Information to review|Description|
|---|---|
|[Supported versions of Microsoft Office](appv-planning-for-using-appv-with-office.md#supported-versions-of-microsoft-office)|Supported versions of Office and deployment types (for example, desktop, personal Virtual Desktop Infrastructure (VDI), and pooled VDI), and Office licensing options.|
|[Planning for using App-V with coexisting versions of Office](appv-planning-for-using-appv-with-office.md#before-you-implement-office-coexistence)|Considerations for installing different versions of Office on the same computer.|

### Packaging, publishing, and deployment requirements

Before you deploy Office with App-V, review the following requirements.

|Task|Requirement|
|-----------|-------------------|
| Packaging.  | All Office applications that you deploy to users must be in a single package.<br>In App-V 5.0 and later, you must use the Office Deployment Tool to create packages. The Sequencer doesn't support package creation.<br>If you're deploying Microsoft Visio 2016 and Microsoft Project 2016 at the same time as Office, you must put them all in the same package. For more information, see [Deploying Visio 2016 and Project 2016 with Office](#deploying-visio-2016-and-project-2016-with-office). |
| Publishing.   | You can only publish one Office package per client computer.<br>You must publish the Office package globally, not to the user. |
| Deploying Office 365 ProPlus, Visio Pro for Office 365, or Project Pro for Office 365 to a shared computer with Remote Desktop Services. | You must enable [shared computer activation](https://docs.microsoft.com/DeployOffice/overview-of-shared-computer-activation-for-office-365-proplus). |

### Excluding Office applications from a package

The following table describes the recommended methods for excluding specific Office applications from a package.

|Task|Details|
|-------------|---------------|
| Use the **ExcludeApp** setting when you create the package by using the Office Deployment Tool. | With this setting, you can exclude specific Office applications from the package that the Office Deployment Tool creates. For example, you can use this setting to create a package that contains only Microsoft Word.<br>For more information, see [ExcludeApp element](https://docs.microsoft.com/DeployOffice/configuration-options-for-the-office-2016-deployment-tool?ui=en-US&rs=en-US&ad=US#excludeapp-element). |
| Modify the DeploymentConfig.xml file | Modify the DeploymentConfig.xml file after the package has been created. This file contains the default package settings for all users on a computer that is running the App-V Client.<br>For more information, see [Disabling Office 2016 applications](#disabling-office-2016-applications).                      |

## Creating an Office 2016 package for App-V with the Office Deployment Tool

Complete the following steps to create an Office 2016 package for App-V.

>[!IMPORTANT]
>In App-V 5.0 and later, you must use the Office Deployment Tool to create a package. You cannot use the Sequencer to create packages.

### Review prerequisites for using the Office Deployment Tool

The computer on which you are installing the Office Deployment Tool must have the following:

| Prerequisite     | Description    |
|----------------------|--------------------|
| Prerequisite software    | .Net Framework 4    |
| Supported operating systems | 64-bit version of Windows 10<br>64-bit version of Windows 8 or 8.1<br>64-bit version of Windows 7 |

>[!NOTE]
>In this topic, the term “Office 2016 App-V package” refers to subscription licensing.

### Create Office 2016 App-V packages with the Office Deployment Tool

You create Office 2016 App-V packages by using the Office Deployment Tool. The following instructions explain how to create an Office 2016 App-V package with subscription licensing.

Create Office 2016 App-V packages on 64-bit Windows computers. Once created, the Office 2016 App-V package will run on 32-bit and 64-bit Windows 7, Windows 8.1, and Windows 10 computers.

### Download the Office Deployment Tool

Office 2016 App-V packages are created using the Office Deployment Tool, which generates an Office 2016 App-V Package. The package cannot be created or modified through the App-V sequencer. To begin package creation, follow these steps:

1. Download the [Office 2016 Deployment Tool for Click-to-Run](https://www.microsoft.com/download/details.aspx?id=49117).

    >[!IMPORTANT]
    >You must use the Office 2016 Deployment Tool to create Office 2016 App-V Packages.
2. Run the .exe file and extract its features into the desired location. To make this process easier, you can create a shared network folder where the features will be saved.

    Example location: \\\\Server\\Office2016
3. Check that the **setup.exe** and **configuration.xml** files exist and are in the location you specified.

### Download Office 2016 applications

After you download the Office Deployment Tool, you can use it to get the latest Office 2016 applications. After getting the Office applications, you create the Office 2016 App-V package.

The XML file included in the Office Deployment Tool specifies the product details, such as the languages and Office applications included.

1. **Customize the sample XML configuration file:** Use the sample XML configuration file that you downloaded with the Office Deployment Tool to customize the Office applications:
   1. Open the sample XML file in Notepad or your favorite text editor.
   2. With the sample **configuration.xml** file open and ready for editing, you can specify products, languages, and the path to which you save the Office 2016 applications. The following is a basic example of the **configuration.xml** file:

      ```XML
      <Configuration>
         <Add SourcePath= ”\\Server\Office2016” OfficeClientEdition="32" >
          <Product ID="O365ProPlusRetail ">
            <Language ID="en-us" />
          </Product>
          <Product ID="VisioProRetail">
            <Language ID="en-us" />
          </Product>
        </Add>
      </Configuration>
      ```
    
     > [!NOTE]
      >The configuration XML is a sample XML file. The file includes lines that are commented out. You can “uncomment” these lines to customize additional settings with the file. To uncomment these lines, remove the ```<! - -``` from the beginning of the line, and the ```-- >``` from the end of the line.

      The previous example of an XML configuration file specifies that Office 2016 ProPlus 32-bit edition, including Visio ProPlus, will be downloaded in English to the \\\\server\\Office2016 location where Office applications will be saved. Note that the Product ID of the applications will not affect Office's final licensing. You can create Office 2016 App-V packages with various licensing from the same applications by specifying licensing in a later stage. The following table summarizes the XML file's customizable attributes and elements:

      | Input    | Description            | Example    |
      |--------------|----------------------------|----------------|
      | Add element  | Specifies which products and languages the package will include.     | N/A     |
      | **OfficeClientEdition** (attribute of **Add** element) | Specifies whether Office 2016 32-bit or 64-bit edition will be used. **OfficeClientEdition**  must be set to a valid value for the operation to succeed.     | `OfficeClientEdition="32"`<br>`OfficeClientEdition="64"`  |
      | Product element   | Specifies the application. Project 2016 and Visio 2016 must be specified here as added products to include them in the applications.<br>For more information about Product IDs, see [Product IDs that are supported by the Office Deployment Tool for Click-to-Run](https://support.microsoft.com/kb/2842297).   | `Product ID ="O365ProPlusRetail"`<br>`Product ID ="VisioProRetail"`<br>`Product ID ="ProjectProRetail"` |
      | Language element     | Specifies which language the applications support.    | `Language ID="en-us"`   |
      | Version (attribute of **Add** element) | Optional. Specifies which build the package will use.<br>Defaults to latest advertised build (as defined in v32.CAB at the Office source).   | `16.1.2.3`    |
      | SourcePath (attribute of **Add** element)   | Specifies the location the applications will be saved to.    | `Sourcepath = "\\Server\Office2016"`     |
      | Channel (part of **Add** element)       | Optional. Defines which channel will be used to update Office after installation.<br>The default is **Deferred** for Office 365 ProPlus and **Current** for Visio Pro for Office 365 and Project Desktop Client. <br>For more information about update channels, see [Overview of update channels for Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/overview-of-update-channels-for-office-365-proplus). | `Channel="Current"`<br>`Channel="Deferred"`<br>`Channel="FirstReleaseDeferred"`<br>`Channel="FirstReleaseCurrent"`  |

After editing the **configuration.xml** file to specify the desired product, languages, and the location where the Office 2016 applications will be saved to, you can save the configuration file under a name of your choice, such as "Customconfig.xml."
2. **Download the applications into the specified location:** Use an elevated command prompt and a 64-bit operating system to download the Office 2016 applications that will later be converted into an App-V package. The following is an example command:

   `\\server\Office2016\setup.exe /download \\server\Office2016\Customconfig.xml`

   The following table describes the example command's elements:

   | Element | Description |
   |-------------------------------|--------------------------------------|
   | ```\\server\Office2016```    | This is the network share location that contains the Office Deployment Tool and the custom **Configuration.xml** file, which in this example is **Customconfig.xml**.    |
   | ``Setup.exe``   | This is the Office Deployment Tool.     |
   | ```/download```  | Downloads the Office 2016 applications that you specify in the **Customconfig.xml** file.  |
   | ```\\server\Office2016\Customconfig.xml```| This passes the XML configuration file required to complete the download process. In this example, the file used is **Customconfig.xml**. After using the download command, Office applications should be found in the location specified in the configuration file, which in this example is ```\\Server\Office2016```. |

### Convert the Office applications into an App-V package

After you download the Office 2016 applications through the Office Deployment Tool, use the Office Deployment Tool to convert them into an Office 2016 App-V package. Complete the steps that correspond to your licensing model.

#### What you’ll need to do

* Create the Office 2016 App-V packages on 64-bit Windows computers. However, the package will run on 32-bit and 64-bit Windows 7, Windows 8 or 8.1, and Windows 10 computers.
* Create an Office App-V package for either Subscription Licensing package by using the Office Deployment Tool, and then modify the **Customconfig.xml** configuration file.

    The following table summarizes the values you need to enter in the **Customconfig.xml** file. The steps in the sections that follow the table will specify the exact entries you need to make.

>[!NOTE]
>You can use the Office Deployment Tool to create App-V packages for Office 365 ProPlus. Creating packages for the volume-licensed versions of Office Professional Plus or Office Standard is not supported.

| Product ID  | Subscription licensing  |
|---|---|
| Office 2016| O365ProPlusRetail |
| Office 2016 with Visio 2016  | O365ProPlusRetail<br>VisioProRetail  |
| Office 2016 with Visio 2016 and Project 2016     | O365ProPlusRetail<br>VisioProRetail<br>ProjectProRetail     |

#### How to convert the Office applications into an App-V package

1. In Notepad, reopen the CustomConfig.xml file, and make the following changes to the file:

   * **SourcePath**: Change to the location where you saved the Office applications you downloaded during setup.
   * **ProductID**: Specify the type of licensing, as shown in the following example:

     * Subscription Licensing:
       ```XML
       <Configuration>
        <Add SourcePath= "\\server\Office 2016" OfficeClientEdition="32" >
         <Product ID="O365ProPlusRetail">
           <Language ID="en-us" />
         </Product>
         <Product ID="VisioProRetail">
           <Language ID="en-us" />
         </Product>
       </Add>
       </Configuration>
       ```
       This example made the following changes to create this Subscription Licensing package:
        
     * **SourcePath** was changed to point to the Office applications that were downloaded earlier.
     * **Product ID** for Office was changed to `O365ProPlusRetail`.
     * **Product ID** for Visio was changed to `VisioProRetail`.
   * **ExcludeApp** (optional): Lets you specify Office programs that you don’t want included in the App-V package created by the Office Deployment Tool. For example, you can exclude Access.
   * **PACKAGEGUID** (optional): By default, all App-V packages created by the Office Deployment Tool share the same App-V Package ID. You can use **PACKAGEGUID** to specify a different package ID for each package, which allows you to publish multiple App-V packages created by the Office Deployment Tool, and then manage your published packages with the App-V Server.
        
       An example of when to use this parameter is if you create different packages for different users. For example, you can create a package with just Office 2016 for some users, and create another package with Office 2016 and Visio 2016 for another set of users.
        
      > [!NOTE]
       >Even if you use unique package IDs, you can still deploy only one App-V package to a single device.
2. Use the /packager command to convert the Office applications to an Office 2016 App-V package.

    The following is an example packager command:

    ```syntax
    \\server\Office2016\setup.exe /packager \\server\Office2016\Customconfig.xml  \\server\share\Office2016AppV
    ```

    The following table describes each element used in the example command:

    | Element | Description |
    |-------------------------------|--------------------------------------|
    |```\\server\Office2016```|This is the network share location that contains the Office Deployment Tool and the custom Configuration.xml file, which in this example is Customconfig.xml.|
    |```Setup.exe```|This is the Office Deployment Tool.|
    |```/packager```|This command creates the Office 2016 App-V package with the license type specified in the Customconfig.xml file.|
    |```\\server\Office2016\Customconfig.xml```|This passes the configuration XML file that has been prepared for the packaging stage. In this example, the file is Customconfig.xml.|
    |```\\server\share\Office2016AppV```|This specifies the location of the newly created Office App-V package.|

    After you run the **/packager** command, the following folders appear up in the directory where you specified the package should be saved:
    
   * **App-V Packages**—contains an Office 2016 App-V package and two deployment configuration files.
   * **WorkingDir**

    > [!NOTE]
     >To troubleshoot any issues, see the log files in the %temp% directory (default).
3. Verify that the Office 2016 App-V package works correctly:

    1. Publish the Office 2016 App-V package that you created globally to a test computer and verify that the Office 2016 shortcuts appear.
    2. Start a few Office 2016 applications, such as Excel or Word, to ensure that your package is working as expected.

## Publishing the Office package for App-V

Use the following information to publish an Office package.

### Methods for publishing Office App-V packages

Deploy the App-V package for Office 2016 by using the same methods as the other packages that you've already deployed:

* System Center Configuration Manager
* App-V Server
* Stand-alone through Windows PowerShell commands

### Publishing prerequisites and requirements

| Prerequisite or requirement           | Details            |
|---------------------------------------|--------------------|
| Enable Windows PowerShell scripting on the App-V clients. | To publish Office 2016 packages, you must run a script. However, package scripts are disabled by default on App-V clients. To enable scripting, run the following Windows PowerShell command:<br>`Set-AppvClientConfiguration -EnablePackageScripts 1`    |
| Publish the Office 2016 package globally.     | Extension points in the Office App-V package require installation at the computer level.<br>When you publish at the computer level, no prerequisite actions or redistributables are needed. The Office 2016 package globally enables its applications to work like natively installed Office, eliminating the need for administrators to customize packages. |

### How to publish an Office package

Run the following command to publish an Office package globally:

```PowerShell
Add-AppvClientPackage <Path_to_AppV_Package > | Publish-AppvClientPackage -global
```

* You can add permissions to a group of computers instead of just a user group through the Web Management Console on the App-V Server. This lets packages be published globally to the computers in the corresponding group.

## Customizing and managing Office App-V packages

To manage your Office App-V packages, use the same operations as you would for any other package, with a few exceptions as outlined in the following sections.

* [Enabling Office plug-ins by using connection groups](#enabling-office-plug-ins-by-using-connection-groups)
* [Disabling Office 2016 applications](#disabling-office-2016-applications)
* [Disabling Office 2016 shortcuts](#disabling-office-2016-shortcuts)
* [Managing Office 2016 package upgrades](#managing-office-2016-package-upgrades)
* [Deploying Visio 2016 and Project 2016 with Office](#deploying-visio-2016-and-project-2016-with-office)

### Enabling Office plug-ins by using connection groups

The following steps will tell you how to enable Office plug-ins with your Office package. To use Office plug-ins, you must use the App-V Sequencer to create a separate package that only contains the plug-ins (you can't use the Office Deployment Tool to create the plug-ins package). After that, create a connection group that contains the Office package and the plug-ins package.

#### Enable plug-ins for Office App-V packages

1. Add a Connection Group through App-V Server, System Center Configuration Manager, or a Windows PowerShell cmdlet.
2. Sequence your plug-ins using the App-V Sequencer. Ensure that Office 2016 is installed on the computer that will be used to sequence the plug-in. We recommend that you use Office 365 ProPlus (non-virtual) on the sequencing computer when sequencing Office 2016 plug-ins.
3. Create an App-V package that includes the plug-ins you want.
4. Add a Connection Group through the App-V Server, System Center Configuration Manager, or a Windows PowerShell cmdlet.
5. Add the Office 2016 App-V package and the plug-ins package you sequenced to the Connection Group you created.

    >[!IMPORTANT]
    >The order of the packages in the Connection Group determines the order in which the package contents are merged. In your Connection group descriptor file, add the Office 2016 App-V package first, and then add the plug-in App-V package.
6. Ensure that both packages are published to the target computer and that the plug-in package is published globally to match published Office 2016 App-V package's global settings.
7. Verify that the plug-in package's Deployment Configuration file has the same settings as the Office 2016 App-V package.

    The Office 2016 App-V plug-in package's settings must match those of the operating system to allow for integration. You can search the Deployment Configuration File for “COM Mode” and ensure that your plug-ins package has that value set as “Integrated” and that both "InProcessEnabled" and "OutOfProcessEnabled" match the settings of the Office 2016 App-V package you published.
8. Open the Deployment Configuration File and set the value for **Objects Enabled** to **false**.
9. If you made any changes to the Deployment Configuration file after sequencing, ensure that the plug-in package is published with the file.
10. Ensure that the Connection Group you created on your desired computer is enabled. The Connection Group created will be shown as "pending" if the Office 2016 App-V package is being used while the Connection Group is enabled. If that happens, you'll have to reboot the computer to successfully enable the Connection Group.
11. After you successfully publish both packages and enable the Connection Group, verify the plug-ins you published on the Connection Group work as expected.

### Disabling Office 2016 applications

You can also disable specific applications in your Office App-V package. For example, if you don't want to use Access, you can disable Access while leaving all other Office applications available. When you disable an application, the user will no longer see its shortcut icon. You don't need to re-sequence the application to do this. When you change the Deployment Configuration File after the Office 2016 App-V package has been published, just save the changes and add the Office 2016 App-V package, then republish it with the new Deployment Configuration File to apply the new settings to Office 2016 App-V Package applications.

>[!NOTE]
>To exclude specific Office applications when you create the App-V package with the Office Deployment Tool, use the **ExcludeApp** setting.

#### Disable an Office 2016 application

1. Open a Deployment Configuration File with a text editor such as **Notepad** and search for “Applications."
2. Search for the Office application you want to disable, for example, Access 2016.
3. Change the value of **Enabled** to **false**.
4. Save the Deployment Configuration File.
5. Add the Office 2016 App-V Package with the new Deployment Configuration File.

    ```XML
    <Application Id="[{AppVPackageRoot}]\officel6\lync.exe" Enabled="true">
      <VisualElements>
        <Name>Lync 2016</Name>
        <Icon />
        <Description />
      </VisualElements>
    </Application>
    <Application Id="[(AppVPackageRoot}]\office16\MSACCESS.EXE" Enabled="true">
      <VisualElements>
        <Name>Access 2016</Name>
        <Icon />
        <Description />
      </VisualElements>
    </Application>
    ```
6. Re-add the Office 2016 App-V package, and then republish it with the new Deployment Configuration File to apply the new settings to Office 2016 App-V Package applications.

### Disabling Office 2016 shortcuts

You may want to disable shortcuts for certain Office applications instead of unpublishing or removing the package. The following example shows how to disable shortcuts for Microsoft Access.

#### Disable shortcuts for Office 2016 applications

1. Open a Deployment Configuration File in Notepad and search for “Shortcuts”.
2. To disable certain shortcuts, delete or comment out the specific shortcuts you don’t want. You must keep the subsystem present and enabled. The following example shows how to delete the Microsoft Access shortcuts while keeping the subsystems `<shortcut> </shortcut>` intact.

    ``` XML
    Shortcuts
    
    -->
     <Shortcuts Enabled="true">
      <Extensions>
        <Extension Category="AppV.Shortcut">
          <Shortcut>
           <File>[{Common Programs}]\Microsoft Office 2016\Access 2016.lnk</File>
           <Target>[{AppvPackageRoot}])office16\MSACCESS.EXE</Target>
           <Icon>[{Windows}]\Installer\{90150000-000F-0000-0000-000000FF1CE)\accicons.exe.Ø.ico</Icon>
           <Arguments />
           <WorkingDirectory />
           <AppuserModelId>Microsoft.Office.MSACCESS.EXE.16</AppUserModelId>
           <AppUserModelExcludeFromShowInNewInstall>true</AppUserModelExcludeFromShowInNewInstall>
           <Description>Build a professional app quickly to manage data.</Description>
           <ShowCommand>l</ShowCommand>
           <ApplicationId>[{AppVPackageRoot}]\officel6\MSACCESS.EXE</ApplicationId>
        </Shortcut>
    ```
3. Save the Deployment Configuration File.
4. Republish the Office 2016 App-V Package with the new Deployment Configuration File.

Many additional settings can be changed through modifying the Deployment Configuration for App-V packages, for example, file type associations, Virtual File System, and more. For additional information on how to use Deployment Configuration Files to change App-V package settings, refer to the additional resources section at the end of this document.

### Managing Office 2016 package upgrades

To upgrade an Office 2016 package, use the Office Deployment Tool. To upgrade a previously deployed Office 2016 package, perform the steps outlined in the following section.

#### How to upgrade a previously deployed Office 2016 package

1. Create a new Office 2016 package through the Office Deployment Tool that uses the most recent Office 2016 application software. The most recent Office 2016 bits can always be obtained through the download stage of creating an Office 2016 App-V Package. The newly created Office 2016 package will have the most recent updates and a new Version ID. All packages created using the Office Deployment Tool have the same lineage.

   > [!NOTE]
    >Office App-V packages have two Version IDs:
      >* An Office 2016 App-V Package Version ID that is unique across all packages created using the Office Deployment Tool.
      >* A second App-V Package Version ID, formatted as X.X.X.X, in the AppX manifest that will only change if there is a new version of Office itself. For example, if a new Office 2016 release with upgrades is available, and a package is created through the Office Deployment Tool to incorporate these upgrades, the X.X.X.X version ID will change to reflect the new version of Office. The App-V server will use the X.X.X.X version ID to differentiate this package and recognize that it contains new upgrades to the previously published package, and as a result, publish it as an upgrade to the existing Office 2016 package.
2. Globally publish the newly created Office 2016 App-V Packages onto the computers you want to apply the new updates to. Since the new package has the same lineage as the older Office 2016 App-V Package, publishing will be fast, as publishing the new package with the updates only applies the new changes to the old package.
3. Upgrades will be applied in the same manner of any globally published App-V packages. Because applications will probably be in use, upgrades might be delayed until the computer is rebooted.

### Deploying Visio 2016 and Project 2016 with Office

The following table describes the requirements and options for deploying Visio 2016 and Project 2016 with Office.

| Task                | Details       |
|---------------------|---------------|
| How do I package and publish Visio 2016 and Project 2016 with Office? | You must include Visio 2016 and Project 2016 in the same package with Office.<br>If you are not deploying Office, you can create a package that contains Visio and/or Project, as long as you follow the packaging, publishing, and deployment requirements described in this topic.  |
| How can I deploy Visio 2016 and Project 2016 to specific users?       | Use one of the following methods:<br>**To create two different packages and deploy each one to a different group of users**:<br>Create and deploy the following packages:<br>- A package that contains only Office—deploy to computers whose users need only Office.<br>- A package that contains Office, Visio, and Project—deploy to computers whose users need all three applications.<br><br>**To create only one package for the whole organization, or to create a package intended for users who share computers**:<br>1. Create a package that contains Office, Visio, and Project.<br>2. Deploy the package to all users.<br>3. Use [AppLocker](https://docs.microsoft.com/windows/security/threat-protection/applocker/applocker-overview) to prevent specific users from using Visio and Project. |

## Related topics

* [Deploying App-V for Windows 10](appv-deploying-appv.md)
* [Deploying Microsoft Office 2013 by using App-V](appv-deploying-microsoft-office-2013-with-appv.md)
* [Deploying Microsoft Office 2010 by using App-V](appv-deploying-microsoft-office-2010-wth-appv.md)
* [Office 2016 Deployment Tool for Click-to-Run](https://www.microsoft.com/download/details.aspx?id=49117)



