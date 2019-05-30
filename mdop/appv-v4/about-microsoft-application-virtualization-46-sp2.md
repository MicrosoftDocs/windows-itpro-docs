---
title: About Microsoft Application Virtualization 4.6 SP2
description: About Microsoft Application Virtualization 4.6 SP2
author: dansimp
ms.assetid: 1429e314-9c38-472b-8687-3bed6cf0015c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# About Microsoft Application Virtualization 4.6 SP2


Microsoft Application Virtualization (App-V) 4.6 SP2 provides several enhancements and new features, which are described in this topic.

**Caution**  
This topic describes how to change the Windows registry by using Registry Editor. If you change the Windows registry incorrectly, you can cause serious problems that might require you to reinstall Windows. You should make a backup copy of the registry files (System.dat and User.dat) before you change the registry. Microsoft cannot guarantee that the problems that might occur when you change the registry can be resolved. Change the registry at your own risk.

 

**Support for Windows 8 and Windows Server 2012**

App-V 4.6 SP2 adds support for Windows 8 and Windows Server 2012 Remote Desktop Services.

**Support for coexistence with App-V 5.0 client**

App-V 4.6 SP2 provides support for coexistence with the Microsoft Application Virtualization 5.0 client. Review the App-V 5.0 documentation for instructions on how to configure the App-V 5.0 client for coexistence with the App-V 4.6 SP2 client. For more information about App-V 5.0, see [Application Virtualization 5](https://go.microsoft.com/fwlink/?LinkId=267599) on TechNet.

**Ability to virtualize Adobe Reader X with Protected Mode**

You can virtualize Adobe Reader X with its Protected Mode feature turned on by using the following procedures. Previously you had to disable Protected Mode in order to virtualize Adobe Reader X.

Before launching the App-V Sequencer, create the following registry value under HKEY\_LOCAL\_MACHINE\\SOFTWARE \\Microsoft\\SoftGrid\\4.5\\SystemGuard\\Overrides:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Name</p></td>
<td align="left"><p>Type</p></td>
<td align="left"><p>Data</p></td>
<td align="left"><p>Description</p></td>
</tr>
<tr class="even">
<td align="left"><p>EnableVFSPassthrough</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>1</p></td>
<td align="left"><p>Set this value to <strong>1</strong> in order to start Adobe Reader X in Protected Mode during the launch phase.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
On a computer running a 64-bit operating system, create the registry value under HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\SoftGrid\\4.5\\SystemGuard\\Overrides.

 

For each OSD-file in your Adobe Reader X package, add the following items under the &lt;POLICIES&gt; element:

`<VIRTUAL_FILE_SYSTEM_PASS_THROUGH>TRUE</VIRTUAL_FILE_SYSTEM_PASS_THROUGH>`

`<VIRTUAL_REGISTRY_PASS_THROUGH>TRUE</VIRTUAL_REGISTRY_PASS_THROUGH>`

`<ENFORCE_ACLS_ON_VREG_MODIFY>TRUE</ENFORCE_ACLS_ON_VREG_MODIFY>`

**New Sequencer command-line parameter**

When you create a Package Accelerator (PA) through the Sequencer GUI, you can select an RTF or TXT file that provides packaging and deployment guidance to the administrators who will apply the Package Accelerator. This functionality is now available using the Sequencer CLI.

`/ACCELERATORDESCRIPTIONFILE:PathToDescriptionFile`

Specify a path to an RTF or TXT file that provides packaging and deployment guidance when creating a Package Accelerator.

**Microsoft Application Error Reporting no longer needs to be installed**

When you are installing the App-V 4.6 SP2 client by using setup.msi, you no longer need to install Microsoft Application Error Reporting (dw20shared.msi). App-V 4.6 SP2 now uses Microsoft Error Reporting. For more information, see [How to Install the App-V Client by Using Setup.msi](https://go.microsoft.com/fwlink/?LinkId=267237).

**Customer feedback and hotfix rollup**

App-V 4.6 SP2 includes a rollup of fixes to address issues found since the App-V 4.6 SP1 release. App-V 4.6 SP2 contains the latest fixes up to and including Microsoft Application Virtualization 4.6 SP1 Hotfix 6.

## In This Section


<a href="" id="app-v-4-6-sp2-release-notes"></a>[App-V 4.6 SP2 Release Notes](https://go.microsoft.com/fwlink/?LinkId=267600)  
Provides the most up-to-date information about known issues with App-V 4.6 SP2.

 

 





