---
title: Get started with the Microsoft Deployment Toolkit (MDT) (Windows 10)
description: This topic will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT), as part of a Windows operating system deployment.
ms.assetid: a256442c-be47-4bb9-a105-c831f58ce3ee
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, image, feature, install, tools
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
audience: itproauthor: greg-lindsay
ms.topic: article
---

# Get started with the Microsoft Deployment Toolkit (MDT)

**Applies to**
-   Windows 10

This topic will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT), as part of a Windows operating system deployment. MDT is one of the most important tools available to IT professionals today. You can use it to create reference images or as a complete deployment solution. MDT also can be used to extend the operating system deployment features available in Microsoft System Center 2012 R2 Configuration Manager.

In addition to familiarizing you with the features and options available in MDT, this topic will walk you through the process of preparing for deploying Windows 10 using MDT by configuring Active Directory, creating an organizational unit (OU) structure, creating service accounts, configuring log files and folders, and installing the tools needed to view the logs and continue with the deployment process.

For the purposes of this topic, we will use two machines: DC01 and MDT01. DC01 is a domain controller and MDT01 is a Windows Server 2012 R2 standard server. MDT01 is a member of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see 
[Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-10-with-the-microsoft-deployment-toolkit.md#proof).

![figure 1](../images/mdt-05-fig01.png)

Figure 1. The machines used in this topic.

## In this section

-   [Key features in MDT](key-features-in-mdt.md)
-   [MDT Lite Touch components](mdt-lite-touch-components.md)
-   [Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md)

## Related topics

[Microsoft Deployment Toolkit downloads and documentation](https://go.microsoft.com/fwlink/p/?LinkId=618117)

[Create a Windows 10 reference image](create-a-windows-10-reference-image.md)

[Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md)

[Build a distributed environment for Windows 10 deployment](build-a-distributed-environment-for-windows-10-deployment.md)

[Refresh a Windows 7 computer with Windows 10](refresh-a-windows-7-computer-with-windows-10.md)

[Replace a Windows 7 computer with a Windows 10 computer](replace-a-windows-7-computer-with-a-windows-10-computer.md)

[Configure MDT settings](configure-mdt-settings.md)
