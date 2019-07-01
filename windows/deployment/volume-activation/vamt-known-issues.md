---
title: VAMT Known Issues (Windows 10)
description: VAMT Known Issues
ms.assetid: 8992f1f3-830a-4ce7-a248-f3a6377ab77f
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
author: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# VAMT Known Issues

The following list contains the current known issues with the Volume Activation Management Tool (VAMT) 3.0.
-   The VAMT Windows Management Infrastructure (WMI) remote operations may take longer to execute if the target computer is in a sleep or standby state.
-   Recovery of Non-Genuine computers is a two-step process. VAMT can be used to install a new product key and activate the computer. However, the computer itself must visit the [Windows Genuine Advantage](https://go.microsoft.com/fwlink/p/?linkid=182914) Web site to revalidate the computer's Genuine status. Upon successfully completing this step, the computer will be restored to full functionality. For more information on recovering Non-Genuine Windows computers, go to [Windows Volume Activation](https://go.microsoft.com/fwlink/p/?linkid=184668).
-   When opening a Computer Information List (.cil file) saved in a previous version of VAMT, the edition information is not shown for each product in the center pane. Users must update the product status again to obtain the edition information.
-   The remaining activation count can only be retrieved for MAKs.
 
 
