---
title: Deploying Microsoft Office 2016 by Using App-V
description: Deploying Microsoft Office 2016 by Using App-V
author: dansimp
ms.assetid: cc675cde-cb8d-4b7c-a700-6104b78f1d89
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/25/2017
---


# Deploying Microsoft Office 2016 by Using App-V


Use the information in this article to use Microsoft Application Virtualization 5.0, or later versions, to deliver Microsoft Office 2016 as a virtualized application to computers in your organization. For information about using App-V to deliver Office 2013, see [Deploying Microsoft Office 2013 by Using App-V](deploying-microsoft-office-2013-by-using-app-v.md). For information about using App-V to deliver Office 2010, see [Deploying Microsoft Office 2010 by Using App-V](deploying-microsoft-office-2010-by-using-app-v.md).

This topic contains the following sections:

-   [What to know before you start](#bkmk-before-you-start)

-   [Creating an Office 2016 package for App-V with the Office Deployment Tool](#bkmk-create-office-pkg)

-   [Publishing the Office package for App-V 5.0](#bkmk-pub-pkg-office)

-   [Customizing and managing Office App-V packages](#bkmk-custmz-manage-office-pkgs)

## <a href="" id="bkmk-before-you-start"></a>What to know before you start


Before you deploy Office 2016 by using App-V, review the following planning information.

### <a href="" id="bkmk-supp-vers-coexist"></a>Supported Office versions and Office coexistence

Use the following table to get information about supported versions of Office and about running coexisting versions of Office.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Information to review</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><a href="planning-for-using-app-v-with-office.md#bkmk-office-vers-supp-appv" data-raw-source="[Supported versions of Microsoft Office](planning-for-using-app-v-with-office.md#bkmk-office-vers-supp-appv)">Supported versions of Microsoft Office</a></p></td>
<td align="left"><ul>
<li><p>Supported versions of Office</p></li>
<li><p>Supported deployment types (for example, desktop, personal Virtual Desktop Infrastructure (VDI), pooled VDI)</p></li>
<li><p>Office licensing options</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><a href="planning-for-using-app-v-with-office.md#bkmk-plan-coexisting" data-raw-source="[Planning for Using App-V with coexisting versions of Office](planning-for-using-app-v-with-office.md#bkmk-plan-coexisting)">Planning for Using App-V with coexisting versions of Office</a></p></td>
<td align="left"><p>Considerations for installing different versions of Office on the same computer</p></td>
</tr>
</tbody>
</table>



### <a href="" id="bkmk-pkg-pub-reqs"></a>Packaging, publishing, and deployment requirements

Before you deploy Office by using App-V, review the following requirements.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Packaging</p></td>
<td align="left">
<ul>
<li><p>All of the Office applications that you want to deploy to users must be in a single package.</p></li>
<li><p>In App-V 5.0 and later, you must use the Office Deployment Tool to create packages. You cannot use the Sequencer.</p></li>
<li><p>If you are deploying Microsoft Visio 2016 and Microsoft Project 2016 along with Office, you must include them in the same package with Office. For more information, see <a href="#bkmk-deploy-visio-project" data-raw-source="[Deploying Visio 2016 and Project 2016 with Office](#bkmk-deploy-visio-project)">Deploying Visio 2016 and Project 2016 with Office</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Publishing</p></td>
<td align="left"><ul>
<li><p>You can publish only one Office package to each client computer.</p></li>
<li><p>You must publish the Office package globally. You cannot publish to the user.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Deploying any of the following products to a shared computer, for example, by using Remote Desktop Services:</p>
<ul>
<li><p>Office 365 ProPlus</p></li>
<li><p>Visio Pro for Office 365</p></li>
<li><p>Project Pro for Office 365</p></li>
</ul></td>
<td align="left"><p>You must enable <a href="https://technet.microsoft.com/library/dn782860.aspx" data-raw-source="[shared computer activation](https://technet.microsoft.com/library/dn782860.aspx)">shared computer activation</a>.</p>
</td>
</tr>
</tbody>
</table>



### Excluding Office applications from a package

The following table describes the recommended methods for excluding specific Office applications from a package.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Use the <strong>ExcludeApp</strong> setting when you create the package by using the Office Deployment Tool.</p></td>
<td align="left"><ul>
<li><p>Enables you to exclude specific Office applications from the package when the Office Deployment Tool creates the package. For example, you can use this setting to create a package that contains only Microsoft Word.</p></li>
<li><p>For more information, see <a href="https://technet.microsoft.com/library/jj219426.aspx#bkmk-excludeappelement" data-raw-source="[ExcludeApp element](https://technet.microsoft.com/library/jj219426.aspx#bkmk-excludeappelement)">ExcludeApp element</a>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Modify the DeploymentConfig.xml file</p></td>
<td align="left"><ul>
<li><p>Modify the DeploymentConfig.xml file after the package has been created. This file contains the default package settings for all users on a computer that is running the App-V Client.</p></li>
<li><p>For more information, see <a href="#bkmk-disable-office-apps" data-raw-source="[Disabling Office 2016 applications](#bkmk-disable-office-apps)">Disabling Office 2016 applications</a>.</p></li>
</ul></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-create-office-pkg"></a>Creating an Office 2016 package for App-V with the Office Deployment Tool


Complete the following steps to create an Office 2016 package for App-V 5.0 or later.

>**Important**&nbsp;&nbsp;In App-V 5.0 and later, you must use the Office Deployment Tool to create a package. You cannot use the Sequencer to create packages.

### Review prerequisites for using the Office Deployment Tool

The computer on which you are installing the Office Deployment Tool must have:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Prerequisite software</p></td>
<td align="left"><p>.Net Framework 4</p></td>
</tr>
<tr class="even">
<td align="left"><p>Supported operating systems</p></td>
<td align="left"><ul>
<li><p>64-bit version of Windows 10</p></li>
<li><p>64-bit version of Windows 8 or 8.1</p></li>
<li><p>64-bit version of Windows 7</p></li>
</ul></td>
</tr>
</tbody>
</table>


>**Note**  In this topic, the term “Office 2016 App-V package” refers to subscription licensing.


### Create Office 2016 App-V Packages Using Office Deployment Tool

You create Office 2016 App-V packages by using the Office Deployment Tool. The following instructions explain how to create an Office 2016 App-V package with Subscription Licensing.

Create Office 2016 App-V packages on 64-bit Windows computers. Once created, the Office 2016 App-V package will run on 32-bit and 64-bit Windows 7, Windows 8.1, and Windows 10 computers.

### Download the Office Deployment Tool

Office 2016 App-V Packages are created using the Office Deployment Tool, which generates an Office 2016 App-V Package. The package cannot be created or modified through the App-V sequencer. To begin package creation:

1.  Download the [Office 2016 Deployment Tool for Click-to-Run](https://www.microsoft.com/download/details.aspx?id=49117).

> **Important** You must use the Office 2016 Deployment Tool to create Office 2016 App-V Packages.
> 2. Run the .exe file and extract its features into the desired location. To make this process easier, you can create a shared network folder where the features will be saved.

    Example: \\\\Server\\Office2016

3. Check that a setup.exe and a configuration.xml file exist and are in the location you specified.

### Download Office 2016 applications

After you download the Office Deployment Tool, you can use it to get the latest Office 2016 applications. After getting the Office applications, you create the Office 2016 App-V package.

The XML file that is included in the Office Deployment Tool specifies the product details, such as the languages and Office applications included.

1. **Customize the sample XML configuration file:** Use the sample XML configuration file that you downloaded with the Office Deployment Tool to customize the Office applications:

   1. Open the sample XML file in Notepad or your favorite text editor.

   2. With the sample configuration.xml file open and ready for editing, you can specify products, languages, and the path to which you save the Office 2016 applications. The following is a basic example of the configuration.xml file:

      ``` syntax
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

      >**Note**  The configuration XML is a sample XML file. The file includes lines that are commented out. You can “uncomment” these lines to customize additional settings with the file. To “uncomment” these lines, remove the "<! - -" from the beginning of the line, and the "-- >" from the end of the line.

      The above XML configuration file specifies that Office 2016 ProPlus 32-bit edition, including Visio ProPlus, will be downloaded in English to the \\\\server\\Office 2016, which is the location where Office applications will be saved to. Note that the Product ID of the applications will not affect the final licensing of Office. Office 2016 App-V packages with various licensing can be created from the same applications through specifying licensing in a later stage. The table below summarizes the customizable attributes and elements of XML file:

      <table>
      <colgroup>
      <col width="33%" />
      <col width="33%" />
      <col width="33%" />
      </colgroup>
      <thead>
      <tr class="header">
      <th align="left">Input</th>
      <th align="left">Description</th>
      <th align="left">Example</th>
      </tr>
      </thead>
      <tbody>
      <tr class="odd">
      <td align="left"><p>Add element</p></td>
      <td align="left"><p>Specifies the products and languages to include in the package.</p></td>
      <td align="left"><p>N/A</p></td>
      </tr>
      <tr class="even">
      <td align="left"><p>OfficeClientEdition (attribute of Add element)</p></td>
      <td align="left"><p>Specifies the edition of Office 2016 product to use: 32-bit or 64-bit. The operation fails if <strong>OfficeClientEdition</strong> is not set to a valid value.</p></td>
      <td align="left"><p><strong>OfficeClientEdition</strong>=&quot;32&quot;</p>
      <p><strong>OfficeClientEdition</strong>=&quot;64&quot;</p></td>
      </tr>
      <tr class="odd">
      <td align="left"><p>Product element</p></td>
      <td align="left"><p>Specifies the application. Project 2016 and Visio 2016 must be specified here as an added product to be included in the applications.

      For more information about the product IDs, see <a href="https://support.microsoft.com/kb/2842297" data-raw-source="[Product IDs that are supported by the Office Deployment Tool for Click-to-Run](https://support.microsoft.com/kb/2842297)">Product IDs that are supported by the Office Deployment Tool for Click-to-Run</a>
      </p></td>
      <td align="left"><p><code>Product ID =&quot;O365ProPlusRetail &quot;</code></p>
      <p><code>Product ID =&quot;VisioProRetail&quot;</code></p>
      <p><code>Product ID =&quot;ProjectProRetail&quot;</code></p>
      </td>
      </tr>
      <tr class="even">
      <td align="left"><p>Language element</p></td>
      <td align="left"><p>Specifies the language supported in the applications</p></td>
      <td align="left"><p><code>Language ID=&quot;en-us&quot;</code></p></td>
      </tr>
      <tr class="odd">
      <td align="left"><p>Version (attribute of Add element)</p></td>
      <td align="left"><p>Optional. Specifies a build to use for the package</p>
      <p>Defaults to latest advertised build (as defined in v32.CAB at the Office source).</p></td>
      <td align="left"><p><code>16.1.2.3</code></p></td>
      </tr>
      <tr class="even">
      <td align="left"><p>SourcePath (attribute of Add element)</p></td>
      <td align="left"><p>Specifies the location in which the applications will be saved to.</p></td>
      <td align="left"><p><code>Sourcepath = &quot;\Server\Office2016”</code></p></td>
      </tr>
      <tr class="even">
      <td align="left"><p>Channel (attribute of Add element)</p></td>
      <td align="left"><p>Optional. Specifies the update channel for the product that you want to download or install. </p><p>For more information about update channels, see Overview of update channels for Office 365 ProPlus.</p></td>
      <td align="left"><p><code>Channel=&quot;Deferred&quot;</code></p></td>
      </tr>
      </tbody>
      </table>

      After editing the configuration.xml file to specify the desired product, languages, and also the location which the Office 2016 applications will be saved onto, you can save the configuration file, for example, as Customconfig.xml.

2. **Download the applications into the specified location:** Use an elevated command prompt and a 64 bit operating system to download the Office 2016 applications that will later be converted into an App-V package. Below is an example command with a description of details:

   ``` syntax
   \\server\Office2016\setup.exe /download \\server\Office2016\Customconfig.xml
   ```

   In the example:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <tbody>
   <tr class="odd">
   <td align="left"><p><strong>\server\Office2016</strong></p></td>
   <td align="left"><p>is the network share location that contains the Office Deployment Tool and the custom Configuration.xml file, Customconfig.xml.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>Setup.exe</strong></p></td>
   <td align="left"><p>is the Office Deployment Tool.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><strong>/download</strong></p></td>
   <td align="left"><p>downloads the Office 2016 applications that you specify in the customConfig.xml file. These bits can be later converted in an Office 2016 App-V package with Volume Licensing.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>\server\Office2016\Customconfig.xml</strong></p></td>
   <td align="left"><p>passes the XML configuration file required to complete the download process, in this example, customconfig.xml. After using the download command, Office applications should be found in the location specified in the configuration xml file, in this example \Server\Office2016.</p></td>
   </tr>
   </tbody>
   </table>



### Convert the Office applications into an App-V package

After you download the Office 2016 applications through the Office Deployment Tool, use the Office Deployment Tool to convert them into an Office 2016 App-V package. Complete the steps that correspond to your licensing model.

**Summary of what you’ll need to do:**

-   Create the Office 2016 App-V packages on 64-bit Windows computers. However, the package will run on 32-bit and 64-bit Windows 7, Windows 8 or 8.1, and Windows 10 computers.

-   Create an Office App-V package for Subscription Licensing package by using the Office Deployment Tool, and then modify the CustomConfig.xml configuration file.

    The following table summarizes the values you need to enter in the CustomConfig.xml file for the licensing model you’re using. The steps in the sections that follow the table will specify the exact entries you need to make.

>**Note**&nbsp;&nbsp;You can use the Office Deployment Tool to create App-V packages for Office 365 ProPlus. Creating packages for the volume-licensed versions of Office Professional Plus or Office Standard is not supported.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Product ID</th>
<th align="left">Subscription Licensing</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Office 2016</strong></p></td>
<td align="left"><p>O365ProPlusRetail</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Office 2016 with Visio 2016</strong></p></td>
<td align="left"><p>O365ProPlusRetail</p>
<p>VisioProRetail</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Office 2016 with Visio 2016 and Project 2016</strong></p></td>
<td align="left"><p>O365ProPlusRetail</p>
<p>VisioProRetail</p>
<p>ProjectProRetail</p></td>
</tr>
</tbody>
</table>



**How to convert the Office applications into an App-V package**

1. In Notepad, reopen the CustomConfig.xml file, and make the following changes to the file:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Parameter</th>
   <th align="left">What to change the value to</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>SourcePath</p></td>
   <td align="left"><p>Point to the Office applications downloaded earlier.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>ProductID</p></td>
   <td align="left"><p>Specify Subscription licensing, as shown in the following example:</p>
   <pre class="syntax" space="preserve"><code>&lt;Configuration&gt;
      &lt;Add SourcePath= &quot;\server\Office 2016&quot; OfficeClientEdition=&quot;32&quot; &gt;
       &lt;Product ID=&quot;O365ProPlusRetail&quot;&gt;
         &lt;Language ID=&quot;en-us&quot; /&gt;
       &lt;/Product&gt;
       &lt;Product ID=&quot;VisioProRetail&quot;&gt;
         &lt;Language ID=&quot;en-us&quot; /&gt;
       &lt;/Product&gt;
     &lt;/Add&gt;
   &lt;/Configuration&gt; </code></pre>
   <p>In this example, the following changes were made to create a package with Subscription licensing:</p>
   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <tbody>
   <tr class="odd">
   <td align="left"><p><strong>SourcePath</strong></p></td>
   <td align="left"><p>is the path, which was changed to point to the Office applications that were downloaded earlier.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>Product ID</strong></p></td>
   <td align="left"><p>for Office was changed to <code>O365ProPlusRetail</code>.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><strong>Product ID</strong></p></td>
   <td align="left"><p>for Visio was changed to <code>VisioProRetail</code>.</p></td>
   </tr>
   </tbody>
   </table>
   <p></p>
   <tr class="odd">
   <td align="left"><p>ExcludeApp (optional)</p></td>
   <td align="left"><p>Lets you specify Office programs that you don’t want included in the App-V package that the Office Deployment Tool creates. For example, you can exclude Access and InfoPath.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>PACKAGEGUID (optional)</p></td>
   <td align="left"><p>By default, all App-V packages created by the Office Deployment Tool share the same App-V Package ID. You can use PACKAGEGUID to specify a different package ID for each package, which allows you to publish multiple App-V packages, created by the Office Deployment Tool, and manage them by using the App-V Server.</p>
   <p>An example of when to use this parameter is if you create different packages for different users. For example, you can create a package with just Office 2016 for some users, and create another package with Office 2016 and Visio 2016 for another set of users.</p>
   &gt;<strong>Note</strong> Even if you use unique package IDs, you can still deploy only one App-V package to a single device.
   </td>
   </tr>
   </tbody>
   </table>



2. Use the /packager command to convert the Office applications to an Office 2016 App-V package.

   For example:

   ``` syntax
   \\server\Office2016\setup.exe /packager \\server\Office2016\Customconfig.xml  \\server\share\Office2016AppV
   ```

   In the example:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <tbody>
   <tr class="odd">
   <td align="left"><p><strong>\server\Office2016</strong></p></td>
   <td align="left"><p>is the network share location that contains the Office Deployment Tool and the custom Configuration.xml file, Customconfig.xml.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>Setup.exe</strong></p></td>
   <td align="left"><p>is the Office Deployment Tool.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><strong>/packager</strong></p></td>
   <td align="left"><p>creates the Office 2016 App-V package with the type of licensing specified in the customConfig.xml file.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>\server\Office2016\Customconfig.xml</strong></p></td>
   <td align="left"><p>passes the configuration XML file (in this case customConfig) that has been prepared for the packaging stage.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><strong>\server\share\Office 2016AppV</strong></p></td>
   <td align="left"><p>specifies the location of the newly created Office App-V package.</p></td>
   </tr>
   </tbody>
   </table>



~~~
After you run the **/packager** command, the following folders appear up in the directory where you specified the package should be saved:

-   **App-V Packages** – contains an Office 2016 App-V package and two deployment configuration files.

-   **WorkingDir**

**Note** To troubleshoot any issues, see the log files in the %temp% directory (default).
~~~



3. Verify that the Office 2016 App-V package works correctly:

   1.  Publish the Office 2016 App-V package, which you created globally, to a test computer, and verify that the Office 2016 shortcuts appear.

   2.  Start a few Office 2016 applications, such as Excel or Word, to ensure that your package is working as expected.

## <a href="" id="bkmk-pub-pkg-office"></a>Publishing the Office package for App-V


Use the following information to publish an Office package.

### Methods for publishing Office App-V packages

Deploy the App-V package for Office 2016 by using the same methods you use for any other package:

-   System Center Configuration Manager

-   App-V Server

-   Stand-alone through PowerShell commands

### Publishing prerequisites and requirements

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite or requirement</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enable PowerShell scripting on the App-V clients</p></td>
<td align="left"><p>To publish Office 2016 packages, you must run a script.</p>
<p>Package scripts are disabled by default on App-V clients. To enable scripting, run the following PowerShell command:</p>
<pre class="syntax" space="preserve"><code>Set-AppvClientConfiguration –EnablePackageScripts 1</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Publish the Office 2016 package globally</p></td>
<td align="left"><p>Extension points in the Office App-V package require installation at the computer level.</p>
<p>When you publish at the computer level, no prerequisite actions or redistributables are needed, and the Office 2016 package globally enables its applications to work like natively installed Office, eliminating the need for administrators to customize packages.</p></td>
</tr>
</tbody>
</table>



### How to publish an Office package

Run the following command to publish an Office package globally:

-   `Add-AppvClientPackage <Path_to_AppV_Package> | Publish-AppvClientPackage –global`

-   From the Web Management Console on the App-V Server, you can add permissions to a group of computers instead of to a user group to enable packages to be published globally to the computers in the corresponding group.

## <a href="" id="bkmk-custmz-manage-office-pkgs"></a>Customizing and managing Office App-V packages


To manage your Office App-V packages, use the same operations as you would for any other package, but there are a few exceptions, as outlined in the following sections.

-   [Enabling Office plug-ins by using connection groups](#bkmk-enable-office-plugins)

-   [Disabling Office 2016 applications](#bkmk-disable-office-apps)

-   [Disabling Office 2016 shortcuts](#bkmk-disable-shortcuts)

-   [Managing Office 2016 package upgrades](#bkmk-manage-office-pkg-upgrd)

-   [Deploying Visio 2016 and Project 2016 with Office](#bkmk-deploy-visio-project)

### <a href="" id="bkmk-enable-office-plugins"></a>Enabling Office plug-ins by using connection groups

Use the steps in this section to enable Office plug-ins with your Office package. To use Office plug-ins, you must use the App-V Sequencer to create a separate package that contains just the plug-ins. You cannot use the Office Deployment Tool to create the plug-ins package. You then create a connection group that contains the Office package and the plug-ins package, as described in the following steps.

**To enable plug-ins for Office App-V packages**

1.  Add a Connection Group through App-V Server, System Center Configuration Manager, or a PowerShell cmdlet.

2.  Sequence your plug-ins using the App-V Sequencer. Ensure that Office 2016 is installed on the computer being used to sequence the plug-in. It is recommended you use Office 365 ProPlus(non-virtual) on the sequencing computer when you sequence Office 2016 plug-ins.

3.  Create an App-V package that includes the desired plug-ins.

4.  Add a Connection Group through App-V server, System Center Configuration Manager, or a PowerShell cmdlet.

5.  Add the Office 2016 App-V package and the plug-ins package you sequenced to the Connection Group you created.

    >**Important** The order of the packages in the Connection Group determines the order in which the package contents are merged. In your Connection group descriptor file, add the Office 2016 App-V package first, and then add the plug-in App-V package.



6.  Ensure that both packages are published to the target computer and that the plug-in package is published globally to match the global settings of the published Office 2016 App-V package.

7.  Verify that the Deployment Configuration File of the plug-in package has the same settings that the Office 2016 App-V package has.

    Since the Office 2016 App-V package is integrated with the operating system, the plug-in package settings should match. You can search the Deployment Configuration File for “COM Mode” and ensure that your plug-ins package has that value set as “Integrated” and that both "InProcessEnabled" and "OutOfProcessEnabled" match the settings of the Office 2016 App-V package you published.

8.  Open the Deployment Configuration File and set the value for **Objects Enabled** to **false**.

9.  If you made any changes to the Deployment Configuration file after sequencing, ensure that the plug-in package is published with the file.

10. Ensure that the Connection Group you created is enabled onto your desired computer. The Connection Group created will likely “pend” if the Office 2016 App-V package is in use when the Connection Group is enabled. If that happens, you have to reboot to successfully enable the Connection Group.

11. After you successfully publish both packages and enable the Connection Group, start the target Office 2016 application and verify that the plug-in you published and added to the connection group works as expected.

### <a href="" id="bkmk-disable-office-apps"></a>Disabling Office 2016 applications

You may want to disable specific applications in your Office App-V package. For instance, you can disable Access, but leave all other Office application main available. When you disable an application, the end user will no longer see the shortcut for that application. You do not have to re-sequence the application. When you change the Deployment Configuration File after the Office 2016 App-V package has been published, you will save the changes, add the Office 2016 App-V package, and then republish it with the new Deployment Configuration File to apply the new settings to Office 2016 App-V Package applications.

>**Note** To exclude specific Office applications (for example, Access and InfoPath) when you create the App-V package with the Office Deployment Tool, use the **ExcludeApp** setting.


**To disable an Office 2016 application**

1.  Open a Deployment Configuration File with a text editor such as **Notepad** and search for “Applications."

2.  Search for the Office application you want to disable, for example, Access 2016.

3.  Change the value of "Enabled" from "true" to "false."

4.  Save the Deployment Configuration File.

5.  Add the Office 2016 App-V Package with the new Deployment Configuration File.

    ``` syntax
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

6.  Re-add the Office 2016 App-V package, and then republish it with the new Deployment Configuration File to apply the new settings to Office 2016 App-V Package applications.

### <a href="" id="bkmk-disable-shortcuts"></a>Disabling Office 2016 shortcuts

You may want to disable shortcuts for certain Office applications instead of unpublishing or removing the package. The following example shows how to disable shortcuts for Microsoft Access.

**To disable shortcuts for Office 2016 applications**

1.  Open a Deployment Configuration File in Notepad and search for “Shortcuts”.

2.  To disable certain shortcuts, delete or comment out the specific shortcuts you don’t want. You must keep the subsystem present and enabled. For example, in the example below, delete the Microsoft Access shortcuts, while keeping the subsystems &lt;shortcut&gt; &lt;/shortcut&gt; intact to disable the Microsoft Access shortcut.

    ``` syntax
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
           <AppuserModelId>Microsoft.Office.MSACCESS.EXE.15</AppUserModelId>
           <AppUserModelExcludeFromShowInNewInstall>true</AppUserModelExcludeFromShowInNewInstall>
           <Description>Build a professional app quickly to manage data.</Description>
           <ShowCommand>l</ShowCommand>
           <ApplicationId>[{AppVPackageRoot}]\officel6\MSACCESS.EXE</ApplicationId>
        </Shortcut>
    ```

3.  Save the Deployment Configuration File.

4.  Republish Office 2016 App-V Package with new Deployment Configuration File.

Many additional settings can be changed through modifying the Deployment Configuration for App-V packages, for example, file type associations, Virtual File System, and more. For additional information on how to use Deployment Configuration Files to change App-V package settings, refer to the additional resources section at the end of this document.

### <a href="" id="bkmk-manage-office-pkg-upgrd"></a>Managing Office 2016 package upgrades

To upgrade an Office 2016 package, use the Office Deployment Tool. To upgrade a previously deployed Office 2016 package, perform the following steps.

**How to upgrade a previously deployed Office 2016 package**

1. Create a new Office 2016 package through the Office Deployment Tool that uses the most recent Office 2016 application software. The most recent Office 2016 bits can always be obtained through the download stage of creating an Office 2016 App-V Package. The newly created Office 2016 package will have the most recent updates and a new Version ID. All packages created using the Office Deployment Tool have the same lineage.

   > **Note** Office App-V packages have two Version IDs:
   > <ul>
   > <li>An Office 2016 App-V Package Version ID that is unique across all packages created using the Office Deployment Tool.</li>
   > <li>A second App-V Package Version ID, x.x.x.x for example, in the AppX manifest that will only change if there is a new version of Office itself. For example, if a new Office 2016 release with upgrades is available, and a package is created through the Office Deployment Tool to incorporate these upgrades, the X.X.X.X version ID will change to reflect that the Office version itself has changed. The App-V server will use the X.X.X.X version ID to differentiate this package and recognize that it contains new upgrades to the previously published package, and as a result, publish it as an upgrade to the existing Office 2016 package.</li>
   > </ul>


2. Globally publish the newly created Office 2016 App-V Packages onto computers where you would like to apply the new updates. Since the new package has the same lineage of the older Office 2016 App-V Package, publishing the new package with the updates will only apply the new changes to the old package, and thus will be fast.

3. Upgrades will be applied in the same manner of any globally published App-V Packages. Because applications will probably be in use, upgrades might be delayed until the computer is rebooted.


### <a href="" id="bkmk-deploy-visio-project"></a>Deploying Visio 2016 and Project 2016 with Office

The following table describes the requirements and options for deploying Visio 2016 and Project 2016 with Office.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>How do I package and publish Visio 2016 and Project 2016 with Office?</p></td>
<td align="left"><p>You must include Visio 2016 and Project 2016 in the same package with Office.</p>
<p>If you aren’t deploying Office, you can create a package that contains Visio and/or Project, as long as you follow the packaging, publishing, and deployment requirements described in this topic.</p></td>
</tr>
<tr class="even">
<td align="left"><p>How can I deploy Visio 2016 and Project 2016 to specific users?</p></td>
<td align="left"><p>Use one of the following methods:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">If you want to...</th>
<th align="left">...then use this method</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create two different packages and deploy each one to a different group of users</p></td>
<td align="left"><p>Create and deploy the following packages:</p>
<ul>
<li><p>A package that contains only Office - deploy to computers whose users need only Office.</p></li>
<li><p>A package that contains Office, Visio, and Project - deploy to computers whose users need all three applications.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>If you want only one package for the whole organization, or if you have users who share computers:</p></td>
<td align="left"><p>Follows these steps:</p>
<ol>
<li><p>Create a package that contains Office, Visio, and Project.</p></li>
<li><p>Deploy the package to all users.</p></li>
<li><p>Use <a href="https://technet.microsoft.com/library/dd723678.aspx" data-raw-source="[Microsoft AppLocker](https://technet.microsoft.com/library/dd723678.aspx)">Microsoft AppLocker</a> to prevent specific users from using Visio and Project.</p></li>
</ol></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>



## Additional resources


[Deploying Microsoft Office 2013 by Using App-V](deploying-microsoft-office-2013-by-using-app-v.md)

[Deploying Microsoft Office 2010 by Using App-V](deploying-microsoft-office-2010-by-using-app-v.md)

[Office 2016 Deployment Tool for Click-to-Run](https://www.microsoft.com/download/details.aspx?id=49117)

**Connection Groups**

[Deploying Connection Groups in Microsoft App-V v5](https://go.microsoft.com/fwlink/p/?LinkId=330683)

[Managing Connection Groups](managing-connection-groups.md)

**Dynamic Configuration**

[About App-V 5.1 Dynamic Configuration](about-app-v-51-dynamic-configuration.md)





