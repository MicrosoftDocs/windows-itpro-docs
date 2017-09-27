---
title: Enable or block Windows Mixed Reality apps in the enterprise (Windows 10)
description: Learn how to enable or block Windows Mixed Reality apps.
keyboards: ["mr", "mr portal", "mixed reality portal", "mixed reality"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: jdeckerms
ms.author: jdecker
ms.date: 10/17/2017
---

# Enable or block Windows Mixed Reality apps in the enterprise
**Applies to**

-   Windows 10

Windows 10, version 1709 (also known as the Fall Creators Update), introduces [Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/08/28/windows-mixed-reality-holiday-update/). 

## enable

Setting up Mixed Reality on Enterprise Network 
To enable downloading Windows Mixed Reality software (feature on demand package), IT admin need to do the following. 
Enterprises that are using Creator’s Update clients + WSUS can approve Windows Mixed Reality package by unblocking the following KBs (I’m double checking with WSD to confirm the KB numbers) 
4016509
3180030
3197985
 
Enterprises that use RS3 client will not be able to install FOD directly from WSUS. Instead, the enterprise IT admin/user will need to user one of the two options listed below to install Windows Mixed Reality software.
Have user manually install the Mixed Reality Software 
IT admin can create Side by side feature store (shared folder) using instructions here:
https://technet.microsoft.com/en-us/library/jj127275(v=ws.11).aspx
 
## block

Since MRP is an app and blocking this app is sufficient for your scenario, via AppLocker should be sufficient for now. To make sure enterprise understand it, please file a doc bug to publish the instruction of leveraging AppLocker CSP to block Mixed Reality Portal and control Oasis. In the doc, AppLocker CSP doc is here: https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/applocker-csp it has a list of inbox app that could be controlled by this CSP, MRP/Oasis needs to be listed there as well. Provide the content and assign to Maricia – cpub writer for CSP. 
