---
title: Onboard previous versions of Windows on Windows Defender ATP
description: Onboard supported previous versions of Windows machines so that they can send sensor data to the Windows Defender ATP sensor
keywords: onboard, windows, 7, 8, oms, sp1, enterprise, pro, down level
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 06/11/2018
---

# Onboard Windows previous versions of Windows

**Applies to:**

- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Enterprise
- Windows 8.1 Pro
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Windows Defender ATP extends support to also include down-level operating systems, providing advanced attack detection and investigation capabilities, seamlessly through the Windows Defender Security Center console.

To onboard down-level Windows client endpoints to Windows Defender ATP, you’ll need to:
- Configure and update System Center Endpoint Protection clients.
- Install and configure Microsoft Monitoring Agent (MMA) to report sensor data to Windows Defender ATP as instructed below.

>[!TIP]
> After onboarding the machine, you can choose to run a detection test to verify that it is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Windows Defender ATP endpoint](run-detection-test-windows-defender-advanced-threat-protection.md).

## Configure and update System Center Endpoint Protection clients
>[!IMPORTANT]
>This step is required only if your organization uses System Center Endpoint Protection (SCEP).

Windows Defender ATP integrates with System Center Endpoint Protection to provide visibility to malware detections and to stop propagation of an attack in your organization by banning potentially malicious files or suspected malware. 

The following steps are required to enable this integration: 
- Install the [January 2017 anti-malware platform update for Endpoint Protection clients](https://support.microsoft.com/en-us/help/3209361/january-2017-anti-malware-platform-update-for-endpoint-protection-clie) 
- Configure the SCEP client Cloud Protection Service membership to the **Advanced** setting

## Install and configure Microsoft Monitoring Agent (MMA) to report sensor data to Windows Defender ATP

### Before you begin
Review the following details to verify minimum system requirements:
- Install the [February monthly update rollout](https://support.microsoft.com/help/4074598/windows-7-update-kb4074598) 
- Install the [Update for customer experience and diagnostic telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry)
- Meet the Azure Log Analytics agent minimum system requirements. For more information, see [Collect data from computers in you environment with Log Analytics](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-concept-hybrid#prerequisites)

1. Download the agent setup file: [Windows 64-bit agent](https://go.microsoft.com/fwlink/?LinkId=828603) or [Windows 32-bit agent](https://go.microsoft.com/fwlink/?LinkId=828604).

2. Obtain the workspace ID:
   - In the Windows Defender ATP navigation pane, select **Settings > Machine management > Onboarding**
   - Select **Windows 7 SP1 and 8.1** as the operating system
   - Copy the workspace ID and workspace key

3. Using the Workspace ID and Workspace key choose any of the following installation methods to install the agent:
    - Manually install the agent using setup<br>
      On the **Agent Setup Options** page, select **Connect the agent to Azure Log Analytics (OMS)
    - [Install the agent using command line](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-agent-windows#install-the-agent-using-the-command-line) and [configure the agent using a script](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-agent-windows#add-a-workspace-using-a-script).

4. If you're using a proxy server to connect to the Internet see the Configure proxy settings section.

Once completed, you should see onboarded servers in the portal within an hour.

### Configure server proxy and Internet connectivity settings
 
- Each Windows server must be able to connect to the Internet using HTTPS. This connection can be direct, using a proxy, or through the [OMS Gateway](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-oms-gateway).
- If a proxy or firewall is blocking all traffic by default and allowing only specific domains through or HTTPS scanning (SSL inspection) is enabled, make sure that the following URLs are white-listed to permit communication with Windows Defender ATP service:

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
To offboard, you can uninstall the MMA agent from the endpoint or detach it from reporting to your Windows Defender ATP workspace. After offboarding the agent, the endpoint will no longer send sensor data to Windows Defender ATP. 

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-downlevele-belowfoldlink)






