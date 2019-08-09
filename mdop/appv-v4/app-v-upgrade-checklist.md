---
title: App-V Upgrade Checklist
description: App-V Upgrade Checklist
author: dansimp
ms.assetid: 64e317d2-d260-4b67-8a49-ba9ac513087a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V Upgrade Checklist


Before trying to upgrade to Microsoft Application Virtualization (App-V) 4.5 or later versions, any version earlier than App-V 4.1 must be upgraded to App-V 4.1. You should plan to upgrade clients first, and then upgrade the server components. App-V clients that have been upgraded to App-V 4.5 continue to work with App-V servers that have not yet been upgraded. Earlier versions of the client are not supported on servers that have been upgraded to App-V 4.5.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Step</th>
<th align="left">Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Upgrade the App-V clients.</p></td>
<td align="left"><p><a href="how-to-upgrade-the-application-virtualization-client.md" data-raw-source="[How to Upgrade the Application Virtualization Client](how-to-upgrade-the-application-virtualization-client.md)">How to Upgrade the Application Virtualization Client</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>Upgrade the App-V servers and database.</p>
<div class="alert">
<strong>Important</strong><br/><p>If you have more than one server sharing access to the App-V database, all those servers must be taken offline while the database is being upgraded. You should follow your regular business practices for the database upgrade, but we recommend that you test the database upgrade by using a backup copy of the database first on a test server. Then, you should select one of the servers for the first upgrade, which will upgrade the database schema. After the production database has been successfully upgraded, you can upgrade the App-V software on the other servers.</p>
</div>
<div>

</div></td>
<td align="left"><p><a href="how-to-upgrade-the-servers-and-system-components.md" data-raw-source="[How to Upgrade the Servers and System Components](how-to-upgrade-the-servers-and-system-components.md)">How to Upgrade the Servers and System Components</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Upgrade the App-V Management Web Service.</p>
<p>This step applies only if the Management Web Service is on a separate server, which would require that you run the server installer program on that separate server to upgrade the Management Web service. Otherwise, the previous server upgrade step will automatically upgrade the Management Web Service.</p></td>
<td align="left"><p><a href="how-to-upgrade-the-servers-and-system-components.md" data-raw-source="[How to Upgrade the Servers and System Components](how-to-upgrade-the-servers-and-system-components.md)">How to Upgrade the Servers and System Components</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>Upgrade the App-V Management Console.</p>
<p>This step applies only if the Management Console is on a separate computer, which would require that you run the server installer program on that separate computer to upgrade the console. Otherwise, the previous server upgrade step will upgrade the Management Console.</p></td>
<td align="left"><p><a href="how-to-upgrade-the-servers-and-system-components.md" data-raw-source="[How to Upgrade the Servers and System Components](how-to-upgrade-the-servers-and-system-components.md)">How to Upgrade the Servers and System Components</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Upgrade the App-V Sequencer.</p></td>
<td align="left"><p><a href="how-to-upgrade-the-application-virtualization-sequencer.md" data-raw-source="[How to Upgrade the Application Virtualization Sequencer](how-to-upgrade-the-application-virtualization-sequencer.md)">How to Upgrade the Application Virtualization Sequencer</a></p></td>
</tr>
</tbody>
</table>



## Additional Upgrade Considerations


-   Any virtual application packages sequenced in version 4.2 will not have to be sequenced again for use with version 4.5. However, you should consider upgrading the virtual packages to the Microsoft Application Virtualization 4.5 format if you want to apply default access control lists (ACLs) or generate a Windows Installer file. This is a simple process and requires only that the existing virtual application package be opened and saved with the App-V 4.5 Sequencer. This can be automated by using the App-VSequencer command-line interface. For more information, see [How to Create or Upgrade Virtual Applications Using the App-V Sequencer](how-to-create-or-upgrade-virtual-applications-using--the-app-v-sequencer.md)

