---
title: How to deploy App-V 5.0 Packages Using Electronic Software Distribution
description: How to deploy App-V 5.0 Packages Using Electronic Software Distribution
author: dansimp
ms.assetid: 08e5e05b-dbb8-4be7-b2d8-721ef627da81
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to deploy App-V 5.0 Packages Using Electronic Software Distribution


You can use an electronic software distribution (ESD) system to deploy App-V 5.0 virtual applications to App-V clients. For details, see the documentation available with the ESD you are using.

For component requirements and options for using an ESD to deploy App-V packages, see [Planning to Deploy App-V 5.0 with an Electronic Software Distribution System](planning-to-deploy-app-v-50-with-an-electronic-software-distribution-system.md).

Use one of the following methods to publish packages to App-V client computers with an ESD:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Functionality provided by a third-party ESD</p></td>
<td align="left"><p>Use the functionality in a third-party ESD.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Stand-alone Windows Installer</p></td>
<td align="left"><p>Install the application on the target client computer by using the associated Windows Installer (.msi) file that is created when you initially sequence an application. The Windows Installer file contains the associated App-V 5.0 package file information used to configure a package and copies the required package files to the client.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PowerShell</p></td>
<td align="left"><p>Use PowerShell cmdlets to deploy virtualized applications. For more information about using PowerShell and App-V 5.0, see <a href="administering-app-v-by-using-powershell.md" data-raw-source="[Administering App-V by Using PowerShell](administering-app-v-by-using-powershell.md)">Administering App-V by Using PowerShell</a>.</p></td>
</tr>
</tbody>
</table>

 

**To deploy App-V 5.0 packages by using an ESD**

1.  Install the App-V 5.0 Sequencer on a computer in your environment. For more information about installing the sequencer, see [How to Install the Sequencer](how-to-install-the-sequencer-beta-gb18030.md).

2.  Use the App-V 5.0 Sequencer to create virtual application. For information about creating a virtual application, see [Creating and Managing App-V 5.0 Virtualized Applications](creating-and-managing-app-v-50-virtualized-applications.md).

3.  After you create the virtual application, deploy the package by using your ESD solution.

    If you are using System Center Configuration Manager, start by reviewing [Introduction to Application Management in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=281816) for information about using App-V 5.0 and System Center 2012 Configuration Manager.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





