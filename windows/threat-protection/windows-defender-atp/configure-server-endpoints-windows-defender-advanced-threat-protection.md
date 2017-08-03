---
title: Configure Windows Defender ATP server endpoints
description: Configure server endpoints so that they can send sensor data to the Windows Defender ATP sensor.
keywords: server, configure server endpoints, endpoint management, configure Windows ATP server endpoints, configure Windows Defender Advanced Threat Protection server endpoints
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Configure Windows Defender ATP server endpoints

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP extends support to also include the Windows Server operating system, providing advanced attack detection and investigation capabilities, seamlessly through the Windows Defender Security Center console.

Windows Defender ATP supports the onboarding of the following servers:
- Windows Server 2012 R2
- Windows Server 2016

To onboard your servers to Windows Defender ATP, you’ll need to:

- Turn on server monitoring from the Windows Defender Security Center portal.
- If you're already leveraging System Center Operations Manager (SCOM) or Operations Management Suite (OMS), simply attach the Microsoft Monitoring Agent (MMA) to report to your Windows Defender ATP workspace through [Multi Homing support](https://blogs.technet.microsoft.com/msoms/2016/05/26/oms-log-analytics-agent-multi-homing-support/). Otherwise, install and configure MMA to report sensor data to Windows Defender ATP as instructed below.

**System requirements and required configuration** 
- Each Windows server must be able to connect to the Internet using HTTPS. This connection can be direct, using a proxy, or through the [OMS Gateway](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-oms-gateway).
- If a proxy or firewall is blocking all traffic by default and allowing only specific domains through or HTTPS scanning (SSL inspection) is enabled, make sure that the following URLs are white-listed to permit communication with Windows Defender ATP service:

|    Agent Resource    |    Ports    |
|------------------------------------|-------------|
|    *.oms.opinsights.azure.com    |    443    |
|    *.blob.core.windows.net    |    443    |
|    *.azure-automation.net    |    443    |
|    *.ods.opinsights.azure.com    |    443    |
|    winatp-gw-cus.microsoft.com     |    443    |
|    winatp-gw-eus.microsoft.com    |    443    |
|    winatp-gw-neu.microsoft.com    |    443    |
|    winatp-gw-weu.microsoft.com    |    443    |


### Step 1: Set up the environment from the Windows Defender ATP portal

1. In the navigation pane, select **Endpoint management** > **Servers**. [CAN CHANGE DEPENDING IF LOUIE'S SUGGESTIONS ARE IMPLIMENTED]

2. Click **Set up environment** and confirm that you'd like to proceed with the environment set up. When the set up completes, the **Workspace ID** and **Primary key** fields are populated with unique values. You'll need to use these values on the OMS application. [SHOULD WE CALL IT APPLICATION? OR PORTAL? OR SOMETHING ELSE?]

3. Proceed with downloading the Microsoft Monitoring Agent set up file.

### Step 2: Download the Microsoft Monitoring Agent setup file [EFRAT PLEASE VERIFY IF THE FOLLOWING LINKS ARE CORRECT - THANK YOU!]
You'll need to download the agent setup file:
- Windows 64-bit agent - https://go.microsoft.com/fwlink/?LinkId=828603
- Windows 32-bit agent - https://go.microsoft.com/fwlink/?LinkId=828604

For more information, see [Download the agent setup file from OMS](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#download-the-agent-setup-file-from-oms).

### Step 3: Install the agent on the server
Choose any of the following installation methods to install the agent on the server:
- [Install the agent using setup](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#install-the-agent-using-setup)
- [Install the agent using the command line](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#install-the-agent-using-the-command-line)
- [Install the agent using DSC in Azure Automation](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#install-the-agent-using-dsc-in-azure-automation)

[EFRAT, WE CAN REMOVE DSC IF IT'S NOT POPULAR LIKE YOU MENTIONED]

### Step 4: Configure the agent
After completing the agent installation, you can proceed to configure the agent. For more information, see [Configure an agent manually or add additional workspaces](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#configure-an-agent-manually-or-add-additional-workspaces).

### Step 5: Configure proxy settings
You'll need to configure proxy settings for the Microsoft Monitoring Agent. For more information, see [Configure proxy settings](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#configure-proxy-settings).

When you've completed all the required steps, you should see onboarded servers in the portal within an hour.


## Offboard server endpoints
To offboard the server, you must uninstall the agent from the server. After you uninstall the agent, the server will no longer send sensor data to Windows Defender ATP.

For more information, see [To disable an agent](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#to-disable-an-agent).

> [!IMPORTANT]
> Offboarding causes the server to stop sending sensor data to the portal but data from the server, including reference to any alerts it has had will be retained for up to 6 months.
