---
title: How to Publish a Virtual Application on the Client
description: How to Publish a Virtual Application on the Client
author: eavena
ms.assetid: 90af843e-b5b3-4a71-a3a1-fa5f4c087f28
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Publish a Virtual Application on the Client


When you deploy Application Virtualization by using an electronic software distribution system, you can use one of the following procedures to publish an application package to your users.

**To publish a package using a stand-alone Windows Installer file**

1.  The client should be installed with the *REQUIREAUTHORIZATIONIFCACHED* parameter set to 0 (zero). For more information about setting this parameter, see [Application Virtualization Client Installer Command-Line Parameters](application-virtualization-client-installer-command-line-parameters.md)

2.  Copy the Windows Installer file and the SFT file to same folder on the target computer.

3.  Run the following command on the computer:

    `Msiexec.exe /I "packagename.msi" /q`

**To publish a package using Windows Installer and the package manifest**

1.  Copy the Windows Installer file to the target computer and the SFT file to the CONTENT share on the streaming server.

2.  Run the following command on each user’s computer:

    `Msiexec.exe /I "\\pathtomsi\packagename.msi" MODE=STREAMING  OVERRIDEURL="\\\\server\\share\\package.sft" LOAD=TRUE /q`

    **Important**  
    For OVERRIDEURL all backslash characters must be escaped using a preceding backslash, or the OVERRIDEURL path will not be parsed correctly. Also, properties and values must be entered as uppercase except where the value is a path to a file.

     

**To publish a package using SFTMIME**

-   For an example of how to publish an application for all users on a computer, run the following command on the user’s computer:

    `SFTMIME ADD PACKAGE:package-name /MANIFEST manifest-path                                 [/GLOBAL] [/LOG log-pathname | /CONSOLE | /GUI]`

    For additional details about these and other SFTMIME commands, see [SFTMIME Command Reference](sftmime--command-reference.md).

## Related topics


[Determine Your Publishing Method](determine-your-publishing-method.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[SFTMIME Command Reference](sftmime--command-reference.md)

[Stand-Alone Delivery Scenario for Application Virtualization Clients](stand-alone-delivery-scenario-for-application-virtualization-clients.md)

 

 





