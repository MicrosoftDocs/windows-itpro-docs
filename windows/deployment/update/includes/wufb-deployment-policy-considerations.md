---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 02/14/2023
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-drivers.md, deployment-service-troubleshoot.md, and the deployment-service-prerequisites.md articles. Headings may be driven by article context. 7512398 -->

## Policy considerations

It's possible for the service to receive content approval but the content doesn't get installed on the device because of a Group Policy, CSP, or registry setting on the device. In some cases, organizations specifically configure policies to fit their needs. For instance, they may want to review applicable driver content, but not approve it for install through the deployment service. Configuring this sort of behavior can be useful, especially when transitioning driver update management due to changing organizational needs.

| Policy | Behavior |
|---|---|
| 


