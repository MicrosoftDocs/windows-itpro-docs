---
title: About App-V Package Accelerators (App-V 4.6 SP1)
description: About App-V Package Accelerators (App-V 4.6 SP1)
author: manikadhiman
ms.assetid: fc2d2375-8f17-4a6d-b374-771cb947cb8c
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# About App-V Package Accelerators (App-V 4.6 SP1)


You can use App-V Package Accelerators to automatically sequence large, complex applications. Additionally, when you apply an App-V Package Accelerator, you are not always required to manually install an application to create the virtual application package.

**Note**  
In some cases, you are prompted to install an application locally to the computer running the App-V Sequencer before you can use the Package Accelerator. If you have to install an application, you must install the application to the application’s default location. This installation is not monitored by App-V Sequencer. When the App-V Package Accelerator is created, the author of the Package Accelerator determines whether to install an application locally is required.

 

App-V Sequencer extracts the required files from the App-V Package Accelerator and associated installation media to create a virtual package without having to monitor the installation of the application.

**Important**  
Disclaimer: The Microsoft Application Virtualization Sequencer does not give you any license rights to the software application you are using to create a Package Accelerator. You must abide by all end user license terms for such application. It is your responsibility to make sure the software application’s license terms allow you to create a Package Accelerator using Application Virtualization Sequencer.

 

App-V Package Accelerators and project templates differ from each other. Package Accelerators are application-specific. Project templates enable users to save commonly used settings specific to an organization and apply them to multiple applications. You can also create project templates at the command prompt, while in contrast, you must use the App-V Sequencer console to create Package Accelerators. Additionally, creating a package by using a Package Accelerator and applying a project template is not supported.

## Sharing App-V Package Accelerators


This section provides best practice information about how to share Package Accelerators. If you plan to share Package Accelerators, information such as computer names, user account information, and information about the associated applications might be included in the Package Accelerators.The following list describes methods you should consider when creating Package Accelerators:

-   **User name**. When you log on to the computer running App-V Sequencer, you should use a generic user account, such as the built-in **administrator** account for administering the computer / domain. You should not use an account that is based on an existing user name.

-   **Computer Name**. Specify a general, non-identifying name for the computer running the Sequencer.

-   **Server URL**. In the Sequencer console, on the **Deployment** tab, use the default settings for the server URL configuration information.

-   **Applications**. If you do not want to share the list of applications that were installed on the computer running the Sequencer when you created the Package Accelerator, you must delete the **appv\_manifest.xml** file. This file is located in the package root directory of the virtual application package.

You should also review any settings or configuration files associated with the virtual application package to ensure the applications do not contain any personal information.

## Securing App-V Package Accelerators


Always save App-V Package Accelerators and any associated installation media in a secure location on the network to protect the App-V Package Accelerators and the installation files from being tampered with or becoming corrupted. Because Package Accelerators can also contain password and user-specific information, you must save App-V Package Accelerators in a secure location, and you must digitally sign the Package Accelerator after you create it so that the publisher can be verified when the Package Accelerator is applied. For more information about digital signatures, see [Application Guidelines on Digital Signature Practices for Common Criteria Security](https://go.microsoft.com/fwlink/?LinkId=204705) (https://go.microsoft.com/fwlink/?LinkId=204705).

## Related topics


[How to Create App-V Package Accelerators (App-V 4.6 SP1)](how-to-create-app-v-package-accelerators--app-v-46-sp1-.md)

[How to Apply a Package Accelerator to Create a Virtual Application Package (App-V 4.6 SP1)](how-to-apply-a-package-accelerator-to-create-a-virtual-application-package---app-v-46-sp1-.md)

 

 





