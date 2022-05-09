---
title: How to enable only administrators to publish packages by using an ESD
description: Learn how to enable only administrators to publish packages by bsing an electronic software delivery (ESD).
author: aczechowski
ms.prod: w10
ms.technology: windows
ms.date: 05/02/2022
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: how-to
---

# How to enable only administrators to publish packages by using an ESD

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

Starting in App-V 5.0 SP3, you can configure the App-V client so that only administrators (not end users) can publish or unpublish packages. In earlier versions of App-V, you couldn't prevent end users from performing these tasks.

Here's how to enable only administrators to publish or unpublish packages:

1. Navigate to the following Group Policy Object node:

    **Computer Configuration** > **Administrative Templates** > **System** > **App-V** > **Publishing**.

2. Enable the **Require publish as administrator** Group Policy setting.

    To instead use Windows PowerShell to set this item, see [Understanding pending packages: UserPending and GlobalPending](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#about-pending-packages-userpending-and-globalpending).




