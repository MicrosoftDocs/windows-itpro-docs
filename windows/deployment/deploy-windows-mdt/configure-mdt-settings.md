---
title: Configure MDT settings (Windows 10)
description: One of the most powerful features in Microsoft Deployment Toolkit (MDT) is its extension capabilities; there's virtually no limitation to what you can do in terms of customization.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
ms.date: 11/28/2022
---

# Configure MDT settings

One of the most powerful features in Microsoft Deployment Toolkit (MDT) is its extension capabilities; there's virtually no limitation to what you can do in terms of customization. In this article, you learn about configuring customizations for your environment.
For the purposes of this article, we'll use four machines: DC01, MDT01, HV01, and PC0001. DC01 is a domain controller, MDT01 is a Windows Server 2012 R2 Standard server, and PC0001 is a Windows 10 Enterprise x64 client used for the MDT simulation environment. OR01 has Microsoft System Center 2012 R2 Orchestrator installed. MDT01, OR01, and PC0001 are members of the domain contoso.com for the fictitious Contoso Corporation. For more information on the setup for this article, see [Deploy Windows 10 with the Microsoft Deployment Toolkit](./prepare-for-windows-deployment-with-mdt.md).

![figure 1.](../images/mdt-09-fig01.png)

The computers used in this article.

## In this section

- [Set up MDT for BitLocker](set-up-mdt-for-bitlocker.md)
- [Configure MDT deployment share rules](configure-mdt-deployment-share-rules.md)
- [Configure MDT for UserExit scripts](configure-mdt-for-userexit-scripts.md)
- [Simulate a Windows 10 deployment in a test environment](simulate-a-windows-10-deployment-in-a-test-environment.md)
- [Use the MDT database to stage Windows 10 deployment information](use-the-mdt-database-to-stage-windows-10-deployment-information.md)
- [Assign applications using roles in MDT](assign-applications-using-roles-in-mdt.md)
- [Use web services in MDT](use-web-services-in-mdt.md)
- [Use Orchestrator runbooks with MDT](use-orchestrator-runbooks-with-mdt.md)

## Related articles

- [Get started with the Microsoft Deployment Toolkit (MDT)](get-started-with-the-microsoft-deployment-toolkit.md)
- [Create a Windows 10 reference image](create-a-windows-10-reference-image.md)
- [Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md)
- [Build a distributed environment for Windows 10 deployment](build-a-distributed-environment-for-windows-10-deployment.md)
- [Refresh a Windows 7 computer with Windows 10](refresh-a-windows-7-computer-with-windows-10.md)
- [Replace a Windows 7 computer with a Windows 10 computer](replace-a-windows-7-computer-with-a-windows-10-computer.md)
