---
title: How to Install the Sequencer
description: How to Install the Sequencer
author: dansimp
ms.assetid: 5e8f1696-9bc0-4f44-8cb7-b809b2daae10
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the Sequencer


Use the following procedure to install the Microsoft Application Virtualization (App-V) 5.1 sequencer. The computer that will run the sequencer must not be running any version of the App-V 5.1 client.

Upgrading a previous installation of the App-V sequencer is not supported.

**Important**  
For a full list of the sequencer requirements see sequencer sections of [App-V 5.1 Prerequisites](app-v-51-prerequisites.md) and [App-V 5.1 Supported Configurations](app-v-51-supported-configurations.md).

 

You can also use the command line to install the App-V 5.1 sequencer. The following list displays information about options for installing the sequencer using the command line and **appv\_sequencer\_setup.exe**:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>/INSTALLDIR</p></td>
<td align="left"><p>Specifies the installation directory.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/CEIPOPTIN</p></td>
<td align="left"><p>Enables participation in the Microsoft Customer Experience Improvement Program.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/Log</p></td>
<td align="left"><p>Specifies where the installation log will be saved, the default location is <strong>%Temp%</strong>. For example, <strong>C:\ Logs \ log.log</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/q</p></td>
<td align="left"><p>Specifies a quiet or silent installation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/Uninstall</p></td>
<td align="left"><p>Specifies the removal of the sequencer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/ACCEPTEULA</p></td>
<td align="left"><p>Accepts the license agreement. This is required for an unattended installation. Example usage: <strong>/ACCEPTEULA</strong> or <strong>/ACCEPTEULA=1</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/LAYOUT</p></td>
<td align="left"><p>Specifies the associated layout action. It also extracts the Windows Installer (.msi) and script files to a folder without installing App-V 5.1. No value is expected.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/LAYOUTDIR</p></td>
<td align="left"><p>Specifies the layout directory. Requires a string value. Example usage: <strong>/LAYOUTDIR=”C:\Application Virtualization Client”</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/? Or /h or /help</p></td>
<td align="left"><p>Displays associated help.</p></td>
</tr>
</tbody>
</table>

 

**To install the App-V 5.1 sequencer**

1.  Copy the App-V 5.1 sequencer installation files to the computer on which it will be installed. Double-click **appv\_sequencer\_setup.exe** and then click **Install**.

2.  On the **Software License Terms** page, you should review the license terms. To accept the license terms select **I accept the license terms.** Click **Next**.

3.  On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates from running select **I don’t want to use Microsoft Update**. Click **Next**.

4.  On the **Customer Experience Improvement Program** page, to participate in the program select **Join the Customer Experience Improvement Program**. This will allow information to be collected about how you are using App-V 5.1. If you don’t want to participate in the program select **I don’t want to join the program at this time**. Click **Install**.

5.  To open the sequencer, click **Start** and then click **Microsoft Application Virtualization Sequencer**.

**To troubleshoot the App-V 5.1 sequencer installation**

-   For more information regarding the sequencer installation, you can view the error log in the **%temp%** folder. To review the log files, click **Start**, type **%temp%**, and then look for the **appv\_ log**.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v51.md)

 

 





