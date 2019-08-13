---
title: App-V Interoperability with Windows AppLocker
description: App-V Interoperability with Windows AppLocker
author: dansimp
ms.assetid: 9a488034-607d-411c-b495-ff184c726f49
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V Interoperability with Windows AppLocker


Version 4.5 SP1 of the Microsoft Application Virtualization (App-V) client supports the AppLocker feature of Windows 7. The AppLocker feature enables IT administrators to specify which applications are restricted from running on computers. This document describes how to configure the AppLocker rules to work with the App-V virtual environment and virtualized applications.

**Note**  
Windows AppLocker must first be enabled before configuring Windows AppLocker rules for virtual applications. For more information about enabling Windows AppLocker, [Windows AppLocker](https://go.microsoft.com/fwlink/?LinkId=156732) (https://go.microsoft.com/fwlink/?LinkId=156732).

 

## Configuring Windows AppLocker Rules for Virtual Applications


Local administrators can create Windows AppLocker rules that restrict the running of program executables (.exe files), Windows Installer files (.msi and .msp files), and scripts (.ps, .bat, .cmd, .vbs and .js files). The administrator does this by using a reference computer that has the App-V client installed and that has all the relevant virtual applications streamed to the client cache. The administrator then uses the Windows AppLocker section of the Local Security Policy Microsoft Management Console (MMC) snap-in on the reference computer to create the rules.

When you browse to find a directory path or specific file for which you want to create a rule, you can access the App-V drive by using the path to the hidden share. For example, you can browse to \\\\localhost\\Q$, where the App-V drive is drive Q. However, to create the rule, you must edit the path to remove the reference to \\\\localhost\\Q$ and use Q:\\ instead. You must start each application on the reference computer to access the application’s files, and administrative rights are required to browse to \\\\localhost\\Q$.

 

 





