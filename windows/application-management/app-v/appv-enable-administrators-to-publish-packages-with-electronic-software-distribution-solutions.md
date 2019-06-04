---
title: How to Enable Only Administrators to Publish Packages by Using an ESD (Windows 10)
description: How to Enable Only Administrators to Publish Packages by Using an ESD
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# How to enable only administrators to publish packages by using an ESD

>Applies to: Windows 10, version 1607

Starting in App-V 5.0 SP3, you can configure the App-V client so that only administrators (not end users) can publish or unpublish packages. In earlier versions of App-V, you could not prevent end users from performing these tasks.

Here's how to enable only administrators to publish or unpublish packages:

1. Navigate to the following Group Policy Object node:

    **Computer Configuration** > **Administrative Templates** > **System** > **App-V** > **Publishing**.

2. Enable the **Require publish as administrator** Group Policy setting.

    To instead use Windows PowerShell to set this item, see [Understanding pending packages: UserPending and GlobalPending](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#about-pending-packages-userpending-and-globalpending).




