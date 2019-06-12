---
title: How to Use the Differential SFT File
description: How to Use the Differential SFT File
author: eavena
ms.assetid: 607e30fd-2f0e-4e2f-b669-0b3f010aebb0
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Use the Differential SFT File


When sequencing an application, the Microsoft Application Virtualization (App-V) Sequencer creates SFT files (.sft) to store all of the virtual application’s files content and configuration information. In version 4.5 of App-V, the Differential SFT (.dsft) file has been introduced. After using the Sequencer to create an upgrade for an existing package, you can choose to generate this file to store only the differences between the original sequenced application package and the new version. It is therefore much smaller than the full SFT file would be for the new version of the application and reduces the impact of sending package updates over low-bandwidth network connections. However, its use is supported only in certain restricted situations. This feature was intended to be used specifically where you are using an electronic software distribution (ESD) system to manage a group of users with a local file server over a low-bandwidth connection and you are not using App-V streaming servers.

You do not need to use the Differential SFT file if you are using Configuration Manager 2007 to manage the users, because Configuration Manager has support for low-bandwidth deployments already built in. It is also not required if you are using Application Virtualization (App-V) Management or Streaming Servers with Active Upgrade because the client will retrieve only the differences between the old and new package versions.

The following procedure shows how to use the mkdiffpkg.exe that is included in the Sequencer installation to create the Differential SFT file, after completing the upgrade of the virtual application package, and to deploy the Differential SFT file. Completing this procedure helps ensure that if the package is somehow unloaded from the client computer, the next time the user tries to run the application, the client will fall back to the override URL, which is set to stream the full package V2.sft from the local file share. This will avoid any failure for the user when starting the application. If the entire client becomes corrupted or is uninstalled, it is recommended that the ESD system be configured to deploy the full version of the upgraded package, V2.sft, to the client.

For more information about upgrading a package, see “How to Upgrade an Existing Virtual Application” in the App-V 4.5 Operations Guide at <https://go.microsoft.com/fwlink/?LinkId=133129>

**Note**  
As a prerequisite, all user computers being targeted by the ESD must have the V1.sft file fully loaded into their local cache, and file streaming must be enabled on all computers.

 

**To use the Differential SFT file**

1.  Log on to the Sequencer computer by using an account with administrator rights. Open the original package (V1) for upgrade in the Sequencer, and then upgrade the package to the new version (V2) and save it as a new V2.sft.

2.  Open a command window in the App-V 4.5 Sequencer installation folder, and run the following command:

    `“mkdiffpkg.exe V2.sft V2.dsft”`

3.  Using the ESD system or other file copy process, copy the full V2 package content file, V2.sft, to a local file share that is accessible to the user computers on a well-connected network connection.

4.  Using the ESD system, place a copy of the Differential SFT file, V2.dsft, on each user computer.

5.  To import the V2.dsft file, run the following SFTMIME command on each user computer:

    `“SFTMIME load package:<package name> /SFTPATH <path to V2.dsft>”`

6.  Run the following SFTMIME command on each user computer to set the override URL to point to the V2.sft file:

    `“SFTMIME configure package:<package name> /OverrideURL FILE://<network path to V2.sft>”`

**Note**  
-   Differential SFT files must be applied to clients in the correct order. For example, V2.dsft must be applied to a V1 application before V3.dsft is applied.

-   The **Generate Microsoft Windows Installer (MSI) Package** capability in the Sequencer cannot be used with the Differential SFT file.

 

## Related topics


[How to Create or Upgrade Virtual Applications Using the App-V Sequencer](how-to-create-or-upgrade-virtual-applications-using--the-app-v-sequencer.md)

 

 





