---
title: How to Install the Client by Using the Command Line
description: How to Install the Client by Using the Command Line
author: dansimp
ms.assetid: ed372403-64ff-48ff-a3cd-a46cad04a4d5
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Install the Client by Using the Command Line


The topics in this section include procedures to install either the Application Virtualization (App-V) Desktop Client or the App-V Client for Remote Desktop Services (formerly Terminal Services) by using either setup.exe or setup.msi. Administrative rights are required to run either setup program.

You can use optional command-line parameters to apply specific configuration settings to the App-V client during the installation. For more information about using parameters, see [Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md). If you have applied registry settings to a computer before deploying a client—for example, by using Group Policy—these settings are retained and any additional command line parameters are applied. Command line parameter values will replace any existing value for the same setting.

**Note**  
When you install the App-V client to use with a read-only cache, for example with a VDI server implementation, you must set the *AUTOLOADTARGET* parameter to NONE to prevent the client from trying to update applications when the cache is read-only.

 

For more information about setting these parameter values after installation, see [How to Configure the App-V Client Registry Settings by Using the Command Line](https://go.microsoft.com/fwlink/?LinkId=169355) (https://go.microsoft.com/fwlink/?LinkId=169355) in the Application Virtualization (App-V) Operations Guide.

**Note**  
If a configuration setting on the user’s computer depends on the client installation path, note that the Application Virtualization (App-V) 4.5 client copies its installation files to a different folder than previous versions did. By default, a new installation of the App-V 4.5 client will copy its installation files to the \\Program Files\\Microsoft Application Virtualization Client folder. If an earlier version of the client is already installed, running the App-V 4.5 client installer will perform an upgrade of the existing client using the existing installation folder.

 

\[Template Token Value\]

**Note**  
For App-V version 4.6 and later, when the App-V client is installed, SFTLDR.DLL is copied to the Windows\\system32 directory. If the App-V client is installed on a 64-bit system, SFTLDR\_WOW64.DLL is copied to the Windows\\SysWOW64 directory.

 

\[Template Token Value\]

## In This Section


The following topics describe how to install either the Application Virtualization (App-V) Desktop Client or the App-V Client for Remote Desktop Services (formerly Terminal Services) by using either setup.exe or setup.msi.

<a href="" id="how-to-install-the-app-v-client-by-using-setup-exe"></a>[How to Install the App-V Client by Using Setup.exe](how-to-install-the-app-v-client-by-using-setupexe-new.md)  
Provides a step-by-step procedure for installing the App-V client by using the setup.exe program.

<a href="" id="how-to-install-the-app-v-client-by-using-setup-msi"></a>[How to Install the App-V Client by Using Setup.msi](how-to-install-the-app-v-client-by-using-setupmsi-new.md)  
Provides step-by-step procedures for installing any prerequisite software and also the App-V client by using the setup.msi program.

## Related topics


[Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md)

[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)

[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)

[How to Uninstall the App-V Client](how-to-uninstall-the-app-v-client.md)

 

 





