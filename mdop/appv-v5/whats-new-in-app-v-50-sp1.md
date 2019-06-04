---
title: What's new in App-V 5.0 SP1
description: What's new in App-V 5.0 SP1
author: msfttracyp
ms.assetid: e97c2dbb-7b40-46a0-8137-9ee4fc2bd071
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# What's new in App-V 5.0 SP1


This section is for users who are already familiar with App-V and want to know what has changed in App-V 5.0 SP1. If you are not already familiar with App-V, you should start by reading [Planning for App-V 5.0](planning-for-app-v-50-rc.md).

## Changes in Standard Functionality


The following sections contain information about the changes in standard functionality for App-V 5.0 SP1.

### Changes to Supported Languages

For more information, see [About App-V 5.0 SP1](about-app-v-50-sp1.md).

The following list contains more information about the new Language Packs:

-   The App-V 5.0 SP1 language packs are bundled into the **appv\_xxx\_setup.exe** installer for all the App-V 5.0 Components.

-   When you run the installer it will automatically install the most appropriate language pack based on the locale of the associated operating system running on the target computer.

-   If additional language packs are required, you must extract these language packs from the installer by running the following command: `appv_xxx_setup.exe /Layout /LayoutDir=”<path>”`. After this has been run, the contents of the installer are extracted to the specified location.

-   You must install the desired language pack by applying the appropriate Language pack Windows Installation file. For example, **appv\_hib\_LP\_jmmb\_x86.msi** or **appv\_hib\_LP\_jmmb\_x64.msi**, where **hib** refers to the component and **jmmb** refers to the locale.

## Enhanced Support for Microsoft Office 2010


**Microsoft Office 2010 Sequencing Kit for Application Virtualization 5.0** – helps provide users with a consistent experience using a virtualized version of Microsoft Office 2010. The **Microsoft Office 2010 Sequencing Kit for Application Virtualization 5.0** is used in conjunction with the **Microsoft Office 2010 Deployment Kit for App-V** and also provides the required Microsoft Office 2010 licensing service.






## Related topics


[About App-V 5.0](about-app-v-50.md)

 

 





