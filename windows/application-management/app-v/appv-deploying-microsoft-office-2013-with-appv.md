---
title: Deploying Microsoft Office 2013 by Using App-V (Windows 10)
description: Deploying Microsoft Office 2013 by Using App-V
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
# Deploying Microsoft Office 2013 by Using App-V

>Applies to: Windows 10, version 1607

Use the information in this article to use Application Virtualization (App-V) to deliver Microsoft Office 2013 as a virtualized application to computers in your organization. For information about using App-V to deliver Office 2010, see [Deploying Microsoft Office 2010 by Using App-V](appv-deploying-microsoft-office-2010-wth-appv.md). To successfully deploy Office 2013 with App-V, you need to be familiar with Office 2013 and App-V.

## What to know before you start

Before you deploy Office 2013 with App-V, review the following planning information.

### Supported Office versions and Office coexistence

The following table will direct you to more information about which versions of Office App-V supports and how to run App-V with coexisting versions of Office.

|Information to review|Description|
|---|---|
|[Supported versions of Microsoft Office](appv-planning-for-using-appv-with-office.md#supported-versions-of-microsoft-office)|- Supported versions of Office<br>- Supported deployment types like desktop, personal Virtual Desktop Infrastructure (VDI), and pooled VDI<br>- Office licensing options.|
|[Planning for using App-V with coexisting versions of Office](appv-planning-for-using-appv-with-office.md#before-you-implement-office-coexistence)|Considerations for installing different versions of Office on the same computer.|

### Packaging, publishing, and deployment requirements

Before you deploy Office with App-V, review the following requirements.

|Task|Requirement|
|---|---|
|Packaging|All Office applications you wish to deploy to users must be in a single package.<br>In App-V and later, you must use the Office Deployment Tool to create packages. The Sequencer doesn't support package creation.<br>If you're deploying Microsoft Visio 2013 and Microsoft Project 2013 along with Office, you must include them in the same package with Office. For more information, see [Deploying Visio 2013 and Project 2013 with Office](#deploying-visio-2013-and-project-2013-with-office).|
|Publishing|You can only publish one Office package per client computer.<br>You must publish the Office package globally, not to the user.|
|Deploying Office 365 ProPlus, Visio Pro for Office 365, or Project Pro for Office 365 to a shared computer using Remote Desktop Services.|You must enable [shared computer activation](https://docs.microsoft.com/DeployOffice/overview-of-shared-computer-activation-for-office-365-proplus).<br>You don’t need to use shared computer activation if you’re deploying a volume licensed product, such as Office Professional Plus 2013, Visio Professional 2013, or Project Professional 2013.|

### Excluding Office applications from a package

The following table describes the recommended methods for excluding specific Office applications from a package.

|Task|Details|
|---|---|
|Use the **ExcludeApp** setting when you create the package by using the Office Deployment Tool.|Enables you to exclude specific Office applications from the package when the Office Deployment Tool creates the package. For example, you can use this setting to create a package that contains only Microsoft Word.<br>For more information, see [ExcludeApp element](https://docs.microsoft.com/DeployOffice/configuration-options-for-the-office-2016-deployment-tool?ui=en-US&rs=en-US&ad=US#excludeapp-element).|
|Modify the **DeploymentConfig.xml** file|Modify the **DeploymentConfig.xml** file after creating the package. This file contains the default package settings for all users on a computer running the App-V Client.<br>For more information, see [Disabling Office 2013 applications](#disabling-office-2013-applications).|

## Creating an Office 2013 package for App-V with the Office Deployment Tool

Complete the following steps to create an Office 2013 package for App-V or later.

>[!IMPORTANT]
>In App-V and later, you must the Office Deployment Tool to create a package. You cannot use the Sequencer to create packages.

### Review prerequisites for using the Office Deployment Tool

Before you start, make sure that the computer on which you are installing the Office Deployment Tool has the following:

|Prerequisite|Description|
|---|---|
|Prerequisite software|.NET Framework 4|
|Supported operating systems|64-bit version of Windows 8 or later<br>64-bit version of Windows 7|

>[!NOTE]
>In this topic, the term “Office 2013 App-V package” refers to subscription licensing and volume licensing.

### Create Office 2013 App-V packages using Office Deployment Tool

You create Office 2013 App-V packages with the Office Deployment Tool. The following instructions explain how to create an Office 2013 App-V package with Volume Licensing or Subscription Licensing.

Create Office 2013 App-V packages on 64-bit Windows computers. Once created, the Office 2013 App-V package will run on 32-bit and 64-bit Windows 7, Windows 8.1, and Windows 10 computers.

### Download the Office Deployment Tool

Office 2013 App-V Packages are created using the Office Deployment Tool, which generates an Office 2013 App-V Package. The App-V sequencer can't create or modify packages. To create a package:

1. Download the [Office 2013 Deployment Tool for Click-to-Run](https://www.microsoft.com/download/details.aspx?id=36778).
2. Run the .exe file and extract its features into the desired location. To make this process easier, you can create a shared network folder where the features will be saved.

    Example: \\\\Server\\Office2013
3. Check that a **setup.exe** and a **configuration.xml** file exist and are in the location you specified.

### Download Office 2013 applications

After you download the Office Deployment Tool, you can use it to get the latest Office 2013 applications. You can create the Office 2013 App-V package after getting all the Office applications.

The XML file included in the Office Deployment Tool specifies the product details, such as the languages and Office applications included.

1. **Customize the sample XML configuration file:** Use the sample XML configuration file that you downloaded with the Office Deployment Tool to customize the Office applications:

    1. Open the sample XML file in Notepad or your favorite text editor.

    2. With the sample configuration.xml file open and ready for editing, you can specify products, languages, and the path to which you save the Office 2013 applications. The following is a basic example of the configuration.xml file:

        ```XML
        <Configuration>
           <Add SourcePath= ”\\Server\Office2013” OfficeClientEdition="32" >
            <Product ID="O365ProPlusRetail ">
              <Language ID="en-us" />
            </Product>
            <Product ID="VisioProRetail">
              <Language ID="en-us" />
            </Product>
          </Add>
        </Configuration>
        ```

        >[!NOTE]
        >The configuration XML is a sample XML file. This file includes lines that are commented out. You can “uncomment” these lines to customize additional settings with the file.

        The previous example of an XML configuration file specifies that Office 2013 ProPlus 32-bit edition, including Visio ProPlus, will be downloaded in English to the \\\\server\\Office 2013, which is the location where Office applications will be saved to. Note that the Product ID of the applications will not affect the final licensing of Office. Office 2013 App-V packages with various licensing can be created from the same applications by specifying licensing in a later stage. For more information, see [Customizable attributes and elements of the XML file](#customizable-attributes-and-elements-of-the-xml-file), later in this topic.

        After editing the configuration.xml file to specify the desired product, languages, and also the location which the Office 2013 applications will be saved onto, you can save the configuration file, for example, as Customconfig.xml.
2. **Download the applications into the specified location:** Use an elevated command prompt and a 64-bit operating system to download the Office 2013 applications that will later be converted into an App-V package. The following is an example command:

    ```PowerShell
    \\server\Office2013\setup.exe /download \\server\Office2013\Customconfig.xml
    ```

    The following is a table that describes each element of the command:

    |Element|Description|
    |---|---|
    |```\\server\Office2013```|This is the network share location that contains the Office Deployment Tool and the custom Configuration.xml file, **Customconfig.xml**.|
    |```setup.exe```|This is the Office Deployment Tool.|
    |```/download```|This downloads the Office 2013 applications that you specify in the **Customconfig.xml** file. These bits can be later converted in an Office 2013 App-V package with Volume Licensing.|
    |```\\server\Office2013\Customconfig.xml```|This passes the XML configuration file required to complete the download process. In this example, the file used is **Customconfig.xml**. After using the download command, Office applications should be found in the location specified in the XML configuration file, which in this example is ```\\Server\Office2013```.|

#### Customizable attributes and elements of the XML file

|Input and description|Example|
|---|---|
|Add element:<br>Specifies the products and languages to include in the package.|N/A|
|OfficeClientEdition (attribute of Add element):<br>Specifies the edition of Office 2013 product to use: 32-bit or 64-bit. The operation fails if **OfficeClientEdition** is not set to a valid value.|```OfficeClientEdition="32"```<br>```OfficeClientEdition="64"```|
|Product element:<br>Specifies the application. Project 2013 and Visio 2013 must be specified here as an added product to be included in the applications.|```Product ID="O365ProPlusRetail"```<br>```Product ID="VisioProRetail"```<br>```Product ID="ProjectProRetail"```<br>```Product ID="ProPlusVolume"```<br>```Product ID="ProjectProVolume"```|
|Language element:<br>Specifies the language supported in the applications.|```Language ID="en-us"```|
|Version (attribute of Add element):<br>Optional. Specifies a build to use for the package. Defaults to latest advertised build (as defined in v32.CAB at the Office source).|```15.1.2.3```|
|SourcePath (attribute of Add element):<br>Specifies the location where the applications will be saved to.|```Sourcepath="\Server\Office2013”```|

### Convert the Office applications into an App-V package

After you download the Office 2013 applications through the Office Deployment Tool, use the Office Deployment Tool to convert them into an Office 2013 App-V package. You'll need to make sure to have the right procedure depending on your licensing model.

#### What you'll need to do

* Create the Office 2013 App-V packages on 64-bit Windows computers. However, the package will run on 32-bit and 64-bit Windows 7, Windows 8, and Windows 10 computers.
* Create an Office App-V package for either the Subscription Licensing package or Volume Licensing by using the Office Deployment Tool, then modify the **Customconfig.xml** configuration file.

    The following table summarizes the values you need to enter in the **Customconfig.xml** file for the licensing model you’re using. The steps in the sections that follow the table will specify the exact entries you need to make.

|Product ID|Volume Licensing|Subscription Licensing|
|---|---|---|
|Office 2013|ProPlusVolume|O365ProPlusRetail|
|Office 2013 with Visio 2013|ProPlusVolume<br>VisioProVolume|O365ProPlusRetail<br>VisioProRetail|
|Office 2013 with Visio 2013 and Project 2013|ProPlusVolume<br>VisioProVolume<br>ProjectProVolume|O365ProPlusRetail<br>VisioProRetail<br>ProjectProRetail|

#### How to convert the Office applications into an App-V package

1. In Notepad, reopen the CustomConfig.xml file, and make the following changes to the file:

    * **SourcePath**: Point to the Office applications downloaded earlier.
    * **ProductID**: Specify the type of licensing, as shown in the following examples:
        * Subscription Licensing:
        ```XML
        <Configuration>
           <Add SourcePath= "\\server\Office 2013" OfficeClientEdition="32" >
            <Product ID="O365ProPlusRetail">
              <Language ID="en-us" />
            </Product>
            <Product ID="VisioProRetail">
              <Language ID="en-us" />
            </Product>
          </Add>
        </Configuration>
        ```
        In this example, the following changes were made to create a package with Subscription licensing:
        
        * **SourcePath** is the path, which was changed to point to the Office applications that were downloaded earlier.
        * **Product ID** for Office was changed to `O365ProPlusRetail`.
        * **Product ID** for Visio was changed to `VisioProRetail`.
        * Volume Licensing
        ```XML
        <Configuration>
           <Add SourcePath= "\\Server\Office2013" OfficeClientEdition="32" >
            <Product ID="ProPlusVolume">
              <Language ID="en-us" />
            </Product>
            <Product ID="VisioProVolume">
              <Language ID="en-us" />
            </Product>
          </Add>
        </Configuration>
        ```
        In this example, the following changes were made to create a package with Volume licensing:
        
        * **SourcePath** is the source's path, which was changed to point to the Office applications that were downloaded earlier.
        * **Product ID** for Office was changed to `ProPlusVolume`.
        * **Product ID** for Visio was changed to `VisioProVolume`.
    * **ExcludeApp** (optional) lets you specify Office programs that you don’t want included in the App-V package that the Office Deployment Tool creates. For example, you can exclude Access and InfoPath.
    * **PACKAGEGUID** (optional)—By default, all App-V packages created by the Office Deployment Tool share the same App-V Package ID. You can use PACKAGEGUID to specify a different package ID for each package, which allows you to publish multiple App-V packages, created by the Office Deployment Tool, and manage them by using the App-V Server.
        
        An example of when to use this parameter is if you create different packages for different users. For example, you can create a package with just Office 2013 for some users, and create another package with Office 2013 and Visio 2013 for another set of users.
        
        >[!NOTE]
        >Even if you use unique package IDs, you can still deploy only one App-V package to a single device.
2. Use the **/packager** command to convert the Office applications to an Office 2013 App-V package.

    For example:

    ```PowerShell
    \\server\Office2013\setup.exe /packager \\server\Office2013\Customconfig.xml  \\server\share\Office2013AppV
    ```

    In the example:

    |Element|Description|
    |---|---|
    |```\\server\Office2013```|This is the network share location that contains the Office Deployment Tool and the custom Configuration.xml file, which in this example is named **Customconfig.xml**.|
    |```setup.exe```|This is the Office Deployment Tool.|
    |```/packager```|This creates the Office 2013 App-V package with Volume Licensing as specified in the **Customconfig.xml** file.|
    |```\\server\Office2013\Customconfig.xml```|This passes the configuration XML file, which in this example is named "Customconfig," that has been prepared for the packaging stage.|
    |```\\server\share\Office2013AppV```|This specifies the location of the newly created Office App-V package.|

    After you run the **/packager** command, the following folders will appear in the directory where you specified the package should be saved:

    * **App-V Packages**, which contains an Office 2013 App-V package and two deployment configuration files.<br>
    * **WorkingDir**
    
    >[!NOTE]
    >To troubleshoot any issues, see the log files in the %temp% directory (default).
3. Verify that the Office 2013 App-V package works correctly:

    1. Publish the Office 2013 App-V package that you created globally to a test computer and verify that the Office 2013 shortcuts appear.
    2. Start a few Office 2013 applications, such as Excel or Word, to test that your package is working as expected.

## Publishing the Office package for App-V

Use the following information to publish an Office package.

### Methods for publishing Office App-V packages

Deploy the App-V package for Office 2013 by using the same methods you use for any other package:

* System Center Configuration Manager
* App-V Server
* Stand-alone through Windows PowerShell commands

### Publishing prerequisites and requirements

|Prerequisite or requirement|Details|
|---|---|
|Enable Windows PowerShell scripting on the App-V clients.|To publish Office 2013 packages, you must run a script. Package scripts are disabled by default on App-V clients. To enable scripting, run the following Windows PowerShell command:<br>```Set-AppvClientConfiguration –EnablePackageScripts 1```|
|Publish the Office 2013 package globally.|Extension points in the Office App-V package require installation at the computer level.<br>When you publish at the computer level, no prerequisite actions or redistributables are needed, and the Office 2013 package globally enables its applications to work like natively installed Office, eliminating the need for administrators to customize packages.|

### How to publish an Office package

Run the following command to publish an Office package globally, with the bracketed value replaced by the path to the App-V package:

```PowerShell
Add-AppvClientPackage <Path_to_AppV_Package> | Publish-AppvClientPackage –global
```

* From the Web Management Console on the App-V Server, you can add permissions to a group of computers instead of to a user group to enable packages to be published globally to the computers in the corresponding group.

## Customizing and managing Office App-V packages

To manage your Office App-V packages, use the same operations as you would for any other package, but there are a few exceptions, as outlined in the following sections.

* [Enabling Office plug-ins by using connection groups](#enabling-office-plug-ins-by-using-connection-groups)
* [Disabling Office 2013 applications](#disabling-office-2013-applications)
* [Disabling Office 2013 shortcuts](#disabling-office-2013-shortcuts)
* [Managing Office 2013 package upgrades](#managing-office-2013-package-upgrades)
* [Managing Office 2013 licensing upgrades](#managing-office-2013-licensing-upgrades)
* [Deploying Visio 2013 and Project 2013 with Office](#deploying-visio-2013-and-project-2013-with-office)

### Enabling Office plug-ins by using connection groups

Use the steps in this section to enable Office plug-ins with your Office package. To use Office plug-ins, you must use the App-V Sequencer to create a separate package that contains just the plug-ins. You can't use the Office Deployment Tool to create the plug-ins package. You then create a connection group that contains the Office package and the plug-ins package, as described in the following steps.

#### To enable plug-ins for Office App-V packages

1. Add a Connection Group through App-V Server, System Center Configuration Manager, or a Windows PowerShell cmdlet.
2. Sequence your plug-ins using the App-V Sequencer. Ensure that Office 2013 is installed on the computer being used to sequence the plug-in. It's a good idea to use Office 365 ProPlus (non-virtual) on the sequencing computer when you sequence Office 2013 plug-ins.
3. Create an App-V package that includes the desired plug-ins.
4. Add a Connection Group through App-V Server, System Center Configuration Manager, or a Windows PowerShell cmdlet.
5. Add the Office 2013 App-V package and the plug-ins package you sequenced to the Connection Group you created.

    >[!IMPORTANT]
    >The order of the packages in the Connection Group determines the order in which the package contents are merged. In your Connection group descriptor file, add the Office 2013 App-V package first, then add the plug-in App-V package.
6. Ensure that both packages are published to the target computer and that the plug-in package is published globally to match the global settings of the published Office 2013 App-V package.
7. Verify that the Deployment Configuration File of the plug-in package has the same settings that the Office 2013 App-V package has.

    Since the Office 2013 App-V package is integrated with the operating system, the plug-in package settings should match. You can search the Deployment Configuration File for “COM Mode” and ensure that your plug-ins package has that value set as **Integrated** and that both **InProcessEnabled** and **OutOfProcessEnabled** match the settings of the Office 2013 App-V package you published.
8. Open the Deployment Configuration File and set the value for **Objects Enabled** to **false**.
9. If you made any changes to the Deployment Configuration file after sequencing, ensure that the plug-in package is published with the updated file.
10. Ensure that the Connection Group you created is enabled onto your desired computer. The Connection Group created will likely “pend” if the Office 2013 App-V package is in use when the Connection Group is enabled. If that happens, you'll have to reboot to successfully enable the Connection Group.
11. After you successfully publish both packages and enable the Connection Group, start the target Office 2013 application and verify that the plug-in you published and added to the Connection Group works as expected.

### Disabling Office 2013 applications

You may want to disable specific applications in your Office App-V package. For instance, you can disable Access, but leave all other Office application main available. When you disable an application, the end user will no longer see the shortcut for that application. You do not have to re-sequence the application. When you change the Deployment Configuration File after the Office 2013 App-V package has been published, you will save the changes, add the Office 2013 App-V package, then republish it with the new Deployment Configuration File to apply the new settings to Office 2013 App-V Package applications.

>[!NOTE]
>To exclude specific Office applications (for example, Access and InfoPath) when you create the App-V package with the Office Deployment Tool, use the **ExcludeApp** setting. For more information, see [Reference for Click-to-Run configuration.xml file](https://docs.microsoft.com/DeployOffice/configuration-options-for-the-office-2016-deployment-tool#excludeapp-element).

#### To disable an Office 2013 application

1. Open a Deployment Configuration File with a text editor such as **Notepad** and search for “Applications."
2. Search for the Office application you want to disable, for example, Access 2013.
3. Change the value of "Enabled" from "true" to "false."
4. Save the Deployment Configuration File.
5. Add the Office 2013 App-V Package with the new Deployment Configuration File.

    ``` XML
    <Application Id="[{AppVPackageRoot)]\officefl5\INFOPATH.EXE" Enabled="true">
      <VisualElements>
        <Name>InfoPath Filler 2013</Name>
        <Icon />
        <Description />
      </VisualElements>
    </Application>
    <Application Id="[{AppVPackageRoot}]\officel5\lync.exe" Enabled="true">
      <VisualElements>
        <Name>Lync 2013</Name>
        <Icon />
        <Description />
      </VisualElements>
    </Application>
    <Application Id="[(AppVPackageRoot}]\office15\MSACCESS.EXE" Enabled="true">
      <VisualElements>
        <Name>Access 2013</Name>
        <Icon />
        <Description />
      </VisualElements>
    </Application>
    ```
6. Re-add the Office 2013 App-V package, and then republish it with the new Deployment Configuration File to apply the new settings to Office 2013 App-V Package applications.

### Disabling Office 2013 shortcuts

You may want to disable shortcuts for certain Office applications instead of unpublishing or removing the package. The following example shows how to disable shortcuts for Microsoft Access.

1. Open a Deployment Configuration File in Notepad and search for “Shortcuts”.
2. To disable certain shortcuts, delete or comment out the specific shortcuts you don’t want. You must keep the subsystem present and enabled. For example, in the example below, delete the Microsoft Access shortcuts, while keeping the subsystems &lt;shortcut&gt; &lt;/shortcut&gt; intact to disable the Microsoft Access shortcut.

    ```XML
    Shortcuts 

    -->
     <Shortcuts Enabled="true">
      <Extensions>
        <Extension Category="AppV.Shortcut">
          <Shortcut>
           <File>[{Common Programs}]\Microsoft Office 2013\Access 2013.lnk</File>
           <Target>[{AppvPackageRoot}])office15\MSACCESS.EXE</Target>
           <Icon>[{Windows}]\Installer\{90150000-000F-0000-0000-000000FF1CE)\accicons.exe.Ø.ico</Icon>
           <Arguments />
           <WorkingDirectory />
           <AppuserModelId>Microsoft.Office.MSACCESS.EXE.15</AppUserModelId>
           <AppUsermodelExcludeFroeShowInNewInstall>true</AppUsermodelExcludeFroeShowInNewInstall>
           <Description>Build a professional app quickly to manage data.</Description>
           <ShowCommand>l</ShowCommand>
           <ApplicationId>[{AppVPackageRoot}]\officel5\MSACCESS.EXE</ApplicationId>
        </Shortcut>
    ```
3. Save the Deployment Configuration File.
4. Republish Office 2013 App-V Package with new Deployment Configuration File.

Many additional settings can be changed through modifying the Deployment Configuration for App-V packages, for example, file type associations, Virtual File System, and more. For additional information on how to use Deployment Configuration Files to change App-V package settings, refer to the additional resources section at the end of this document.

### Managing Office 2013 package upgrades

To upgrade an Office 2013 package, use the Office Deployment Tool. To upgrade a previously deployed Office 2013 package, perform the following steps.

#### How to upgrade a previously deployed Office 2013 package

1. Create a new Office 2013 package through the Office Deployment Tool that uses the most recent Office 2013 application software. The most recent Office 2013 bits can always be obtained through the download stage of creating an Office 2013 App-V Package. The newly created Office 2013 package will have the most recent updates and a new Version ID. All packages created using the Office Deployment Tool have the same lineage.

    >[!NOTE]
    >Office App-V packages have two Version IDs:
      * An Office 2013 App-V Package Version ID that is unique across all packages created using the Office Deployment Tool.
      * A second App-V Package Version ID, x.x.x.x for example, in the AppX manifest that will only change if there is a new version of Office itself. For example, if a new Office 2013 release with upgrades is available, and a package is created through the Office Deployment Tool to incorporate these upgrades, the X.X.X.X version ID will change to reflect that the Office version itself has changed. The App-V server will use the X.X.X.X version ID to differentiate this package and recognize that it contains new upgrades to the previously published package, and as a result, publish it as an upgrade to the existing Office 2013 package.
2. Globally publish the newly created Office 2013 App-V Packages onto computers where you would like to apply the new updates. Since the new package has the same lineage of the older Office 2013 App-V Package, publishing the new package with the updates will only apply the new changes to the old package, and thus will be fast.
3. Upgrades will be applied in the same manner of any globally published App-V Packages. Because applications will probably be in use, upgrades might be delayed until the computer is rebooted.

### Managing Office 2013 licensing upgrades

If a new Office 2013 App-V Package has a different license than the Office 2013 App-V Package currently deployed. For instance, the Office 2013 package deployed is a subscription based Office 2013 and the new Office 2013 package is Volume Licensing based, the following instructions must be followed to ensure smooth licensing upgrade:

#### How to upgrade an Office 2013 License

1. Unpublish the already deployed Office 2013 Subscription Licensing App-V package.
2. Remove the unpublished Office 2013 Subscription Licensing App-V package.
3. Restart the computer.
4. Add the new Office 2013 App-V Package Volume Licensing.
5. Publish the added Office 2013 App-V Package with Volume Licensing.

An Office 2013 App-V Package with your chosen licensing will be successfully deployed.

### Deploying Visio 2013 and Project 2013 with Office

This section describes the requirements and options for deploying Visio 2013 and Project 2013 with Office.

* **To package and publish Visio 2013 and Project 2013 with Office**: Include Visio 2013 and Project 2013 in the same package with Office. If you aren’t deploying Office, you can create a package that contains Visio and/or Project.
* **To deploy Visio 2013 and Project 2013 to specific users**: Use one of the following methods:

|Goal|Method|
|---|---|
|Create two different packages and deploy each one to a different group of users|Create and deploy the following packages:<br>A package that contains only Office—deploy to computers whose users need only Office.<br>A package that contains Office, Visio, and Project—deploy to computers whose users need all three applications.|
|Create just one package for the whole organization, or for users who share computers|Follow these steps:<br>1. Create a package that contains Office, Visio, and Project.<br>2. Deploy the package to all users.<br>3. Use [AppLocker](https://docs.microsoft.com/windows/security/threat-protection/applocker/applocker-overview) to prevent specific users from using Visio and Project.|

## Additional resources

### Additional resources for Office 2013 App-V Packages

* [Office 2013 Deployment Tool for Click-to-Run](https://www.microsoft.com/download/details.aspx?id=36778)
* [Supported scenarios for deploying Microsoft Office as a sequenced App-V Package](https://support.microsoft.com/kb/2772509)

### Additional resources for Office 2010 App-V Packages

* [Microsoft Office 2010 Sequencing Kit for Microsoft Application Virtualization 5.0](https://www.microsoft.com/download/details.aspx?id=38399)
* [Known issues when you create or use an App-V 5.0 Office 2010 package](https://support.microsoft.com/kb/2828619)
* [How To Sequence Microsoft Office 2010 in Microsoft Application Virtualization 5.0](https://support.microsoft.com/kb/2830069)

### Additional resources for Connection Groups

* [Managing Connection Groups](appv-managing-connection-groups.md)
* [Connection groups on the App-V team blog](https://blogs.msdn.microsoft.com/gladiator/tag/connection-groups/)

### Additional resources for Dynamic Configuration

* [About App-V Dynamic Configuration](appv-dynamic-configuration.md)



