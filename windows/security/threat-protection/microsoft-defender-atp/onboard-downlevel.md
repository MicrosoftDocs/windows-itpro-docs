---
title: Onboard previous versions of Windows on Microsoft Defender ATP
description: Onboard supported previous versions of Windows machines so that they can send sensor data to the Microsoft Defender ATP sensor
keywords: onboard, windows, 7, 81, oms, sp1, enterprise, pro, down level
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

# Onboard previous versions of Windows

**Applies to:**

- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Pro
- Windows 8.1 Enterprise
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-downlevel-abovefoldlink)

Microsoft Defender ATP extends support to include down-level operating systems, providing advanced attack detection and investigation capabilities on supported Windows versions.

>[!IMPORTANT]
>This capability is currently in preview. You'll need to turn on the preview features to take advantage of this feature. For more information, see [Preview features](preview.md).

To onboard down-level Windows client endpoints to Microsoft Defender ATP, you'll need to:
- Configure and update System Center Endpoint Protection clients.
- Install and configure Microsoft Monitoring Agent (MMA) to report sensor data to Microsoft Defender ATP as instructed below.

>[!TIP]
> After onboarding the machine, you can choose to run a detection test to verify that it is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender ATP endpoint](run-detection-test.md).

## Configure and update System Center Endpoint Protection clients
>[!IMPORTANT]
>This step is required only if your organization uses System Center Endpoint Protection (SCEP).

Microsoft Defender ATP integrates with System Center Endpoint Protection to provide visibility to malware detections and to stop propagation of an attack in your organization by banning potentially malicious files or suspected malware. 

The following steps are required to enable this integration: 
- Install the [January 2017 anti-malware platform update for Endpoint Protection clients](https://support.microsoft.com/help/3209361/january-2017-anti-malware-platform-update-for-endpoint-protection-clie) 
- Configure the SCEP client Cloud Protection Service membership to the **Advanced** setting
- Configure your network to allow connections to the Windows Defender Antivirus cloud. For more information, see [Allow connections to the Windows Defender Antivirus cloud](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-network-connections-windows-defender-antivirus#allow-connections-to-the-windows-defender-antivirus-cloud)

## Install and configure Microsoft Monitoring Agent (MMA) to report sensor data to Microsoft Defender ATP

### Before you begin
Review the following details to verify minimum system requirements:
- Install the [February 2018 monthly update rollup](https://support.microsoft.com/help/4074598/windows-7-update-kb4074598)
  
  >[!NOTE]
  >Only applicable for Windows 7 SP1 Enterprise and Windows 7 SP1 Pro. 

- Install the [Update for customer experience and diagnostic telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry)

- Install either [.NET framework 4.5](https://www.microsoft.com/en-us/download/details.aspx?id=30653) (or later) or [KB3154518](https://support.microsoft.com/help/3154518/support-for-tls-system-default-versions-included-in-the-net-framework)

    >[!NOTE]
    >Only applicable for Windows 7 SP1 Enterprise and Windows 7 SP1 Pro.
    >Don't install .NET framework 4.0.x, since it will negate the above installation.

- Meet the Azure Log Analytics agent minimum system requirements. For more information, see [Collect data from computers in you environment with Log Analytics](https://docs.microsoft.com/azure/log-analytics/log-analytics-concept-hybrid#prerequisites)



1. Download the agent setup file: [Windows 64-bit agent](https://go.microsoft.com/fwlink/?LinkId=828603) or [Windows 32-bit agent](https://go.microsoft.com/fwlink/?LinkId=828604).

2. Obtain the workspace ID:
   - In the Microsoft Defender ATP navigation pane, select **Settings > Machine management > Onboarding**
   - Select **Windows 7 SP1 and 8.1** as the operating system
   - Copy the workspace ID and workspace key

3. Using the Workspace ID and Workspace key choose any of the following installation methods to install the agent:
    - Manually install the agent using setup<br>
      On the **Agent Setup Options** page, select **Connect the agent to Azure Log Analytics (OMS)**
    - [Install the agent using command line](https://docs.microsoft.com/azure/log-analytics/log-analytics-agent-windows#install-the-agent-using-the-command-line) and [configure the agent using a script](https://docs.microsoft.com/azure/log-analytics/log-analytics-agent-windows#add-a-workspace-using-a-script)

4. If you're using a proxy to connect to the Internet see the Configure proxy settings section.

Once completed, you should see onboarded endpoints in the portal within an hour.

### Configure proxy and Internet connectivity settings
 
- Each Windows endpoint must be able to connect to the Internet using HTTPS. This connection can be direct, using a proxy, or through the [OMS Gateway](https://docs.microsoft.com/azure/log-analytics/log-analytics-oms-gateway).
- If a proxy or firewall is blocking all traffic by default and allowing only specific domains through or HTTPS scanning (SSL inspection) is enabled, make sure that the following URLs are white-listed to permit communication with Microsoft Defender ATP service:

Agent Resource    |    Ports 
:---|:---
|    *.oms.opinsights.azure.com    |    443    |
|    *.blob.core.windows.net    |    443    |
|    *.azure-automation.net    |    443    |
|    *.ods.opinsights.azure.com    |    443    |
|    winatp-gw-cus.microsoft.com     |    443    |
|    winatp-gw-eus.microsoft.com    |    443    |
|    winatp-gw-neu.microsoft.com    |    443    |
|    winatp-gw-weu.microsoft.com    |    443    |
|winatp-gw-uks.microsoft.com | 443 |
|winatp-gw-ukw.microsoft.com | 443 | 


## Offboard client endpoints
To offboard, you can uninstall the MMA agent from the endpoint or detach it from reporting to your Microsoft Defender ATP workspace. After offboarding the agent, the endpoint will no longer send sensor data to Microsoft Defender ATP. 

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-downlevele-belowfoldlink)






