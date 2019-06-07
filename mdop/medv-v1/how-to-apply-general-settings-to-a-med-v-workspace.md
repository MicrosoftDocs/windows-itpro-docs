---
title: How to Apply General Settings to a MED-V Workspace
description: How to Apply General Settings to a MED-V Workspace
author: dansimp
ms.assetid: 6152dced-e301-4fa2-bfa0-aecf3c23f23a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Apply General Settings to a MED-V Workspace


The general settings enable you to configure the basic user experience when working with a MED-V workspace, by defining whether the MED-V workspace will appear in seamless integration or full desktop mode. Seamless integration includes legacy applications in the host desktop so that they appear as if they are installed directly on the host. Full desktop presents the desktop of the MED-V workspace operating system in a separate window on the host.

All general settings are configured in the **Policy** module, on the **General** tab.

**To apply general settings to a MED-V workspace**

1.  Click the MED-V workspace to configure.

2.  Configure the general properties as described in the following table.

3.  On the **Policy** menu, select **Commit**.

**General Workspace Properties**

Property
Description
*Workspace Properties*

Name

The name of the MED-V workspace.

**Warning**  
Do not rename an existing MED-V workspace while it is running on a client computer.

 

Description

Description of the MED-V workspace, which can include the content or status of the MED-V workspace and any other useful information.

**Note**  
The description is for administrator use and has no impact on the policy.

 

Support contact info

The contact information for technical support. The information entered will be displayed in the support contact information screen that can be accessed from the MED-V client notification area.

*Workspace UI*

Seamless Integration

Select this option for the MED-V workspace windows, taskbar, and notification area icons to integrate seamlessly into the host desktop.

Draw a frame around each workspace window

When using seamless integration, select this option to create a colored border around all applications running within the MED-V workspace and a colored background for all taskbar button icons. In the **Frame color** field, select the color.

Full Desktop

Select this option to display the MED-V workspace as the entire desktop, without integrating with the host.

*Host Verification*

Command line

Type a command line to run on the host before starting the MED-V workspace.

Do not start the Workspace if the verification fails (exit code is not '0')

Select this check box if you are using a command line and want to start the MED-V workspace only if the script is completed successfully.

 

A command line can be run on the host prior to starting the MED-V workspace.

**To run a command line before starting a MED-V workspace**

1.  In the **Command line** field, enter a command line.

2.  To start the MED-V workspace only if the command line was successful, select the **Do not start the workspace if the verification fails** check box.

## Related topics


[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)

 

 





