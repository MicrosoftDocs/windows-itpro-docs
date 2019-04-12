---
title: Onboard machines without internet access to the Windows on Windows Defender ATP service
description: Onboard machines without internet access so that they can send sensor data to the Windows Defender ATP sensor
keywords: onboard, servers, vm, on-premise, oms gateway, log analytics, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Onboard machines without internet access the Windows Defender ATP service

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



-   *On-Premise Machines:*

    -   Setup OMS Gateway Server to act as proxy / hub

        -   OMS Gateway Agent

        -   MMA (Microsoft Monitoring Agent) point to MDATP Workspace key & ID

    -   Offline Machines in the Same Network of OMS Gateway

        -   MMA point to

            -   OMS Gateway IP as a proxy

            -   MDATP Workspace Key & ID

-   *Azure VMs Machines:*

    -   Configure and Enable Azure Log Analytics Workspace

    -   Setup OMS Gateway Server to act as a proxy / hub

        -   OMS Gateway Agent

        -   MMA (Microsoft Monitoring Agent) point to Log Analytics Workspace
            Key & ID

    -   Offline Azure VMs in the same network of OMS Gateway

        -   OMS Gateway IP as a proxy

        -   Log Analytics Workspace Key & ID

    -   Azure Security Center (ASC)

        -   Security Policy \> Log Analytics Workspace

        -   Threat Detection \> Allow Windows Defender ATP to access my data