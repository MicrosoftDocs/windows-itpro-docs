---
title: About Sharing Package Accelerators Page
description: About Sharing Package Accelerators Page
author: dansimp
ms.assetid: 9630cde0-e2c3-476f-8fa1-58b3c9f7d3f7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About Sharing Package Accelerators Page


This following information provides best practice information about how to share Package Accelerators. If you plan to share Package Accelerators files, information such as computer names, user account information, and information about applications included in the transforms might be included in the Package Accelerators file. You should review any settings or configuration files associated with the virtual application package to ensure the applications do not contain any personal information.This page contains the following elements.

-   **Username**. When you log on to the computer running the Microsoft App-V Sequencer, you should use a generic user account, such as the built-in **administrator** account. You should not use an account that is based on an existing user name.

-   **Computer Name**. Specify a general, non-identifying name of the computer running the Sequencer.

-   **Server URL**. In the App-V Sequencer console, on the **Deployment** tab, use the default settings for the server URL configuration information.

-   **Applications**. If you do not want to share the list of applications that were installed on the computer running the Sequencer when you created the Package Accelerator, you must delete the **appv\_manifest.xml** file. This file is located in the package root directory of the virtual application package.

## Related topics


[Create Package Accelerator Wizard (AppV 4.6 SP1)](create-package-accelerator-wizard--appv-46-sp1-.md)

[About App-V Package Accelerators (App-V 4.6 SP1)](about-app-v-package-accelerators--app-v-46-sp1-.md)

 

 





