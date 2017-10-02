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

Windows 10, version 1709 (also known as the Fall Creators Update), introduces [Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/08/28/windows-mixed-reality-holiday-update/). Organizations that use Windows Server Update Services (WSUS) must take action to [enable Windows Mixed Reality](#enable). Any organization that wants to prohibit use of Windows Mixed Reality can [block the installation of the Mixed Reality Portal](#block).


<span id="enable" />
## Enable Windows Mixed Reality in WSUS

To enable users to download the Windows Mixed Reality software, enterprises using WSUS can approve Windows Mixed Reality package by unblocking the following KBs:
  
- KB4016509
- KB3180030
- KB3197985
 
Enterprises will not be able to install Windows Mixed Reality Feature on Demand (FOD) directly from WSUS. Instead, use one of the following options to install Windows Mixed Reality software:

- Manually install the Mixed Reality Software 
- IT admin can create [Side by side feature store (shared folder)](https://technet.microsoft.com/library/jj127275.aspx)


<span id="block" /> 
## block

Since MRP is an app and blocking this app is sufficient for your scenario, via AppLocker should be sufficient for now. To make sure enterprise understand it, please file a doc bug to publish the instruction of leveraging AppLocker CSP to block Mixed Reality Portal and control Oasis. In the doc, AppLocker CSP doc is here: https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/applocker-csp it has a list of inbox app that could be controlled by this CSP, MRP/Oasis needs to be listed there as well. Provide the content and assign to Maricia – cpub writer for CSP. 


## Related topics

- [Mixed reality](https://developer.microsoft.com/windows/mixed-reality/mixed_reality)