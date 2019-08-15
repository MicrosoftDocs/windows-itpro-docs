---
title: Planning for Migration from Previous Versions
description: Planning for Migration from Previous Versions
author: eavena
ms.assetid: 62967bf1-542f-41b0-838f-c62f3430ac73
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning for Migration from Previous Versions


Before attempting to upgrade to Microsoft Application Virtualization 4.5 or later versions, any version prior to 4.1 must be upgraded to version 4.1. You should plan to upgrade your clients first, and then upgrade the server components. Clients that have been upgraded to 4.5 will continue to work with Application Virtualization servers that have not yet been upgraded. Earlier versions of the client are not supported on servers that have been upgraded to 4.5. For more information about upgrading the system components, see [Application Virtualization Deployment and Upgrade Considerations](application-virtualization-deployment-and-upgrade-considerations.md).

To help ensure a successful migration, the Application Virtualization system components should be upgraded in the following order:

1.  **Microsoft Application Virtualization Clients.** For step-by-step upgrade instructions, see [How to Upgrade the Application Virtualization Client](how-to-upgrade-the-application-virtualization-client.md).

2.  **Microsoft Application Virtualization Servers and Database.** For step-by-step upgrade instructions, see [How to Upgrade the Servers and System Components](how-to-upgrade-the-servers-and-system-components.md).

    **Note**  
    If you have more than one server sharing access to the Application Virtualization database, all those servers must be taken offline while the database is being upgraded. You should follow your normal business practices for the database upgrade, but it is highly advisable that you test the database upgrade by using a backup copy of the database first on a test server. Then, you should select one of the servers for the first upgrade, which will upgrade the database schema. After the production database has been successfully upgraded, you can upgrade the other servers.

     

3.  **Microsoft Application Virtualization Management Web Service.** This step applies only if the Management Web Service is on a separate server, which would require that you run the server installer program on that separate server to upgrade the Web service. Otherwise, the previous server upgrade step will automatically upgrade the Management Web Service.

4.  **Microsoft Application Virtualization Management Console.** This step applies only if the Management Console is on a separate computer, which would require that you run the server installer program on that separate computer to upgrade the console. Otherwise, the previous server upgrade step will upgrade the Management Console.

5.  **Microsoft Application Virtualization Sequencer.** For step-by-step instructions, see [How to Install the Application Virtualization Sequencer](how-to-install-the-application-virtualization-sequencer.md). Any virtual application packages sequenced in version 4.2 will not have to be re-sequenced for use with version 4.5. However, you should consider upgrading the virtual packages to the Microsoft Application Virtualization 4.5 format if you would like to apply default access control lists (ACLs) or generate a Windows Installer file. This is a simple process and requires only that the existing virtual application package be opened and saved with the 4.5 Sequencer. This can be automated by using the Application Virtualization Sequencer command-line interface.

## <a href="" id="app-v-4-6-client-package-support-"></a>App-V 4.6 Client Package Support


You can deploy packages created in previous versions of App-V to App-V 4.6 Clients. However, you must modify the associated **.osd** file so that it includes the appropriate operating system and chip architecture information. Use the following values.

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

 

To run a newly created 32-bit package, you must sequence the application on a computer running a 32-bit operating system with the App-V 4.6 Sequencer installed. After you have sequenced the application, in the Sequencer console, select the **Deployment** tab and then specify the appropriate operating system and chip architecture as required.

**Important**  
Applications sequenced on a computer running a 64-bit operating system must be deployed to computers running a 64-bit operating system. New 32-bit packages created by using the App-V 4.6 Sequencer will not run on computers running the App-V 4.5 Client.

 

To run new 64-bit packages on the App-V 4.6 Client, you must sequence the application on a computer running the App-V 4.6 Sequencer and that is running a 64-bit operating system. After you have sequenced the application, in the Sequencer console, select the **Deployment** tab and then specify the appropriate operating system and chip architecture as required.

The following table lists which client versions will run packages created by using the various versions of the Sequencer.

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Sequenced by using the App-V 4.2 Sequencer</th>
<th align="left">Sequenced by using the App-V 4.5 Sequencer</th>
<th align="left">Sequenced by using the 32-bit App-V 4.6 Sequencer</th>
<th align="left">Sequenced by using the 64-bit App-V 4.6 Sequencer</th>
<th align="left">Sequenced by using the 32-bit App-V 4.6 SP1 Sequencer</th>
<th align="left">Sequenced by using the 64-bit App-V 4.6 SP1 Sequencer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4.2 Client</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
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
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4.6 Client (32-bit)</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.6 Client (64-bit)</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4.6 SP1 Client</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.6 SP1 Client (64-bit)</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
</tbody>
</table>

 

¹Applies to all versions of the App-V 4.5 Client, including App-V 4.5, App-V 4.5 CU1 and App-V 4.5 SP1.

## Additional Migration Considerations


One of the features of the App-V 4.5 Sequencer is the ability to create Windows Installer files (.msi) as control points for virtual application package interoperability with electronic software distribution (ESD) systems such as Microsoft System Center Configuration Manager. Previous Windows Installer files created with the .msi tool for Application Virtualization that were installed on a App-V 4.1 or 4.2 Client that is subsequently upgraded to 4.5 continue to work, although they cannot be installed on the 4.5 Client. However, they cannot be removed or upgraded unless they are upgraded in the 4.5 Sequencer. The original pre-4.5 virtual application package would need to be opened in the 4.5 Sequencer and then saved as a Windows Installer File.

**Note**  
If the App-V 4.2 Client has already been upgraded to 4.5, it is possible to use script as a workaround to preserve the 4.2 packages on 4.5 clients and allow them to be managed. This script must copy two files, msvcp71.dll and msvcr71.dll, to the App-V installation folder and set the following registry key values under the registry key \[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\SoftGrid\\4.5\\Client\\Configuration\]:

"ClientVersion"="4.2.1.20"

"GlobalDataDirectory"="C:\\\\Documents and Settings\\\\All Users\\\\Documents\\\\" (a globally writeable location)

 

Windows Installer files generated by the App-V 4.5 Sequencer display the error message "This package requires Microsoft Application Virtualization Client 4.5 or later" when you try to run them on an App-V 4.6 Client. Open the old package with either the App-V 4.5 SP1 Sequencer or the App-V 4.6 Sequencer and generate a new .msi for the package.

Any 4.2 reports that were created and saved will be overwritten when the server is upgraded to 4.5. If you need to keep these reports, you must save a backup copy of the SftMMC.msc file located in the SoftGrid Management Console folder on the server and use that copy to replace the new SftMMC.msc that is installed during the upgrade.

For additional information about upgrading from previous versions, see [Upgrading to Microsoft Application Virtualization 4.5 FAQ](https://go.microsoft.com/fwlink/?LinkId=120358) (https://go.microsoft.com/fwlink/?LinkId=120358).

## Related topics


[Planning for Application Virtualization System Deployment](planning-for-application-virtualization-system-deployment.md)

 

 





