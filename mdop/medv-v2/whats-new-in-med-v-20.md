---
title: What's New in MED-V 2.0
description: What's New in MED-V 2.0
author: levinec
ms.assetid: 53b10bff-2b6f-463b-bdc2-5edc56526792
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# What's New in MED-V 2.0


Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 has evolved the application compatibility support for Windows 7 and removed functionality that is not required for this scenario. For example, features such as encryption of the MED-V workspace, the centralized MED-V server, and MED-V workspace trim transfer have been removed.

## Changes in Standard Functionality


This section discusses the key areas where MED-V 2.0 functionality has changed.

### MED-V Workspace Creation

The virtual hard disk used for the MED-V workspace is now created in Windows Virtual PC. The methods that are used to create the MED-V workspace include installing Windows XP SP3, updating the operating system, and preparing it to be managed through software management infrastructure.

The offline management and trim transfer functionality were removed, in addition to the proprietary MED-V workspace encryption and compression functionality. When you create a MED-V workspace, an administrator should prepare and configure appropriate applications and management tools in the image instead of using the virtual machine preparation tool that is provided in MED-V 1.0.

Running Sysprep on the MED-V image is now required and validated during the packaging of the MED-V workspace. The MED-V Workspace Packager provides a graphical user interface (GUI) that guides the administrator through the packaging process. The console from MED-V 1.0 was removed together with the functionality of managing images, managing MED-V workspace profiles, and the requirement to stage and encrypt MED-V workspaces.

### MED-V Workspace Deployment

To deploy a MED-V workspace, an administrator is now able to take advantage of their electronic software distribution tools. The client-pull method available in MED-V 1.0 was removed and the MED-V workspace is now delivered by using methods outside MED-V. Administrators can treat MED-V workspaces as they would any other application package and can schedule deployments and installations of MED-V by using their existing tools and processes. MED-V installations can be deployed silently and can easily be managed inside an existing software distribution infrastructure.

### MED-V Workspace Management

The MED-V workspace in MED-V 2.0 is based on a Windows Virtual PC virtual hard disk. MED-V has extended the capabilities that Windows Virtual PC provides by improving the seamless experience without requiring encryption or special tools to access the MED-V workspace.

After MED-V is deployed to a workstation, the MED-V workspace can be opened in full-screen mode by using Windows Virtual PC. This new functionality removed the requirement for policies that set a preference for seamless or full-screen modes and also removed the need to force full-screen for diagnostics and troubleshooting.

Publishing applications to the MED-V workspace is no longer performed with profiles and by manually entering the path to applications. Instead, it occurs automatically as applications are installed on the guest. The central image repository that included versions of the images that were delivered through trim transfer is removed. Instead, MED-V enables administrators to manage the MED-V workspace as they would a physical computer, by letting applications and updates be distributed without the complexity of a dedicated MED-V infrastructure.

## Changes in MED-V Features


Several key areas of MED-V 2.0 reflect improvements or additions to the following features.

### MED-V Workspace Creation

MED-V workspaces must be created by using Windows Virtual PC. Existing Virtual PC 2007 images must be migrated. The virtual machine Prep tool is not included in MED-V 2.0 and administrators should configure, update, and optimize their images according to the MED-V 2.0 Help file. Running Sysprep on the MED-V image is a required step and must be performed before packaging.

### MED-V Workspace Packaging

Windows PowerShell is the foundation of the MED-V Workspace Packager. This functionality replaces some former console abilities and functionality that managed centralized functions of MED-V. The MED-V Workspace Packager merely packages the virtual hard disk with the appropriate settings and image so that it can be easily deployed by administrators. Advanced features are provided by using Windows PowerShell.

### MED-V Workspace Distribution

Dedicated server infrastructure is no longer required for MED-V 2.0 and the client pull method to deploy MED-V workspaces was removed. MED-V workspaces are now deployed using your electronic software distribution infrastructure and can be stored on common shares that are used for other installation packages.

### First Time Setup

The first time setup process is now integrated with the standard imaging convention of Sysprep. The MED-V workspace first time setup process can dynamically apply settings specified in the MED-V Workspace Packager to the image as it begins Mini-Setup. The scripting tool in the console was removed and the first time setup process is now based on options that are configured in the MED-V Workspace Packager by the administrator.

### Application Publishing

Administrators can install applications on the MED-V image either before packaging, after the MED-V workspace is deployed, or by using a combination of both. MED-V no longer examines MED-V workspace policy to publish applications, but instead refers to what is actually installed on the guest. As applications are installed on the guest, they are automatically detected and published to the host **Start** menu and are ready to be started by the end user.

### URL Redirection

MED-V 2.0 provides seamless host-to-guest web address redirection based on the policies configured and managed by the administrator. After a URL is redirected to the guest browser, the default experience is to attempt to limit the user to that redirected site. This minimizes the browsing activities that a user can perform that are not intended by the administrator. Guest-to-host browser redirection was removed.

### Troubleshooting

MED-V now takes advantage of standard host-based processes for troubleshooting. Because the MED-V workspace is no longer encrypted, it can be opened in full-screen mode within the Windows Virtual PC console, where it can be viewed and worked with as a standard workstation. In addition, the logs are no longer encrypted locally and logged centrally. MED-V now makes extensive use of the local event logs, and the logging level of the output, from informational to debug levels, can be easily configured. Finally, a troubleshooting toolkit is now provided so administrators and helpdesk personnel can have a graphical, aggregated view of all the troubleshooting options, and they can effortlessly select the activities that most suit their needs.

MED-V is no longer run as a system service. Instead, it is run as user-owned processes, and it only runs when a user is logged on. Functionality that was formerly provided by the system-owned service is now provided in the user-side processes.

## Related topics


[Deployment of MED-V](deployment-of-med-v.md)

[Operations for MED-V](operations-for-med-v.md)

 

 





