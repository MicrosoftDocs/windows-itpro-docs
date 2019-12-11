---
title: Onboard machines without Internet access to Microsoft Defender ATP
ms.reviewer: 
description: Onboard machines without Internet access so that they can send sensor data to the Microsoft Defender ATP sensor
keywords: onboard, servers, vm, on-premise, oms gateway, log analytics, azure log analytics, mma
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

# Onboard machines without Internet access to Microsoft Defender ATP 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

To onboard machines without Internet access, you'll need to take the following general steps:

## On-premise machines

- Setup Azure Log Analytics (formerly known as OMS Gateway) to act as proxy or hub:
  - [Azure Log Analytics Agent](https://docs.microsoft.com/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
  - [Install and configure Microsoft Monitoring Agent (MMA)](configure-server-endpoints.md#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-atp) point to Microsoft Defender ATP Workspace key & ID

- Offline machines in the same network of Azure Log Analytics
  -  Configure MMA to point to:
     - Azure Log Analytics IP as a proxy
     - Microsoft Defender ATP workspace key & ID

## Azure virtual machines
- Configure and enable [Azure Log Analytics workspace](https://docs.microsoft.com/azure/azure-monitor/platform/gateway)

    - Setup Azure Log Analytics (formerly known as OMS Gateway) to act as proxy or hub:
      - [Azure Log Analytics Agent](https://docs.microsoft.com/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
      - [Install and configure Microsoft Monitoring Agent (MMA)](configure-server-endpoints.md#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-atp) point to Microsoft Defender ATP Workspace key & ID
    - Offline Azure VMs in the same network of OMS Gateway
      - Configure Azure Log Analytics IP as a proxy
      - Azure Log Analytics Workspace Key & ID

    - Azure Security Center (ASC)
      - [Security Policy \> Log Analytics Workspace](https://docs.microsoft.com/azure/security-center/security-center-wdatp#enable-windows-defender-atp-integration)
      - [Threat Detection \> Allow Microsoft Defender ATP to access my data](https://docs.microsoft.com/azure/security-center/security-center-wdatp#enable-windows-defender-atp-integration)

        For more information, see [Working with security policies](https://docs.microsoft.com/azure/security-center/tutorial-security-policy).
