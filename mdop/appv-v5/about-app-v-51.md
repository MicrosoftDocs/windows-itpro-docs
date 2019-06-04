---
title: About App-V 5.1
description: About App-V 5.1
author: v-madhi
ms.assetid: 35bc9908-d502-4a9c-873f-8ee17b6d9d74
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# About App-V 5.1


Use the following sections to review information about significant changes that apply to Application Virtualization (App-V) 5.1:

[App-V 5.1 software prerequisites and supported configurations](#bkmk-51-prereq-configs)

[Migrating to App-V 5.1](#bkmk-migrate-to-51)

[What’s New in App-V 5.1](#bkmk-whatsnew)

[App-V support for Windows 10](#bkmk-win10support)

[App-V Management Console Changes](#bkmk-mgmtconsole)

[Sequencer Improvements](#bkmk-seqimprove)

[Improvements to Package Converter](#bkmk-pkgconvimprove)

[Support for multiple scripts on a single event trigger](#bkmk-supmultscripts)

[Hardcoded path to installation folder is redirected to virtual file system root](#bkmk-hardcodepath)

## <a href="" id="bkmk-51-prereq-configs"></a>App-V 5.1 software prerequisites and supported configurations


See the following links for the App-V 5.1 software prerequisites and supported configurations.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Links to prerequisites and supported configurations</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[App-V 5.1 Prerequisites](app-v-51-prerequisites.md)</p></td>
<td align="left"><p>Prerequisite software that you must install before starting the App-V 5.1 installation</p></td>
</tr>
<tr class="even">
<td align="left"><p>[App-V 5.1 Supported Configurations](app-v-51-supported-configurations.md)</p></td>
<td align="left"><p>Supported operating systems and hardware requirements for the App-V Server, Sequencer, and Client components</p></td>
</tr>
</tbody>
</table>

 

**Support for using Configuration Manager with App-V:** App-V 5.1 supports System Center 2012 R2 Configuration Manager SP1. See [Planning for App-V Integration with Configuration Manager](https://technet.microsoft.com/library/jj822982.aspx) for information about integrating your App-V environment with Configuration Manager and Configuration Manager.

## <a href="" id="bkmk-migrate-to-51"></a>Migrating to App-V 5.1


Use the following information to upgrade to App-V 5.1 from earlier versions. See [Migrating to App-V 5.1 from a Previous Version](migrating-to-app-v-51-from-a-previous-version.md) for more information.

### Before you start the upgrade

Review the following information before you start the upgrade:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Items to review before upgrading</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Components to upgrade, in any order</p></td>
<td align="left"><ol>
<li><p>App-V Server</p></li>
<li><p>Sequencer</p></li>
<li><p>App-V Client or App-V Remote Desktop Services (RDS) Client</p></li>
</ol>
<div class="alert">
<strong>Note</strong>  
<p>Prior to App-V 5.0 SP2, the Client Management User Interface (UI) was provided with the App-V Client installation. For App-V 5.0 SP2 installations (or later), you can use the Client Management UI by downloading from [Application Virtualization 5.0 Client UI Application](https://www.microsoft.com/download/details.aspx?id=41186).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Upgrading from App-V 4.x</p></td>
<td align="left"><p>You must first upgrade to App-V 5.0. You cannot upgrade directly from App-V 4.x to App-V 5.1. For more information, see:</p>
<ul>
<li><p>“Differences between App-V 4.6 and App-V 5.0” in [About App-V 5.0](about-app-v-50.md)</p></li>
<li><p>[Planning for Migrating from a Previous Version of App-V](planning-for-migrating-from-a-previous-version-of-app-v.md)</p></li>
</ul>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Upgrading from App-V 5.0 or later</p></td>
<td align="left"><p>You can upgrade to App-V 5.1 directly from any of the following versions:</p>
<ul>
<li><p>App-V 5.0</p></li>
<li><p>App-V 5.0 SP1</p></li>
<li><p>App-V 5.0 SP2</p></li>
<li><p>App-V 5.0 SP3</p></li>
</ul>
<p>To upgrade to App-V 5.1, follow the steps in the remaining sections of this topic.</p>
<p>Packages and connection groups will continue to work with App-V 5.1 as they currently do.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-steps-upgrd-infrastruc"></a>Steps to upgrade the App-V infrastructure

Complete the following steps to upgrade each component of the App-V infrastructure to App-V 5.1. The following order is only a suggestion; you may upgrade components in any order.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Step</th>
<th align="left">For more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Step 1: Upgrade the App-V Server.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you are not using the App-V Server, skip this step and go to the next step.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>Follow these steps:</p>
<ol>
<li><p>Do one of the following, depending on the method you are using to upgrade the Management database and/or Reporting database:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Database upgrade method</th>
<th align="left">Step</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Installer</p></td>
<td align="left"><p>Skip this step and go to step 2, “If you are upgrading the App-V Server...”</p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL scripts</p></td>
<td align="left"><p>Follow the steps in [How to Deploy the App-V Databases by Using SQL Scripts](how-to-deploy-the-app-v-databases-by-using-sql-scripts.md).</p></td>
</tr>
</tbody>
</table>
<li><p>If you are upgrading the App-V Server from App-V 5.0 SP1 Hotfix Package 3 or later, complete the steps in section [Check registry keys after installing the App-V 5.0 SP3 Server](check-reg-key-svr.md).</p></li>
<li><p>Follow the steps in [How to Deploy the App-V 5.1 Server](how-to-deploy-the-app-v-51-server.md)</p></li>
<p> </p></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p>Step 2: Upgrade the App-V Sequencer.</p></td>
<td align="left"><p>See [How to Install the Sequencer](how-to-install-the-sequencer-beta-gb18030.md).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Step 3: Upgrade the App-V Client or App-V RDS Client.</p></td>
<td align="left"><p>See [How to Deploy the App-V Client](how-to-deploy-the-app-v-client-gb18030.md).</p></td>
</tr>
</tbody>
</table>

 

### Converting packages created using a prior version of App-V

Use the package converter utility to upgrade virtual application packages created using versions of App-V prior to App-V 5.0. The package converter uses PowerShell to convert packages and can help automate the process if you have many packages that require conversion.

**Note**  
App-V 5.1 packages are exactly the same as App-V 5.0 packages. There has been no change in the package format between the versions and so there is no need to convert App-V 5.0 packages to App-V 5.1 packages.

 

## <a href="" id="bkmk-whatsnew"></a>What’s New in App-V 5.1


These sections are for users who are already familiar with App-V and want to know what has changed in App-V 5.1. If you are not already familiar with App-V, you should start by reading [Planning for App-V 5.1](planning-for-app-v-51.md).

### <a href="" id="bkmk-win10support"></a>App-V support for Windows 10

The following table lists the Windows 10 support for App-V. Windows 10 is not supported in versions of App-V prior to App-V 5.1.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">App-V 5.1</th>
<th align="left">App-V 5.0</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Client</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V RDS Client</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Sequencer</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-mgmtconsole"></a>App-V Management Console Changes

This section compares the App-V Management Console’s current and previous functionality.

### Silverlight is no longer required

The Management Console UI no longer requires Silverlight. The 5.1 Management Console is built on HTML5 and Javascript.

### Notifications and messages are displayed individually in a dialog box

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
<td align="left"><p><strong>Number of messages indicator:</strong></p>
<p>On the title bar of the App-V Management Console, a number is now displayed next to a flag icon to indicate the number of messages that are waiting to be read.</p></td>
<td align="left"><p>You could see only one message or error at a time, and you were unable to determine how many messages there were.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Message appearance:</strong></p>
<ul>
<li><p>Messages that require user input appear in a separate dialog box that displays on top of the current page that you were viewing, and require a response before you can dismiss them.</p></li>
<li><p>Messages and errors appear in a list, with one beneath the other.</p></li>
</ul></td>
<td align="left"><p>You could see only one message or error at a time.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Dismissing messages:</strong></p>
<p>Use the <strong>Dismiss All</strong> link to dismiss all messages and errors at one time, or dismiss them one at a time.</p></td>
<td align="left"><p>You could dismiss messages and errors only one at a time.</p></td>
</tr>
</tbody>
</table>

 

### Console pages are now separate URLs

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
<td align="left"><p>Each page in the console has a different URL, which enables you to bookmark specific pages for quick access in the future.</p>
<p>The number that appears in some URLs indicates the specific package. These numbers are unique.</p></td>
<td align="left"><p>All console pages are accessed through the same URL.</p></td>
</tr>
</tbody>
</table>

 

### New, separate CONNECTION GROUPS page and menu option

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
<td align="left"><p>The CONNECTION GROUPS page is now part of the main menu, at the same level as the PACKAGES page.</p></td>
<td align="left"><p>To open the CONNECTION GROUPS page, you navigate through the PACKAGES page.</p></td>
</tr>
</tbody>
</table>

 

### Menu options for packages have changed

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
<td align="left"><p>The following options are now buttons that appear at the bottom of the PACKAGES page:</p>
<ul>
<li><p>Add or Upgrade</p></li>
<li><p>Publish</p></li>
<li><p>Unpublish</p></li>
<li><p>Delete</p></li>
</ul>
<p>The following options will still appear when you right-click a package to open the drop-down context menu:</p>
<ul>
<li><p>Publish</p></li>
<li><p>Unpublish</p></li>
<li><p>Edit AD Access</p></li>
<li><p>Edit Deployment Config</p></li>
<li><p>Transfer deployment configuration from…</p></li>
<li><p>Transfer access and configuration from…</p></li>
<li><p>Delete</p></li>
</ul>
<p>When you click <strong>Delete</strong> to remove a package, a dialog box opens and asks you to confirm that you want to delete the package.</p></td>
<td align="left"><p>The <strong>Add or Upgrade</strong> option was a button at the top right of the PACKAGES page.</p>
<p>The <strong>Publish</strong>, <strong>Unpublish</strong>, and <strong>Delete</strong> options were available only if you right-clicked a package name in the packages list.</p></td>
</tr>
<tr class="even">
<td align="left"><p>The following package operations are now buttons on the package details page for each package:</p>
<ul>
<li><p>Transfer (drop-down menu with the following options):</p>
<ul>
<li><p>Transfer deployment configuration from…</p></li>
<li><p>Transfer access and configuration from…</p></li>
</ul></li>
<li><p>Edit (connection groups and AD Access)</p></li>
<li><p>Unpublish</p></li>
<li><p>Delete</p></li>
<li><p>Edit Default Configuration</p></li>
</ul></td>
<td align="left"><p>These package options were available only if you right-clicked a package name in the packages list.</p></td>
</tr>
</tbody>
</table>

 

### Icons in left pane have new colors and text

The colors of the icons in the left pane have been changed, and text added, to make the icons consistent with other Microsoft products.

### Overview page has been removed

In the left pane of the Management Console, the OVERVIEW menu option and its associated OVERVIEW page have been removed.

### <a href="" id="bkmk-seqimprove"></a>Sequencer Improvements

The following improvements have been made to the package editor in the App-V 5.1 Sequencer.

### Import and export the manifest file

You can import and export the AppxManifest.xml file. To export the manifest file, select the **Advanced** tab and in the Manifest File box, click **Export...**. You can make changes to the manifest file, such as removing shell extensions or editing file type associations.

After you make your changes, click **Import...** and select the file you edited. After you successfully import it back in, the manifest file is immediately updated within the package editor.

**Caution**  
When you import the file, your changes are validated against the XML schema. If the file is not valid, you will receive an error. Be aware that it is possible to import a file that is validated against the XML schema, but that might still fail to run for other reasons.

 

### Addition of Windows 10 to operating systems list

In the Deployment tab, Windows 10 32-bit and Windows 10-64 bit have been added to the list of operating systems for which you can sequence a package. If you select **Any Operating System**, Windows 10 is automatically included among the operating systems that the sequenced package will support.

### Current path displays at bottom of virtual registry editor

In the Virtual Registry tab, the path now displays at the bottom of the virtual registry editor, which enables you to determine the currently selected key. Previously, you had to scroll through the registry tree to find the currently selected key.

### <a href="" id="combined--find-and-replace--dialog-box-and-shortcut-keys-added-in-virtual-registry-editor"></a>Combined “find and replace” dialog box and shortcut keys added in virtual registry editor

In the virtual registry editor, shortcut keys have been added for the Find option (Ctrl+F), and a dialog box that combines the “find” and “replace” tasks has been added to enable you to find and replace values and data. To access this combined dialog box, select a key and do one of the following:

-   Press **Ctrl+H**

-   Right-click a key and select **Replace**.

-   Select **View** &gt; **Virtual Registry** &gt; **Replace**.

Previously, the “Replace” dialog box did not exist, and you had to make changes manually.

### Rename registry keys and package files successfully

You can rename virtual registry keys and files without experiencing Sequencer issues. Previously, the Sequencer stopped working if you tried to rename a key.

### Import and export virtual registry keys

You can import and export virtual registry keys. To import a key, right-click the node under which to import the key, navigate to the key you want to import, and then click **Import**. To export a key, right-click the key and select **Export**.

### Import a directory into the virtual file system

You can import a directory into the VFS. To import a directory, click the **Package Files** tab, and then click **View** &gt; **Virtual File System** &gt; **Import Directory**. If you try to import a directory that contains files that are already in the VFS, the import fails, and an explanatory message is displayed. Prior to App-V 5.1, you could not import directories.

### Import or export a VFS file without having to delete and then add it back to the package

You can import files to or export files from the VFS without having to delete the file and then add it back to the package. For example, you might use this feature to export a change log to a local drive, edit the file using an external editor, and then re-import the file into the VFS.

To export a file, select the **Package Files** tab, right-click the file in the VFS, click **Export**, and choose an export location from which you can make your edits.

To import a file, select the **Package Files** tab and right-click the file that you had exported. Browse to the file that you edited, and then click **Import**. The imported file will overwrite the existing file.

After you import a file, you must save the package by clicking **File** &gt; **Save**.

### Menu for adding a package file has moved

The menu option for adding a package file has been moved. To find the Add option, select the **Package Files** tab, then click **View** &gt; **Virtual File System** &gt; **Add File**. Previously, you right-clicked a folder under the VFS node, and chose **Add File**.

### Virtual registry node expands MACHINE and USER hives by default

When you open the virtual registry, the MACHINE and USER hives are shown below the top-level REGISTRY node. Previously, you had to expand the REGISTRY node to show the hives beneath.

### Enable or disable Browser Helper Objects

You can enable or disable Browser Helper Objects by selecting a new check box, Enable Browser Helper Objects, on the Advanced tab of the Sequencer user interface. If Browser Helper Objects:

-   Exist in the package and are enabled, the check box is selected by default.

-   Exist in the package and are disabled, the check box is clear by default.

-   Exist in the package, with one or more enabled and one or more disabled, the check box is set to indeterminate by default.

-   Do not exist in the package, the check box is disabled.

### <a href="" id="bkmk-pkgconvimprove"></a>Improvements to Package Converter

You can now use the package converter to convert App-V 4.6 packages that contain scripts, and registry information and scripts from source .osd files are now included in package converter output.

For more information including examples, see [Migrating to App-V 5.1 from a Previous Version](migrating-to-app-v-51-from-a-previous-version.md).

### <a href="" id="bkmk-supmultscripts"></a>Support for multiple scripts on a single event trigger

App-V 5.1 supports the use of multiple scripts on a single event trigger for App-V packages, including packages that you are converting from App-V 4.6 to App-V 5.0 or later. To enable the use of multiple scripts, App-V 5.1 uses a script launcher application, named ScriptRunner.exe, which is installed as part of the App-V client installation.

For more information, including a list of event triggers and the context under which scripts can be run, see the Scripts section in [About App-V 5.1 Dynamic Configuration](about-app-v-51-dynamic-configuration.md).

### <a href="" id="bkmk-hardcodepath"></a>Hardcoded path to installation folder is redirected to virtual file system root

When you convert packages from App-V 4.6 to 5.1, the App-V 5.1 package can access the hardcoded drive that you were required to use when you created 4.6 packages. The drive letter will be the drive you selected as the installation drive on the 4.6 sequencing machine. (The default drive letter is Q:\\.)

Previously, the 4.6 root folder was not recognized and could not be accessed by App-V 5.0 packages. App-V 5.1 packages can access hardcoded files by their full path or can programmatically enumerate files under the App-V 4.6 installation root.

**Technical Details:** The App-V 5.1 package converter will save the App-V 4.6 installation root folder and short folder names in the FilesystemMetadata.xml file in the Filesystem element. When the App-V 5.1 client creates the virtual process, it will map requests from the App-V 4.6 installation root to the virtual file system root.

## How to Get MDOP Technologies


App-V is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049).






## Related topics


[Release Notes for App-V 5.1](release-notes-for-app-v-51.md)

 

 





