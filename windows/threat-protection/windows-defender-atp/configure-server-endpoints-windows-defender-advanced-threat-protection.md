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

## Onboard server endpoints

To onboard your servers to Windows Defender ATP, you’ll need to:

- Turn on server monitoring from the Windows Defender Security Center portal.
- If you're already leveraging System Center Operations Manager (SCOM) or Operations Management Suite (OMS), simply attach the Microsoft Monitoring Agent (MMA) to report to your Windows Defender ATP workspace through [Multi Homing support](https://blogs.technet.microsoft.com/msoms/2016/05/26/oms-log-analytics-agent-multi-homing-support/). Otherwise, install and configure MMA to report sensor data to Windows Defender ATP as instructed below.

### System requirements and required configuration
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


### Turn on Server monitoring from the Windows Defender Security Center portal

1. In the navigation pane, select **Endpoint management** > **Server management**. 

2. Click **Turn on server monitoring** and confirm that you'd like to proceed with the environment set up. When the set up completes, the **Workspace ID** and **Workspace key** fields are populated with unique values. You'll need to use these values to configure the MMA agent.

    ![Image of server onboarding](images/atp-server-onboarding.png)


### Install and configure Microsoft Monitoring Agent (MMA) to report sensor data to Windows Defender ATP 

1.	Download the agent setup file: [Windows 64-bit agent](https://go.microsoft.com/fwlink/?LinkId=828603).

2.	Using the Workspace ID and Workspace key provided in the previous procedure, choose any of the following installation methods to install the agent on the server:
    - [Manually install the agent using setup](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#install-the-agent-using-setup) 
    On the Agent Setup Options page, choose to connect the agent to Azure Log Analytics (OMS).
    - [Install the agent using the command line](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#install-the-agent-using-the-command-line) and [configure the agent using a script](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#add-a-workspace-using-a-script). 

3.	You'll need to configure proxy settings for the Microsoft Monitoring Agent. For more information, see [Configure proxy settings](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#configure-proxy-settings).

Once completed, you should see onboarded servers in the portal within an hour.


### Offboard server endpoints 
To offboard the server, you can uninstall the MMA agent from the server or detach it from reporting to your Windows Defender ATP workspace. After offboarding the agent, the server will no longer send sensor data to Windows Defender ATP.
For more information, see [To disable an agent](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-windows-agents#to-disable-an-agent).

>[!NOTE]
>Offboarding causes the server to stop sending sensor data to the portal but data from the server, including reference to any alerts it has had will be retained for up to 6 months.


## Onboard virtual desktop infrastructure (VDI) 
You can onboard VDIs using Group Policy (GP). You can onboard VDIs using a single entry or multiple entries for each machine. The following steps will guide you through steps in onboarding VDIs and will highlight steps for single and multiple entries.

1.	Open the GP configuration package .zip file (_WindowsDefenderATPOnboardingPackage.zip_) that you downloaded from the service onboarding wizard. <br>
You can also get the package from the [Windows Defender ATP portal](https://securitycenter.windows.com/):

    a. Click Endpoint management on the Navigation pane.

    b. Select Group Policy, click Download package and save the .zip file.

2.	Copy the extracted files from the .zip into golden/master image under the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`. You should have a folder called `WindowsDefenderATPOnboardingPackage` containing the file `WindowsDefenderATPOnboardingScript.cmd`.

 	>[!NOTE]
    > If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose to the **Show hidden files and folders** option from file explorer.

3.	The following step is only applicable if you're implementing a single entry for each machine: <br>
    **For single entry for each machine:**<br>
    a. Download the file: [Onboard-NonPersistenMachine.ps1](https://go.microsoft.com/fwlink/p/?linkid=852276).

    b. Copy the file to `golden/master` image to the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`.
    
    >[!NOTE]
    > If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose to the **Show hidden files and folders** option from file explorer.

4.	Open a Local Group Policy Editor window and navigate to **Computer Configuration** > **Windows Settings** > **Scripts** > **Startup**.

5.	Depending on the method you'd like to implement, follow the appropriate steps: <br>
    **For single entry for each machine:**<br>
    Select the PowerShell Scripts tab, then click Add (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to onboarding PowerShell script `Onboard-NonPersistentMachine.ps1`. 

    **For multiple entries for each machine:**<br>
    Select the Scripts tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to the onboarding bash script `WindowsDefenderATPOnboardingScript.cmd`.

6.	(sysprep and) save golden/master image 

7.	Test your solution:
    a.	Create a pool with one machine.

    b.	Logon to machine.

    c.	Logoff from machine.

    d.	Logon to machine with another user.

    e.	For single entry for each machine: Check only one entry in the Windows Defender ATP portal.

    For multiple entries for each machine: Check multiple entries in the Windows Defender ATP portal.

8.	Click **Machines list** on the Navigation pane.
9.	Use the search function by entering the machine name and select **Machine** as search type. 
