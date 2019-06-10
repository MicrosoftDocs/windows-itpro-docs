---
title: What's New in App-V 5.0
description: What's New in App-V 5.0
author: msfttracyp
ms.assetid: 79ff6e02-e926-4803-87d8-248a6b28099d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# What's New in App-V 5.0


This section is for users who are already familiar with App-V and want to know what has changed in App-V 5.0 If you are not already familiar with App-V, you should start by reading [Planning for App-V 5.0](planning-for-app-v-50-rc.md).

## Changes in Standard Functionality


The following sections contain information about the changes in standard functionality for App-V 5.0.

### Changes to Supported Operating Systems

For more information, see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

## Changes to the sequencer


The following sections contain information about the changes in the App-V 5.0 sequencer.

### Specific change to the sequencer

The following table displays information about what has changed with the App-V 5.0 sequencer

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Sequencer Feature</th>
<th align="left">App-V 5.0 Sequencer Functionality</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Reboot processing</p></td>
<td align="left"><p>When an application prompts for a restart, you should allow the application to restart the computer running the sequencer. The computer running the sequencer will restart and the sequencer will resume in monitoring mode.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Specifying the virtual application directory</p></td>
<td align="left"><p>Virtual Application Directory is a mandatory parameter. For best results, it should match the installation directory of the application installer. This results in more optimal performance and application compatibility.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Editing shortcuts/FTAs</p></td>
<td align="left"><p>The Shortcuts/FTA page is on the <strong>Advanced</strong> editing page after the sequencing wizard has completed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Change History Tab</p></td>
<td align="left"><p>The Change History tab has been removed for App-V 5.0.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OSD Tab</p></td>
<td align="left"><p>The OSD tab has been removed for App-V 5.0.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Virtual Services Tab</p></td>
<td align="left"><p>The virtual services tab has been removed for App-V 5.0.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Files/Virtual File System Tab</p></td>
<td align="left"><p>These tabs are combined and allow you to modify package files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deployment Tab</p></td>
<td align="left"><p>There are no longer options to configure the server URL in the packages. You should configure this now using deployment configuration, or the management server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Package Converter Tool</p></td>
<td align="left"><p>You can now use PowerShell to convert packages created in previous versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Add-on/Middleware</p></td>
<td align="left"><p>You can expand parent packages when you are sequencing an Add-On or Middleware application. Add-ons and Middleware packages must be connected using connection groups in App-V 5.0.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Files output</p></td>
<td align="left"><p>The following files are created with App-V 5.0, Windows Installer (.msi), .appv, deployment configuration, user configuration, and the Report.XML.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compression/Security descriptors/MSI packages</p></td>
<td align="left"><p>Compression and the creation of a Windows Installer (.msi) file are automatic for all packages and you can no longer override security descriptors.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Tools / Options</p></td>
<td align="left"><p>The Diagnostics window has been removed as well as several other settings.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Installation Drive</p></td>
<td align="left"><p>An installation drive is no longer required when you install an application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>OOS Streaming</p></td>
<td align="left"><p>If no stream optimization is performed, packages are stream faulted when they are requested by computers running the App-V 5.0 client until they can launch.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Q:&lt;/p&gt;</td>
<td align="left"><p>App-V 5.0 uses the native file system and no longer requires a Q:.</p></td>
</tr>
</tbody>
</table>

 

## Sequencing error detection


The App-V 5.0 sequencer can detect common sequencing issues during sequencing. The **Installation Report** page at the end of the sequencing wizard displays diagnostic messages categorized into **Errors**, **Warnings**, and **Info** depending on the severity of the issue.

To display more detailed information about an event, double-click the item you want to review in the report. The sequencing issues, as well as suggestions about how to resolve the issues are displayed. Information from the system preparation report and the installation report are summarized when you have finished creating a package. The following list displays the types of issues available in the report:

-   Excluded files.

-   Driver information.

-   COM+ system differences.

-   Side-by-side (SxS) conflicts.

-   Shell Extensions.

-   Information about unsupported services.

-   DCOM.

## Connection Groups


The App-V feature formerly known as **Dynamic Suite Composition** is now referred to as **Connection Groups** in App-V 5.0. For more information about using Connection Groups see [Managing Connection Groups](managing-connection-groups.md).

## Licensing and Metering Functionality


The application and licensing functionality has been removed in App-V 5.0. The actual license positions in your environment depend on the specific software title license and usage rights granted by the associated license terms.

## File and Application Cache


There is no file or application cache available with App-V 5.0.






## Related topics


[About App-V 5.0](about-app-v-50.md)

 

 





