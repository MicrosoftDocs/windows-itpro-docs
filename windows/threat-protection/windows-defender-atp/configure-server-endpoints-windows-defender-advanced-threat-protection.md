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

## Onboard server endpoints
Windows Defender ATP supports the onboarding of the following servers:
- Windows Server 2012 R2
- Windows Server 2016

You'll need to do a one-time set up to onboard supported servers so that they can report sensor data to Windows Defender ATP. In general you'll need to:

- Set up the environment from the Windows Defender ATP portal
- Download the Microsoft Monitoring Agent (MMA) setup file
- Install the agent on the server using the method you choose
- Configure the agent with your **Workspace ID** and **Primary key**
- Configure proxy settings

**System requirements and required configuration** [EFRAT, PLEASE CHECK THE FOLLOWIN PRE-REQS AND LET ME KNOW IF THERE ARE THINGS I NEED TO ADD OR REMOVE. THANK YOU!]
- Each server must be able to connect to the Internet using HTTPS or to the OMS Gateway. This connection can be direct, using a proxy, or through the OMS Gateway.
- The agent needs to use TCP port 443 for various resources
- Ensure that you adhere to the network requirements as stated in the Log Analytics service


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
