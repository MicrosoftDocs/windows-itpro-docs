---
title: Creating and Managing App-V 5.0 Virtualized Applications
description: Creating and Managing App-V 5.0 Virtualized Applications
author: manikadhiman
ms.assetid: 66bab403-d7e0-4e7b-bc8f-a29a98a7160a
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Creating and Managing App-V 5.0 Virtualized Applications


After you have properly deployed the Microsoft Application Virtualization (App-V) 5.0 sequencer, you can use it to monitor and record the installation and setup process for an application to be run as a virtualized application.

**Note**  
For more information about configuring the Microsoft Application Virtualization (App-V) 5.0 sequencer, sequencing best practices, and an example of creating and updating a virtual application, see the [Microsoft Application Virtualization 5.0 Sequencing Guide](https://download.microsoft.com/download/F/7/8/F784A197-73BE-48FF-83DA-4102C05A6D44/App-V 5.0 Sequencing Guide.docx) (http://download.microsoft.com/download/F/7/8/F784A197-73BE-48FF-83DA-4102C05A6D44/App-V 5.0 Sequencing Guide.docx).

 

## Sequencing an application


You can use the App-V 5.0 Sequencer to perform the following tasks:

-   Create virtual packages that can be deployed to computers running the App-V 5.0 client.

-   Upgrade existing packages. You can expand an existing package onto the computer running the sequencer and then upgrade the application to create a newer version.

-   Edit configuration information associated with an existing package. For example, you can add a shortcut or modify a file type association.

    **Note**  
    You must create shortcuts and save them to an available network location to allow roaming. If a shortcut is created and saved in a private location, the package must be published locally to the computer running the App-V 5.0 client.

     

-   Convert existing virtual packages.

The sequencer uses the **%TMP% \\ Scratch** or **%TEMP% \\ Scratch** directory and the **Temp** directory to store temporary files during sequencing. On the computer that runs the sequencer, you should configure these directories with free disk space equivalent to the estimated application installation requirements. Configuring the temp directories and the Temp directory on different hard drive partitions can help improve performance during sequencing.

When you use the sequencer to create a new virtual application, the following listed files are created. These files comprise the App-V 5.0 package.

-   .msi file. This Windows Installer (.msi) file is created by the sequencer and is used to install the virtual package on target computers.

-   Report.xml file. In this file, the sequencer saves all issues, warnings, and errors that were discovered during sequencing. It displays the information after the package has been created. You can us this report for diagnosing and troubleshooting.

-   .appv file. This is the virtual application file.

-   Deployment configuration file. The deployment configuration file determines how the virtual application will be deployed to target computers.

-   User configuration file. The user configuration file determines how the virtual application will run on target computers.

**Important**  
You must configure the %TMP% and %TEMP% folders that the package converter uses to be a secure location and directory. A secure location is only accessible by an administrator. Additionally, when you sequence the package you should save the package to a location that is secure, or make sure that no other user is allowed to be logged in during the conversion and monitoring process.

 

The **Options** dialog box in the sequencer console contains the following tabs:

-   **General**. Use this tab to enable Microsoft Updates to run during sequencing. Select **Append Package Version to Filename** to configure the sequence to add a version number to the virtualized package that is being sequenced. Select **Always trust the source of Package Accelerators** to create virtualized packages using a package accelerator without being prompted for authorization.

    **Important**  
    Package Accelerators created using App-V 4.6 are not supported by App-V 5.0.

     

-   **Parse Items**. This tab displays the associated file path locations that will be parsed or tokenized into in the virtual environment. Tokens are useful for adding files using the **Package Files** tab in **Advanced Editing**.

-   **Exclusion Items**. Use this tab to specify which folders and directories should not be monitored during sequencing. To add local application data that is saved in the Local App Data folder in the package, click **New** and specify the location and the associated **Mapping Type**. This option is required for some packages.

App-V 5.0 supports applications that include Microsoft Windows Services. If an application includes a Windows service, the Service will be included in the sequenced virtual package as long as it is installed while being monitored by the sequencer. If a virtual application creates a Windows service when it initially runs, then later, after installation, the application must be run while the sequencer is monitoring so that the Windows Service will be added to the package. Only Services that run under the Local System account are supported. Services that are configured for AutoStart or Delayed AutoStart are started before the first virtual application in a package runs inside the package’s Virtual Environment. Windows Services that are configured to be started on demand by an application are started when the virtual application inside the package starts the Service via API call.

[How to Sequence a New Application with App-V 5.0](how-to-sequence-a-new-application-with-app-v-50-beta-gb18030.md)

## <a href="" id="---------app-v-5-0-sp2-shell-extension-support"></a> App-V 5.0 SP2 shell extension support


App-V 5.0 SP2 supports shell extensions. Shell extensions will be detected and embedded in the package during sequencing.

Shell extensions are embedded in the package automatically during the sequencing process. When the package is published, the shell extension gives users the same functionality as if the application were locally installed.

**Requirements for using shell extensions:**

-   Packages that contain embedded shell extensions must be published globally. The application requires no additional setup or configuration on the client to enable the shell extension functionality.

-   The “bitness” of the application, Sequencer, and App-V client must match, or the shell extensions won’t work. For example:

    -   The version of the application is 64-bit.

    -   The Sequencer is running on a 64-bit computer.

    -   The package is being delivered to a 64-bit App-V client computer.

The following table lists the supported shell extensions:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Handler</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Context menu handler</p></td>
<td align="left"><p>Adds menu items to the context menu. It is called before the context menu is displayed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Drag-and-drop handler</p></td>
<td align="left"><p>Controls the action where right-click, drag and drop and modifies the context menu that appears.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Drop target handler</p></td>
<td align="left"><p>Controls the action after a data object is dragged and dropped over a drop target such as a file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Data object handler</p></td>
<td align="left"><p>Controls the action after a file is copied to the clipboard or dragged and dropped over a drop target. It can provide additional clipboard formats to the drop target.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Property sheet handler</p></td>
<td align="left"><p>Replaces or adds pages to the property sheet dialog box of an object.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Infotip handler</p></td>
<td align="left"><p>Allows retrieving flags and infotip information for an item and displaying it inside a pop-up tooltip upon mouse hover.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Column handler</p></td>
<td align="left"><p>Allows creating and displaying custom columns in <strong>Windows Explorer Details view</strong>. It can be used to extend sorting and grouping.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Preview handler</p></td>
<td align="left"><p>Enables a preview of a file to be displayed in the Windows Explorer Preview pane.</p></td>
</tr>
</tbody>
</table>

 

## Copy on Write (CoW) file extension support


Copy on write (CoW) file extensions allow App-V 5.0 to dynamically write to specific locations contained in the virtual package while it is being used.

The following table displays the file types that can exist in a virtual package under the VFS directory, but cannot be updated on the computer running the App-V 5.0 client. All other files and directories can be modified.

.acm

.asa

.asp

.aspx

.ax

.bat

.cer

.chm

.clb

.cmd

.cnt

.cnv

.com

.cpl

.cpx

.crt

.dll

.drv

.exe

.fon

.grp

.hlp

.hta

.ime

.inf

.ins

.isp

.its

.js

.jse

.lnk

.msc

.msi

.msp

.mst

.mui

.nls

.ocx

.pal

.pcd

.pif

.reg

.scf

.scr

.sct

.shb

.shs

.sys

.tlb

.tsp

.url

.vb

.vbe

.vbs

.vsmacros

.ws

.esc

.wsf

.wsh

 

## Modifying an existing virtual application package


You can use the sequencer to modify an existing package. The computer on which you do this should match the chip architecture of the computer you used to create the application. For example, if you initially sequenced a package using a computer running a 64-bit operating system, you should modify the package using a computer running a 64-bit operating system.

[How to Modify an Existing Virtual Application Package](how-to-modify-an-existing-virtual-application-package-beta.md)

## Creating a project template


A .appvt file is a project template that can be used to save commonly applied, customized settings. You can then more easily use these settings for future sequencings.

App-V 5.0 project templates differ from App-V 5.0 Application Accelerators because App-V 5.0 Application Accelerators are application-specific, and App-V 5.0 project templates can be applied to multiple applications. Additionally, you cannot use a project template when you use a Package Accelerator to create a virtual application package. The following general settings are saved with an App-V 5.0 project template:

A template can specify and store multiple settings as follows:

-   **Advanced Monitoring Options**. Enables Microsoft Update to run during monitoring. Saves allow local interaction option settings

-   **General Options**. Enables the use of **Windows Installer**, **Append Package Version to Filename**.

-   **Exclusion Items.** Contains the Exclusion pattern list.

[How to Create and Use a Project Template](how-to-create-and-use-a-project-template.md)

## Creating a package accelerator


**Note**  
Package accelerators created using a previous version of App-V must be recreated using App-V 5.0.

 

You can use App-V 5.0 package accelerators to automatically generate a new virtual application packages. After you have successfully created a package accelerator, you can reuse and share the package accelerator.

In some situations, to create the package accelerator, you might have to install the application locally on the computer that runs the sequencer. In such cases, you should first try to create the package accelerator with the installation media. If multiple missing files are required, you should install the application locally to the computer that runs the sequencer, and then create the package accelerator.

After you have successfully created a Package Accelerator, you can reuse and share the Package Accelerator. Creating App-V 5.0 Package Accelerators is an advanced task. Package Accelerators can contain password and user-specific information. Therefore you must save Package Accelerators and the associated installation media in a secure location, and you should digitally sign the Package Accelerator after you create it so that the publisher can be verified when the App-V 5.0 Package Accelerator is applied.

[How to Create a Package Accelerator](how-to-create-a-package-accelerator.md)

[How to Create a Virtual Application Package Using an App-V Package Accelerator](how-to-create-a-virtual-application-package-using-an-app-v-package-accelerator.md)

## Sequencer error reporting


The App-V 5.0 Sequencer can detect common sequencing issues during sequencing. The **Installation Report** page at the end of the sequencing wizard displays diagnostic messages categorized into **Errors**, **Warnings**, and **Info** depending on the severity of the issue.

You can also find additional information about sequencing errors using the Windows Event Viewer.






## <a href="" id="other-resources-for-the-app-v-5-0-sequencer-"></a>Other resources for the App-V 5.0 sequencer


-   [Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





