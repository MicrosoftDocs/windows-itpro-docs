---
title: Command-Line Options for MED-V Installation Files
description: Command-Line Options for MED-V Installation Files
author: dansimp
ms.assetid: 7b8cd3e4-1d09-44a0-b690-f85b0d0a6b02
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Command-Line Options for MED-V Installation Files


When you install or uninstall Microsoft Enterprise Desktop Virtualization (MED-V) 2.0, you have the option of running the installation files at the command prompt. This section describes different options that you can specify when you install or uninstall MED-V at the command prompt.

### Command-Line Arguments

You can use the following command-line arguments together with their respective MED-V installation files.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Installation File</th>
<th align="left">Argument</th>
<th align="left">Accepted Values</th>
<th align="left">Type</th>
<th align="left">Description</th>
<th align="left">Default</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Host Agent</p></td>
<td align="left"><p>MEDVDIR</p></td>
<td align="left"><p>&lt;install path&gt;</p></td>
<td align="left"><p>Installation</p></td>
<td align="left"><p>Change installed directory</p></td>
<td align="left"><p>Installation goes to Program Files\Microsoft Enterprise Desktop Virtualization.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MED-V Workspace Packager</p></td>
<td align="left"><p>MEDVDIR</p></td>
<td align="left"><p>&lt;install path&gt;</p></td>
<td align="left"><p>Installation</p></td>
<td align="left"><p>Change installed directory</p></td>
<td align="left"><p>Installation goes to Program Files\Microsoft Enterprise Desktop Virtualization.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MED-V workspace</p></td>
<td align="left"><p>INSTALLDIR</p></td>
<td align="left"><p>&lt;install path&gt;</p></td>
<td align="left"><p>Installation</p></td>
<td align="left"><p>Change installed directory</p></td>
<td align="left"><p>Installation goes to ProgramData\Microsoft\Medv\Workspace.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MED-V workspace</p></td>
<td align="left"><p>OVERWRITE VHD</p></td>
<td align="left"><p>0 or 1</p></td>
<td align="left"><p>Installation</p></td>
<td align="left"><p>Fail installation if VHD exists(0) or overwrite existing VHD(1).</p></td>
<td align="left"><p>Overwrite does not occur and installation fails if a virtual hard disk (VHD) already exists.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MED-V workspace</p></td>
<td align="left"><p>SUPPRESSMEDVLAUNCH</p></td>
<td align="left"><p>0 or 1</p></td>
<td align="left"><p>Installation</p></td>
<td align="left"><p>Start(0) or do not start(1) MED-V after MED-V workspace is installed.</p></td>
<td align="left"><p>If the MED-V workspace was installed with the user interface (UI), a check box on the <strong>Finish</strong> page controls whether to start MED-V.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MED-V workspace</p></td>
<td align="left"><p>DELETEDIFFDISKS</p></td>
<td align="left"><p>0 or 1</p></td>
<td align="left"><p>Uninstallation</p></td>
<td align="left"><p>Keep(0) or delete(1) VHDs created by MED-V</p></td>
<td align="left"><p>No VHDs are deleted.</p></td>
</tr>
</tbody>
</table>

 

### Examples of Command-Line Arguments

The following example installs the MED-V workspace created by the MED-V workspace Packager. The installation file creates a log file in the Temp directory and runs the installation file in quiet mode, but does not start the MED-V Host Agent on completion. The installation file overwrites any VHD left behind by a previous installation that has the same name.

``` syntax
setup.exe /l* %temp%\medv-workspace-install.log /qn SUPPRESSMEDVLAUNCH=1 OVERWRITEVHD=1
```

The following example uninstalls the MED-V workspace that was previously installed. The installation file creates a log file in the Temp directory and runs the installation file in quiet mode. The installation file deletes any remaining virtual hard disk files from the file system.

``` syntax
%ProgramData%\Microsoft\Medv\Workspace\uninstall.exe /l* %temp%\medv-workspace-uninstall.log /qn DELETEDIFFDISKS=1
```

## Related topics


[Deploy the MED-V Components](deploy-the-med-v-components.md)

[Technical Reference for MED-V](technical-reference-for-med-v.md)

 

 