-   One of the features of the 4.5 Sequencer is the ability to create Windows Installer (.msi) files as control points for virtual application package interoperability with electronic software distribution (ESD) systems, such as Microsoft System Center Configuration Manager 2007. Previous Windows Installer files created with the MSI tool for Application Virtualization that were installed on a App-V 4.1 or 4.2 client that is subsequently upgraded to App-V 4.5 will continue to work, although they cannot be installed on the App-V 4.5 client. However, they cannot be removed or upgraded unless they are upgraded in the App-V 4.5 Sequencer. The original App-V package earlier than 4.5 has to be opened in the App-V 4.5 Sequencer and then saved as a Windows Installer File.

    **Note**  
    If the App-V 4.2 Client has already been upgraded to App-V 4.5, it is possible to script a workaround to preserve the version 4.2 packages on version 4.5 clients and allow them to be managed. This script must copy two files, msvcp71.dll and msvcr71.dll, to the App-V installation folder and set the following registry key values under the registry key:\[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration\]:

    "ClientVersion"="4.2.1.20"

    "GlobalDataDirectory"="C:\\\\Documents and Settings\\\\All Users\\\\Documents\\\\" (a globally writeable location)



-   Windows Installer files generated by the App-V 4.5 Sequencer display the error message "This package requires Microsoft Application Virtualization Client 4.5 or later" when trying to run them on an App-V 4.6 Client. Open the old package with either the App-V 4.5 SP1 Sequencer or the App-V 4.6 Sequencer and generate a new .msi file for the package.

-   Any version 4.2 reports that were created and saved will be overwritten when the server is upgraded to version 4.5. If you have to keep these reports, you must save a backup copy of the SftMMC.msc file located in the SoftGrid Management Console folder on the server and use that copy to replace the new SftMMC.msc that is installed during the upgrade.

-   For additional information about upgrading from previous versions, see [Upgrading to Microsoft Application Virtualization 4.5 FAQ](https://go.microsoft.com/fwlink/?LinkId=120358) (https://go.microsoft.com/fwlink/?LinkId=120358).

## <a href="" id="app-v-4-6-client-package-support-"></a>App-V 4.6 Client Package Support


You can deploy packages created in previous versions of App-V to App-V 4.6 clients. However, you must modify the associated .osd file so that it includes the appropriate operating system and chip architecture information. The following values can be used:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">OS Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>&lt;OS VALUE=”Win2003TS”/&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;OS VALUE=”Win2003TS64”/&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;OS VALUE=”Win2008TS”/&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;OS VALUE=”Win2008TS64”/&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;OS VALUE=”Win2008R2TS64”/&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;OS VALUE=”Win7”/&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;OS VALUE=”Win764”/&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;OS VALUE=”WinVista”/&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;OS VALUE=”WinVista64”/&gt;</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;OS VALUE=”WinXP”/&gt;</p></td>
</tr>
<tr class="odd">
<td align="left"><p>&lt;OS VALUE=”WinXP64”/&gt;</p></td>
</tr>
</tbody>
</table>



To run a newly created 32-bit package, you must sequence the application on a computer running a 32-bit operating system with the App-V 4.6 Sequencer installed. After you have sequenced the application, in the Sequencer console, click the **Deployment** tab and then specify the appropriate operating system and chip architecture as required.

**Important**  
Applications sequenced on a computer running a 64-bit operating system must be deployed to computers running a 64-bit operating system. New 32-bit packages created by using the App-V 4.6 Sequencer do not run on computers running the App-V 4.5 client.



To run new 64-bit packages on the App-V 4.6 Client, you must sequence the application on a computer running the App-V 4.6 Sequencer and that is running a 64-bit operating system. After you have sequenced the application, in the Sequencer console, click the **Deployment** tab, and then specify the appropriate operating system and chip architecture as required.

The following table lists which client versions will run packages created by using the various versions of the sequencer.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Sequenced by using the App-V 4.2 Sequencer</th>
<th align="left">Sequenced by using the App-V 4.5 Sequencer</th>
<th align="left">Sequenced by using the 32-bit App-V 4.6 Sequencer</th>
<th align="left">Sequenced by using the 64-bit App-V 4.6 Sequencer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4.2 Client</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.5 Client ¹</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4.6 Client (32-bit)</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.6 Client (64-bit)</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
</tbody>
</table>



¹Applies to all versions of the App-V 4.5 client, including App-V 4.5, App-V 4.5 CU1, and App-V 4.5 SP1.









