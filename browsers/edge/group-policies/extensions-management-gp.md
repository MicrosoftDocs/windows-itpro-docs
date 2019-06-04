---
title: Microsoft Edge - Extensions group policies
description: Currently, Microsoft Edge allows users to add or personalize, and uninstall extensions. You can prevent users from uninstalling extensions or sideloading of extensions, which does not prevent sideloading using Add-AppxPackage via PowerShell. Allowing sideloading of extensions installs and runs unverified extensions.
services: 
keywords: 
ms.localizationpriority: medium
manager: dansimp
author: eavena
ms.author: eravena
ms.date: 10/02/2018
ms.reviewer: 
ms.topic: reference
ms.prod: edge
ms.mktglfcycl: explore
ms.sitesec: library
---

# Extensions 

Currently, Microsoft Edge allows users to add or personalize, and uninstall extensions. You can prevent users from uninstalling extensions or sideloading of extensions, which does not prevent sideloading using Add-AppxPackage via PowerShell. Allowing sideloading of extensions installs and runs unverified extensions.  

You can find the Microsoft Edge Group Policy settings in the following location of the Group Policy Editor unless otherwise noted in the policy:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Computer Configuration\\Administrative Templates\\Windows Components\\Microsoft Edge\\**

## Allow Extensions 
[!INCLUDE [allow-extensions-include](../includes/allow-extensions-include.md)] 

## Allow sideloading of extensions 
[!INCLUDE [allow-sideloading-extensions-include](../includes/allow-sideloading-extensions-include.md)] 

## Prevent turning off required extensions 
[!INCLUDE [prevent-turning-off-required-extensions-include](../includes/prevent-turning-off-required-extensions-include.md)] 
