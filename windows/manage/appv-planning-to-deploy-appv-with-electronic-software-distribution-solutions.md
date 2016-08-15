---
title: Planning to Deploy App-V with an Electronic Software Distribution System (Windows 10)
description: Planning to Deploy App-V with an Electronic Software Distribution System
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Planning to Deploy App-V with an electronic software distribution system

Applies to: Windows 10, version 1607

If you are using an electronic software distribution system to deploy App-V packages, review the following planning considerations. For information about using System Center Configuration Manager to deploy App-V, see [Introduction to Application Management in Configuration Manager](https://technet.microsoft.com/en-us/library/gg682125.aspx#BKMK_Appv).

Review the following component and architecture requirements options that apply when you use an ESD to deploy App-V packages:

| Deployment requirement or option | Description |
| - | - |
| The App-V Management server, Management database, and Publishing server are not required. | These functions are handled by the implemented ESD solution. |
| You can deploy the App-V Reporting server and Reporting database side by side with the ESD. | The side-by-side deployment lets you to collect data and generate reports.<br/>If you enable the App-V client to send report information, and you are not using the App-V Reporting server, the reporting data is stored in associated .xml files. |

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

- [Planning to deploy App-V](appv-planning-to-deploy-appv.md)
