---
title: Deployment Troubleshooting
description: Deployment Troubleshooting
author: levinec
ms.assetid: 9ee980f2-4e77-4020-9f0e-8c2ffdc390ad
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deployment Troubleshooting


This topic includes information to help you troubleshoot deployment issues in Microsoft Enterprise Desktop Virtualization (MED-V) 2.0.

## Troubleshooting Issues in MED-V Deployment


The following issue might occur when you deploy MED-V. The solution helps troubleshoot this issue.

**Problems Occur if Installing MED-V for Current User Only.** MED-V only supports the installation of the MED-V Workspace Packager, the MED-V Host Agent, and the MED-V workspace for all users. Installing for the current user only causes failures in the installation of the components and in the setup of the MED-V workspace.

**Solution**

Never use the option **ALLUSERS=””** when installing the MED-V components.

**MED-V Requires Exclusive Use of the Virtualization Stack.** Only one virtualization stack can be run at a time on a computer. Windows Virtual PC must use the virtual stack, and MED-V depends on Windows Virtual PC. Therefore, if you try to deploy or use MED-V when other applications are running that use the virtual stack, MED-V cannot run or be successfully installed.

**Solution**

Close any application that is running that uses the virtualization stack before you install or run MED-V.

**Shortcuts Remain after Uninstall.** By default, when you uninstall MED-V, shortcuts in the end user’s **Start** menu are removed. However, in certain situations, such as for end users who are running roaming profiles, shortcuts to MED-V published applications remain in the end user’s **Start** menu.

**Solution**

To manually delete the remaining shortcuts on the **Start** menu, right-click the shortcuts, and then click **Remove**.

**Disable Logon Message Group Policy Setting in the MED-V Workspace.** If the Windows XP logon message is enabled in the MED-V workspace, the end user must log on every time they want to open a MED-V virtual application. This creates a poor user experience.

**Solution**

Disable the following Group Policy settings in the MED-V virtual machine:

**Interactive logon: Message text for users attempting to log on**

**Interactive logon: Message title for users attempting to log on**

## Related topics


[Operations Troubleshooting](operations-troubleshooting-medv2.md)

 

 





