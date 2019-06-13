---
title: How to Configure the Virtual Machine Setup for a MED-V Workspace
description: How to Configure the Virtual Machine Setup for a MED-V Workspace
author: dansimp
ms.assetid: 50bbf58b-842c-4b63-bb93-3783903f6c7d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Configure the Virtual Machine Setup for a MED-V Workspace


All virtual machine setup configuration settings are configured in the **Policy** module, on the **VM Setup** tab.

## How to Configure the Virtual Machine Setup for a Persistent MED-V Workspace


**To configure the virtual machine setup for a persistent MED-V workspace**

1.  Click a persistent MED-V workspace to be configured.

2.  In the **Persistent VM Setup** section, configure the properties as described in the following table.

    **Note**  
    The persistent VM setup properties are enabled only for a persistent MED-V workspace.



3.  On the **Policy** menu, select **Commit**.

**Persistent VM Setup Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Run VM Setup</p></td>
<td align="left"><p>Select this check box to run a setup script the first time the MED-V workspace is run.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Script Editor</p></td>
<td align="left"><p>Click to configure the setup script. For more information, see <a href="how-to-set-up-script-actions.md" data-raw-source="[How to Set Up Script Actions](how-to-set-up-script-actions.md)">How to Set Up Script Actions</a>.</p>
<div class="alert">
<strong>Note</strong><br/><p>This button is enabled only when <strong>Run VM Setup script</strong> is selected.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Message displayed when script is running</p></td>
<td align="left"><p>A message to be displayed while the script is running. If left blank, the default message is displayed.</p>
<div class="alert">
<strong>Note</strong><br/><p>This field is enabled only when <strong>Run VM Setup script</strong> is checked.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



## How to Configure the Virtual Machine Setup for a Revertible MED-V Workspace


**To configure the virtual machine setup for a revertible MED-V workspace**

1.  Click a revertible MED-V workspace to configure.

2.  In the **Revertible VM Setup** section, configure the properties as described in the following table.

    **Note**  
    The revertible VM setup properties are enabled only for a revertible MED-V workspace.



3.  On the **Policy** menu, select **Commit**.

**Revertible VM Setup Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Rename the VM based on the computer name pattern</p></td>
<td align="left"><p>Select this check box to assign a unique name to each computer using the MED-V workspace so that you can differentiate between multiple computers using the same MED-V workspace.</p>
<p>For more information on configuring computer image names, see <a href="how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md" data-raw-source="[How to Configure VM Computer Name Pattern Properties](how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md)">How to Configure VM Computer Name Pattern Properties</a>.</p></td>
</tr>
</tbody>
</table>



## Related topics


[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

[Examples of Virtual Machine Configurations](examples-of-virtual-machine-configurationsv2.md)









