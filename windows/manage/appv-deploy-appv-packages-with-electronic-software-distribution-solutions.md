---
title: How to deploy App-V Packages Using Electronic Software Distribution (Windows 10)
description: How to deploy App-V Packages Using Electronic Software Distribution
author: jamiejdt
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to deploy App-V Packages Using Electronic Software Distribution


You can use an electronic software distribution (ESD) system to deploy App-V virtual applications to App-V clients. For details, see the documentation available with the ESD you are using.

For component requirements and options for using an ESD to deploy App-V packages, see [Planning to Deploy App-V with an Electronic Software Distribution System](appv-planning-to-deploy-appv-with-electronic-software-distribution-solutions.md).

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
<td align="left"><p>Install the application on the target client computer by using the associated Windows Installer (.msi) file that is created when you initially sequence an application. The Windows Installer file contains the associated App-V package file information used to configure a package and copies the required package files to the client.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PowerShell</p></td>
<td align="left"><p>Use PowerShell cmdlets to deploy virtualized applications. For more information about using PowerShell and App-V, see [Administering App-V by Using PowerShell](appv-administering-appv-with-powershell.md).</p></td>
</tr>
</tbody>
</table>

 

**To deploy App-V packages by using an ESD**

1.  Install the App-V Sequencer on a computer in your environment. For more information about installing the sequencer, see [How to Install the Sequencer](appv-install-the-sequencer.md).

2.  Use the App-V Sequencer to create virtual application. For information about creating a virtual application, see [Creating and Managing App-V Virtualized Applications](appv-creating-and-managing-virtualized-applications.md).

3.  After you create the virtual application, deploy the package by using your ESD solution.

    If you are using System Center Configuration Manager, start by reviewing [Introduction to Application Management in Configuration Manager](http://go.microsoft.com/fwlink/?LinkId=281816) for information about using App-V and System Center 2012 Configuration Manager.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)

 

 





