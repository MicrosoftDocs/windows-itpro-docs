---
title: Planning to Deploy App-V with an Electronic Software Distribution System (Windows 10)
description: Planning to Deploy App-V with an Electronic Software Distribution System
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.topic: article
---
# Planning to Deploy App-V with an electronic software distribution system

>Applies to: Windows 10, version 1607

If you are using an electronic software distribution (ESD) system to deploy App-V packages, review the following planning considerations. For information about deploying App-V with System Center Configuration Manager, see [Introduction to application management in Configuration Manager](https://technet.microsoft.com/library/gg682125.aspx#BKMK_Appv).

Review the following component and architecture requirements options that apply when you use an ESD to deploy App-V packages:

| Deployment requirement or option | Description |
|---|---|
| The App-V Management server, Management database, and Publishing server are not required. | These functions are handled by the implemented ESD solution. |
| You can deploy the App-V Reporting server and Reporting database side-by-side with the ESD. | The side-by-side deployment lets you collect data and generate reports.<br/>If you enable the App-V client to send report information without using the App-V Reporting server, the reporting data will be stored in associated .xml files. |





## Related topics

* [Planning to deploy App-V](appv-planning-to-deploy-appv.md)
* [How to deploy App-V packages Using Electronic Software Distribution](appv-deploy-appv-packages-with-electronic-software-distribution-solutions.md)
* [How to enable only administrators to publish packages by using an ESD](appv-enable-administrators-to-publish-packages-with-electronic-software-distribution-solutions.md)
