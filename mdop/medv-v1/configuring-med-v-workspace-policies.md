---
title: Configuring MED-V Workspace Policies
description: Configuring MED-V Workspace Policies
author: dansimp
ms.assetid: 0eaed981-cbf3-4b16-a4b7-4705c5705dc7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Configuring MED-V Workspace Policies


A MED-V workspace policy is a group of configurable settings that define how the virtualized environment and applications perform on the host machine. The topics in this section describe all the configurable settings in the MED-V workspace policy as well as how these settings influence the MED-V workspace.

The following MED-V workspace types are available:

-   **Persistent**—In a persistent MED-V workspace, all changes and additions the user makes to the MED-V workspace are saved in the MED-V workspace between sessions. Additionally, a persistent MED-V workspace is generally used in a domain environment.

-   **Revertible**—In a revertible MED-V workspace, at the completion of each session (that is, when the MED-V workspace is stopped), the MED-V workspace reverts to its original state during deployment. No changes or additions that the user made are saved on the MED-V workspace between sessions. A revertible MED-V workspace cannot be used in a domain environment.

It is important to decide on the type of MED-V workspace you are creating before deploying the MED-V workspace, because it is not recommended to reconfigure the type of MED-V workspace after a policy has been deployed to users.

**Note**  
When configuring a policy, a warning symbol appears next to mandatory fields that are not filled in. If a mandatory field is not filled in, the symbol appears on the tab as well.

 

## In This Section


<a href="" id="how-to-apply-general-settings-to-a-med-v-workspace"></a>[How to Apply General Settings to a MED-V Workspace](how-to-apply-general-settings-to-a-med-v-workspace.md)  
Describes the general settings of a MED-V workspace, and how to apply them to a policy.

<a href="" id="how-to-apply-virtual-machine-settings-to-a-med-v-workspace"></a>[How to Apply Virtual Machine Settings to a MED-V Workspace](how-to-apply-virtual-machine-settings-to-a-med-v-workspace.md)  
Describes the virtual machine settings for a MED-V workspace, and how to apply them to a policy.

<a href="" id="how-to-configure-a-domain-user-or-group"></a>[How to Configure a Domain User or Group](how-to-configure-a-domain-user-or-groupmedvv2.md)  
Describes how to configure domain users and groups.

<a href="" id="how-to-configure-published-applications"></a>[How to Configure Published Applications](how-to-configure-published-applicationsmedvv2.md)  
Describes published applications and menus, and how to apply them to a policy.

<a href="" id="how-to-configure-web-settings-for-a-med-v-workspace"></a>[How to Configure Web Settings for a MED-V Workspace](how-to-configure-web-settings-for-a-med-v-workspace.md)  
Describes the Web settings available for a MED-V workspace, and how to apply them to a policy.

<a href="" id="how-to-configure-the-virtual-machine-setup-for-a-med-v-workspace"></a>[How to Configure the Virtual Machine Setup for a MED-V Workspace](how-to-configure-the-virtual-machine-setup-for-a-med-v-workspace.md)  
Describes the virtual machine setup for a MED-V workspace, and how to apply it to a policy.

<a href="" id="how-to-apply-network-settings-to-a-med-v-workspace"></a>[How to Apply Network Settings to a MED-V Workspace](how-to-apply-network-settings-to-a-med-v-workspace.md)  
Describes the network settings of a MED-V workspace, and how to apply them to a policy.

<a href="" id="how-to-apply-performance-settings-to-a-med-v-workspace"></a>[How to Apply Performance Settings to a MED-V Workspace](how-to-apply-performance-settings-to-a-med-v-workspace.md)  
Describes the performance settings of a MED-V workspace, and how to apply them to a policy.

<a href="" id="how-to-import-and-export-a-policy"></a>[How to Import and Export a Policy](how-to-import-and-export-a-policy.md)  
Describes how to import and export a policy.

 

 





