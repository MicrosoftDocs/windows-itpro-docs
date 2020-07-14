---
title: Configure MDT settings (Windows 10)
description: One of the most powerful features in Microsoft Deployment Toolkit (MDT) is its extension capabilities; there is virtually no limitation to what you can do in terms of customization.
ms.assetid: d3e1280c-3d1b-4fad-8ac4-b65dc711f122
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: customize, customization, deploy, features, tools
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Configure MDT settings

One of the most powerful features in Microsoft Deployment Toolkit (MDT) is its extension capabilities; there is virtually no limitation to what you can do in terms of customization. In this topic, you learn about configuring customizations for your environment.
For the purposes of this topic, we will use four machines: DC01, MDT01, HV01, and PC0001. DC01 is a domain controller, MDT01 is a Windows Server 2012 R2 Standard server, and PC0001 is a Windows 10 Enterprise x64 client used for the MDT simulation environment. OR01 has Microsoft System Center 2012 R2 Orchestrator installed. MDT01, OR01, and PC0001 are members of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-10-with-the-microsoft-deployment-toolkit.md).

![figure 1](../images/mdt-09-fig01.png)

The computers used in this topic.

## In this section

-   [Set up MDT for BitLocker](set-up-mdt-for-bitlocker.md)
-   [Configure MDT deployment share rules](configure-mdt-deployment-share-rules.md)
-   [Configure MDT for UserExit scripts](configure-mdt-for-userexit-scripts.md)
-   [Simulate a Windows 10 deployment in a test environment](simulate-a-windows-10-deployment-in-a-test-environment.md)
-   [Use the MDT database to stage Windows 10 deployment information](use-the-mdt-database-to-stage-windows-10-deployment-information.md)
-   [Assign applications using roles in MDT](assign-applications-using-roles-in-mdt.md)
-   [Use web services in MDT](use-web-services-in-mdt.md)
-   [Use Orchestrator runbooks with MDT](use-orchestrator-runbooks-with-mdt.md)

## Related topics

[Get started with the Microsoft Deployment Toolkit (MDT)](get-started-with-the-microsoft-deployment-toolkit.md)<br>
[Create a Windows 10 reference image](create-a-windows-10-reference-image.md)<br>
[Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md)<br>
[Build a distributed environment for Windows 10 deployment](build-a-distributed-environment-for-windows-10-deployment.md)<br>
[Refresh a Windows 7 computer with Windows 10](refresh-a-windows-7-computer-with-windows-10.md)<br>
[Replace a Windows 7 computer with a Windows 10 computer](replace-a-windows-7-computer-with-a-windows-10-computer.md)
