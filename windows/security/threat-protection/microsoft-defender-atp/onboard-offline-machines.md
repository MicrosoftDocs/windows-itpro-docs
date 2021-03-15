---
title: Onboard devices without Internet access to Microsoft Defender for Endpoint
ms.reviewer: 
description: Onboard devices without Internet access so that they can send sensor data to the Microsoft Defender ATP sensor
keywords: onboard, servers, vm, on-premise, oms gateway, log analytics, azure log analytics, mma
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.technology: mde
---

# Onboard devices without Internet access to Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)


To onboard devices without Internet access, you'll need to take the following general steps:

> [!IMPORTANT] 
> The steps below are applicable only to devices running previous versions of Windows such as:
Windows Server 2016 and earlier or Windows 8.1 and earlier.

> [!NOTE]
> - An OMS gateway server cannot be used as proxy for disconnected Windows 10 or Windows Server 2019 devices when configured via 'TelemetryProxyServer' registry or GPO.
> - For Windows 10 or Windows Server 2019 - while you may use TelemetryProxyServer, it must point to a standard proxy device or appliance.
> - In addition, Windows 10 or Windows Server 2019 in disconnected environments must be able to update Certificate Trust Lists offline via an internal file or web server.
> - For more information about updating CTLs offline, see [Configure a file or web server to download the CTL files](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn265983(v=ws.11)#configure-a-file-or-web-server-to-download-the-ctl-files).

For more information about onboarding methods, see the following articles:
- [Onboard previous versions of Windows](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-downlevel)
- [Onboard servers to the Microsoft Defender for Endpoint service](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-server-endpoints#windows-server-2008-r2-sp1--windows-server-2012-r2-and-windows-server-2016)
- [Configure device proxy and Internet connectivity settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet#configure-the-proxy-server-manually-using-a-registry-based-static-proxy)

## On-premise devices

- Setup Azure Log Analytics (formerly known as OMS Gateway) to act as proxy or hub:
  - [Azure Log Analytics Agent](https://docs.microsoft.com/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
  - [Install and configure Microsoft Monitoring Agent (MMA)](configure-server-endpoints.md#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-for-endpoint) point to Defender for Endpoint Workspace key & ID

- Offline devices in the same network of Azure Log Analytics
  -  Configure MMA to point to:
     - Azure Log Analytics IP as a proxy
     - Defender for Endpoint workspace key & ID

## Azure virtual machines
- Configure and enable [Azure Log Analytics workspace](https://docs.microsoft.com/azure/azure-monitor/platform/gateway)

    - Setup Azure Log Analytics Gateway (formerly known as OMS Gateway) to act as proxy or hub:
      - [Azure Log Analytics Gateway](https://docs.microsoft.com/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
      - [Install and configure Microsoft Monitoring Agent (MMA)](configure-server-endpoints.md#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-for-endpoint) point to Defender for Endpoint Workspace key & ID
    - Offline Azure VMs in the same network of OMS Gateway
      - Configure Azure Log Analytics IP as a proxy
      - Azure Log Analytics Workspace Key & ID

    - Azure Security Center (ASC)
      - [Security Policy \> Log Analytics Workspace](https://docs.microsoft.com/azure/security-center/security-center-wdatp#enable-windows-defender-atp-integration)
      - [Threat Detection \> Allow Defender for Endpoint to access my data](https://docs.microsoft.com/azure/security-center/security-center-wdatp#enable-windows-defender-atp-integration)

        For more information, see [Working with security policies](https://docs.microsoft.com/azure/security-center/tutorial-security-policy).
