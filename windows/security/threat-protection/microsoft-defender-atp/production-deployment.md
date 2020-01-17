---
title: Microsoft Defender ATP production deployment
description: 
keywords:
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

# Microsoft Defender ATP production deployment

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Proper planning is the foundation of a successful deployment. In this deployment scenario, you'll be guided through the steps on:
- Tenant configuration
- Network configuration
- Onboarding using System Center Configuration Manager
- Endpoint detection and response
- Next generation protection
- Attack surface reduction

>[!NOTE]
>For the purpose of guiding you through a typical deployment, this scenario will only cover the use of System Center Configuration Manager. Microsoft Defnder ATP supports the use of other onboarding tools but will not cover those scenarios in the deployment guide. For more information, see [Onboard machines to Microsoft Defender ATP](onboard-configure.md).

## Tenant Configuration

When accessing [Microsoft Defender Security Center](https://securitycenter.windows.com/) for the first time there will be a setup wizard that will guide you through some initial steps. At the end of the setup wizard there will be a dedicated cloud instance of Microsoft Defender ATP created. The easiest method is to perform these steps from a Windows 10 client machine.

1. From a web browser, navigate to <https://securitycenter.windows.com>.

    ![Image of Set up your permissions for Microsoft Defender ATP](images/atp-setup-permissions-wdatp-portal.png)

2. If going through a TRIAL license, go to the link (<https://signup.microsoft.com/Signup?OfferId=6033e4b5-c320-4008-a936-909c2825d83c&dl=WIN_DEF_ATP&pc=xxxxxxx-xxxxxx-xxx-x>)

    Once the authorization step is completed, the **Welcome** screen will be displayed.
3. Go through the authorization steps.

    ![Image of Welcome screen for portal set up](images/welcome1.png)

4. Set up preferences.

   **Data storage location** - It's important to set this up correctly. Determine where the customer wants to be primarily hosted: US, EU or UK. You cannot change the location after this setup and Microsoft will not transfer the data from the specified geolocation. 

    **Data retention** - The default is 6 months.

    **Enable preview features** - The default is on, can be changed later.

    ![Image of geographic location in set up](images/setup-preferences.png)

5. Select **Next**.

     ![Image of final preference set up](images/setup-preferences2.png)

6. Select **Continue**.


## Network configuration
If the organization does not require the endpoints to use a Proxy to access the
Internet, skip this section.

The Microsoft Defender ATP sensor requires Microsoft Windows HTTP (WinHTTP) to
report sensor data and communicate with the Microsoft Defender ATP service. The
embedded Microsoft Defender ATP sensor runs in the system context using the
LocalSystem account. The sensor uses Microsoft Windows HTTP Services (WinHTTP)
to enable communication with the Microsoft Defender ATP cloud service. The
WinHTTP configuration setting is independent of the Windows Internet (WinINet)
internet browsing proxy settings and can only discover a proxy server by using
the following discovery methods:

**Auto-discovery methods:**

-   Transparent proxy

-   Web Proxy Auto-discovery Protocol (WPAD)

If a Transparent proxy or WPAD has been implemented in the network topology,
there is no need for special configuration settings. For more information on
Microsoft Defender ATP URL exclusions in the proxy, see the
Appendix section in this document for the URLs Whitelisting or on
[Microsoft
Docs](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-proxy-internet-windows-defender-advanced-threat-protection#enable-access-to-windows-defender-atp-service-urls-in-the-proxy-server).

**Manual static proxy configuration:**

-   Registry based configuration

-   WinHTTP configured using netsh command <br> Suitable only for desktops in a
    stable topology (for example: a desktop in a corporate network behind the
    same proxy)

### Configure the proxy server manually using a registry-based static proxy

Configure a registry-based static proxy to allow only Microsoft Defender ATP
sensor to report diagnostic data and communicate with Microsoft Defender ATP
services if a computer is not permitted to connect to the Internet. The static
proxy is configurable through Group Policy (GP). The group policy can be found
under:

-   Administrative Templates \> Windows Components \> Data Collection and
    Preview Builds \> Configure Authenticated Proxy usage for the Connected User
    Experience and Telemetry Service

    -   Set it to **Enabled** and select **Disable Authenticated Proxy usage**

1. Open the Group Policy Management Console.
2. Create a policy or edit an existing policy based off the organizational practices.
3. Edit the Group Policy and navigate to **Administrative Templates \> Windows Components \> Data Collection and Preview Builds \> Configure Authenticated Proxy usage for the Connected User Experience and Telemetry Service**. 
    ![Image of Group Policy setting](images/atp-gpo-proxy1.png)

4. Select **Enabled**.
5. Select **Disable Authenticated Proxy usage**.
   
6. Navigate to **Administrative Templates \> Windows Components \> Data Collection and Preview Builds \> Configure connected user experiences and telemetry**.
    ![Image of Group Policy setting](images/atp-gpo-proxy2.png)
7. Select **Enabled**.
8. Enter the **Proxy Server Name**.

The policy sets two registry values `TelemetryProxyServer` as REG_SZ and `DisableEnterpriseAuthProxy` as REG_DWORD under the registry key `HKLM\Software\Policies\Microsoft\Windows\DataCollection`.

The registry value `TelemetryProxyServer` takes the following string format:

```text
<server name or ip>:<port>
```

For example: 10.0.0.6:8080

The registry value `DisableEnterpriseAuthProxy` should be set to 1.

###  Configure the proxy server manually using netsh command

Use netsh to configure a system-wide static proxy.

> [!NOTE]
> - This will affect all applications including Windows services which use WinHTTP with default proxy.</br>
> - Laptops that are changing topology (for example: from office to home) will malfunction with netsh. Use the registry-based static proxy configuration.

1. Open an elevated command-line:

    a. Go to **Start** and type **cmd**.

    b. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command and press **Enter**:

   ```PowerShell
   netsh winhttp set proxy <proxy>:<port>
   ```

   For example: netsh winhttp set proxy 10.0.0.6:8080


###  Proxy Configuration for down-level machines

Down-Level machines include Windows 7 SP1 and Windows 8.1 workstations as well
as Windows Server 2008 R2, Windows Sever 2012, Windows Server 2012 R2, and
versions of Windows Server 2016 prior to Windows Server CB 1803. These operating
systems will have the proxy configured as part of the Microsoft Management Agent
to handle communication from the endpoint to Azure. Refer to the
Microsoft Management Agent Fast Deployment Guide for information on how a proxy
is configured on these machines.

### Proxy Service URLs
URLs that include v20 in them are only needed if you have Windows 10, version
1803 or later machines. For example, ```us-v20.events.data.microsoft.com``` is only
needed if the machine is on Windows 10, version 1803 or later.

 Service location | Microsoft.com DNS record
-|-
Common URLs for all locations | ```crl.microsoft.com```<br> ```ctldl.windowsupdate.com``` <br>```events.data.microsoft.com```<br>```notify.windows.com```<br> ```settings-win.data.microsoft.com```
European Union | ```eu.vortex-win.data.microsoft.com``` <br> ```eu-v20.events.data.microsoft.com``` <br> ```usseu1northprod.blob.core.windows.net```  <br>```usseu1westprod.blob.core.windows.net``` <br> ```winatp-gw-neu.microsoft.com``` <br> ```winatp-gw-weu.microsoft.com``` <br>```wseu1northprod.blob.core.windows.net``` <br>```wseu1westprod.blob.core.windows.net``` 
United Kingdom | ```uk.vortex-win.data.microsoft.com``` <br>```uk-v20.events.data.microsoft.com``` <br>```ussuk1southprod.blob.core.windows.net``` <br>```ussuk1westprod.blob.core.windows.net``` <br>```winatp-gw-uks.microsoft.com``` <br>```winatp-gw-ukw.microsoft.com``` <br>```wsuk1southprod.blob.core.windows.net``` <br>```wsuk1westprod.blob.core.windows.net``` 
United States | ```us.vortex-win.data.microsoft.com``` <br> ```ussus1eastprod.blob.core.windows.net``` <br> ```ussus1westprod.blob.core.windows.net``` <br> ```ussus2eastprod.blob.core.windows.net``` <br> ```ussus2westprod.blob.core.windows.net``` <br> ```ussus3eastprod.blob.core.windows.net``` <br> ```ussus3westprod.blob.core.windows.net``` <br> ```ussus4eastprod.blob.core.windows.net``` <br> ```ussus4westprod.blob.core.windows.net``` <br> ```us-v20.events.data.microsoft.com``` <br> ```winatp-gw-cus.microsoft.com``` <br> ```winatp-gw-eus.microsoft.com``` <br> ```wsus1eastprod.blob.core.windows.net``` <br> ```wsus1westprod.blob.core.windows.net``` <br> ```wsus2eastprod.blob.core.windows.net``` <br> ```wsus2westprod.blob.core.windows.net```


If a proxy or firewall is blocking anonymous traffic, as Microsoft Defender ATP sensor is connecting from system context, make sure anonymous traffic is permitted in the previously listed URLs.

###  Microsoft Defender ATP service backend IP range

If you network devices don't support the URLs white-listed in the prior section, you can use the following information.

Microsoft Defender ATP is built on Azure cloud, deployed in the following regions:

- \+\<Region Name="uswestcentral">
- \+\<Region Name="useast2">
- \+\<Region Name="useast">
- \+\<Region Name="europenorth">
- \+\<Region Name="europewest">
- \+\<Region Name="uksouth">
- \+\<Region Name="ukwest">

You can find the Azure IP range on [Microsoft Azure Datacenter IP Ranges](https://www.microsoft.com/en-us/download/details.aspx?id=41653).

> [!NOTE]
> As a cloud-based solution, the IP range can change. It's recommended you move to DNS resolving setting.

## Onboarding using System Center Configuration Manager 
### Collection creation
To onboard Windows 10 devices with System Center Configuration Manager, the
deployment can target either and existing collection or a new collection can be
created for testing. The onboarding like group policy or manual method does
not install any agent on the system. Within the Configuration Manager console
the onboarding process will be configured as part of the compliance settings
within the console. Any system that receives this required configuration will
maintain that configuration for as long as the Configuration Manager client
continues to receive this policy from the management point. Follow the steps
below to onboard systems with Configuration Manager.

1. In System Center Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Device Collections**.            

    ![Image of System Center Configuration Manager wizard](images/sccm-device-collections.png)

2. Right Click **Device Collection** and select **Create Device Collection**.

    ![Image of System Center Configuration Manager wizard](images/sccm-create-device-collection.png)

3. Provide a **Name** and **Limiting Collection**, then select **Next**.

    ![Image of System Center Configuration Manager wizard](images/sccm-limiting-collection.png)

4. Select **Add Rule** and choose **Query Rule**.

    ![Image of System Center Configuration Manager wizard](images/sccm-query-rule.png)

5.  Click **Next** on the **Direct Membership Wizard** and click on **Edit Query Statement**.

     ![Image of System Center Configuration Manager wizard](images/sccm-direct-membership.png)

6. Select **Criteria** and then choose the star icon.

     ![Image of System Center Configuration Manager wizard](images/sccm-criteria.png)

7. Keep criterion type as **simple value**, choose where as **Operating System - build number**, operator as **is equal to** and value **10240** and click on **OK**.

    ![Image of System Center Configuration Manager wizard](images/sccm-simple-value.png)

8. Select **Next** and **Close**.

    ![Image of System Center Configuration Manager wizard](images/sccm-membership-rules.png)

9. Select **Next**.

    ![Image of System Center Configuration Manager wizard](images/sccm-confirm.png)

After completing this task, you now have a device collection with all the Windows 10 endpoints in the environment. 

## Endpoint detection and response
### Windows 10
From within the Microsoft Defender Security Center it is possible to download
the '.onboarding' policy that can be used to create the policy in System Center Configuration
Manager and deploy that policy to Windows 10 devices.

1. From a Microsoft Defender Security Center Portal, select [Settings and then Onboarding](https://securitycenter.windows.com/preferences2/onboarding).



2. Under Deployment method select the supported version of **System Center Configuration Manager**.

    ![Image of Microsoft Defender ATP onboarding wizard](images/mdatp-onboarding-wizard.png)

3.	Select **Download package**.

    ![Image of Microsoft Defender ATP onboarding wizard](images/mdatp-download-package.png)

4. Save the package to an accessible location.
5. In  System Center Configuration Manager, navigate to: **Assets and Compliance > Overview > Endpoint Protection > Microsoft Defender ATP Policies**.

6. Right-click **Microsoft Defender ATP Policies** and select **Create Microsoft Defender ATP Policy**.

    ![Image of System Center Configuration Manager wizard](images/sccm-create-policy.png)

7. Enter the name and description, verify **Onboarding** is selected, then select **Next**.

    ![Image of System Center Configuration Manager wizard](images/sccm-policy-name.png)

8. Click **Browse**.

9. Navigate to the location of the downloaded file from step 4 above.

    ![Image of configuration settings](images/1b9f85316170cfe24b46330afa8517d5.png)

10. Click **Next**.
11. Configure the Agent with the appropriate samples (**None** or **All file types**).

    ![Image of configuration settings](images/1b9f85316170cfe24b46330afa8517d5.png)

12. Select the appropriate telemetry (**Normal** or **Expedited**) then click **Next**.

    ![Image of configuration settings](images/13201b477bc9a9ae0020814915fe80cc.png)

14. Verify the configuration, then click **Next**.

     ![Image of configuration settings](images/adc17988b0984ca2aa3ff8f41ddacaf9.png)

15. Click **Close** when the Wizard completes.

16.  In the System Center Configuration Manager console, right-click the Microsoft Defender ATP policy you just created and select **Deploy**.

     ![Image of configuration settings](images/4a37f3687e6ff53a593d3670b1dad3aa.png)

17. On the right panel, select the previously created collection and click **OK**.

    ![Image of configuration settings](images/26efa2711bca78f6b6d73712f86b5bd9.png)


### Previous versions of Windows Client (Windows 7 and Windows 8.1)
Follow the steps below to identify the Microsoft Defender ATP Workspace ID and Workspace Key, that will be required for the onboarding of previous versions of Windows.

1. From a Microsoft Defender Security Center Portal, select **Settings > Onboarding**.

2. Under operating system choose **Windows 7 SP1 and 8.1**.

    ![Image of onboarding](images/91b738e4b97c4272fd6d438d8c2d5269.png)

3. Copy the **Workspace ID** and **Workspace Key** and save them. They will be used later in the process.

Before the systems can be onboarded into the workspace, the deployment scripts need to be updated to contain the correct information. Failure to do so will result in the systems not being properly onboarded. Depending on the deployment method, this step may have already been completed.

Edit the InstallMMA.cmd with a text editor, such as notepad and update the
following lines and save the file:

   ![Image of onboarding](images/a22081b675da83e8f62a046ae6922b0d.png)

Edit the ConfiguerOMSAgent.vbs with a text editor, such as notepad, and update the following lines and save the file:

   ![Image of onboarding](images/09833d16df7f37eda97ea1d5009b651a.png)

Microsoft Monitoring Agent (MMA) is currently (as of January 2019) supported on the following Windows Operating
Systems:

-   Server SKUs: Windows Server 2008 SP1 or Newer

-   Client SKUs: Windows 7 SP1 and later

The MMA agent will need to be installed on Windows devices. To install the
agent, some systems will need to download the [Update for customer experience
and diagnostic
telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry)
in order to collect the data with MMA. These system versions include but may not
be limited to:

-   Windows 8.1

-   Windows 7

-   Windows Server 2016

-   Windows Server 2012 R2

-   Windows Server 2008 R2

Specifically, for Windows 7 SP1, the following patches must be installed:

-   Install
    [KB4074598](https://support.microsoft.com/help/4074598/windows-7-update-kb4074598)

-   Install either [.NET Framework
    4.5](https://www.microsoft.com/en-us/download/details.aspx?id=30653) (or
    later) **or**
    [KB3154518](https://support.microsoft.com/help/3154518/support-for-tls-system-default-versions-included-in-the-net-framework).
    Do not install both on the same system.

To deploy the MMA with System Center Configuration Manager, follow the steps
below to utilize the provided batch files to onboard the systems. The CMD file
when executed, will require the system to copy files from a network share by the
System, the System will install MMA, Install the DependencyAgent, and configure
MMA for enrollment into the workspace.


1. In  System Center Configuration Manager console, navigate to **Software
    Library**.

2.  Expand **Application Management**.

3.  Right-click **Packages**  then select **Create Package**.

4. Provide a Name for the package, then click **Next**

    ![Image of System Center Configuration Manager console](images/e156a7ef87ea6472d57a3dc594bf08c2.png)

5. Verify **Standard Program** is selected.

   ![Image of System Center Configuration Manager console](images/227f249bcb6e7f29c4d43aa1ffaccd20.png)

6.  Click **Next**.

    ![Image of System Center Configuration Manager console](images/2c7f9d05a2ebd19607cc76b6933b945b.png)

7. Enter a program name.

8.  Browse to the location of the InstallMMA.cmd.

9.  Set Run to **Hidden**.

10.  Set **Program can run** to **Whether or not a user is logged on**.

11.  Click **Next**.

12.  Set the **Maximum allowed run time** to 720.

13.  Click **Next**.

   ![Image of System Center Configuration Manager console](images/262a41839704d6da2bbd72ed6b4a826a.png)

14. Verify the configuration, then click **Next**.

    ![Image of System Center Configuration Manager console](images/a9d3cd78aa5ca90d3c2fbd2e57618faf.png)

15. Click **Next**.

16. Click **Close**.

17.  In the System Center Configuration Manager console, right-click the Microsoft Defender ATP
    Onboarding Package just created and select **Deploy**.

18. On the right panel select the appropriate collection.

19.  Click **OK**.

## Next generation protection 
Microsoft Defender Antivirus is a built-in antimalware solution that provides next generation protection for desktops, portable computers, and servers.

1. In the System Center Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Antimalware Polices** and choose **Create Antimalware Policy**.

    ![Image of antimalware policy](images/9736e0358e86bc778ce1bd4c516adb8b.png)

2. Select **Scheduled scans**, **Scan settings**, **Default actions**, **Real-time protection**, **Exclusion settings**, **Advanced**, **Threat overrides**, **Cloud Protection Service** and **Security intelligence   updates** and choose **OK**.

    ![Image of next generation protection pane](images/1566ad81bae3d714cc9e0d47575a8cbd.png)

    In certain industries or some select enterprise customers might have specific
needs on how Antivirus is configured.

  
    [Quick scan versus full scan and custom scan](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/scheduled-catch-up-scans-windows-defender-antivirus#quick-scan-versus-full-scan-and-custom-scan)

    For more details, see [Windows Security configuration framework](https://docs.microsoft.com/windows/security/threat-protection/windows-security-configuration-framework/windows-security-configuration-framework)
  
    
    ![Image of next generation protection pane](images/cd7daeb392ad5a36f2d3a15d650f1e96.png)

    ![Image of next generation protection pane](images/36c7c2ed737f2f4b54918a4f20791d4b.png)

    ![Image of next generation protection pane](images/a28afc02c1940d5220b233640364970c.png)

    ![Image of next generation protection pane](images/5420a8790c550f39f189830775a6d4c9.png)

    ![Image of next generation protection pane](images/33f08a38f2f4dd12a364f8eac95e8c6b.png)

    ![Image of next generation protection pane](images/41b9a023bc96364062c2041a8f5c344e.png)

    ![Image of next generation protection pane](images/945c9c5d66797037c3caeaa5c19f135c.png)

    ![Image of next generation protection pane](images/3876ca687391bfc0ce215d221c683970.png)

3. Right-click on the newly created antimalware policy and select **Deploy** .

    ![Image of next generation protection pane](images/f5508317cd8c7870627cb4726acd5f3d.png)

4. Target the new antimalware policy to your Windows 10 collection and click **OK**.

     ![Image of next generation protection pane](images/26efa2711bca78f6b6d73712f86b5bd9.png)

After completing this task, you now have successfully configured Windows
Defender Antivirus.

## Attack Surface Reduction
The attack surface reduction pillar of Microsoft Defender ATP includes the feature set that is available under Exploit Guard. Attack surface reduction (ASR) rules, Controlled Folder Access, Network Protection and Exploit
Protection. All these features provide an audit mode and a block mode. In audit mode there is no end user impact all it does is collect additional telemetry and make it available in the Microsoft Defender Security Center. The goal with a deployment is to step by step move security controls into block mode.

To set ASR rules in Audit mode:

1. In the System Center Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

   ![Image of System Center Configuration Manager console](images/728c10ef26042bbdbcd270b6343f1a8a.png)


2.  Select **Attack Surface Reduction**.
   

3. Set rules to **Audit** and click **Next**.

    ![Image of System Center Configuration Manager console](images/d18e40c9e60aecf1f9a93065cb7567bd.png)

4. Confirm the new Exploit Guard policy by clicking on **Next**.

    ![Image of System Center Configuration Manager console](images/0a6536f2c4024c08709cac8fcf800060.png)

    
5. Once the policy is created click **Close**.

    ![Image of System Center Configuration Manager console](images/95d23a07c2c8bc79176788f28cef7557.png)

    

6.  Right-click on the newly created policy and choose **Deploy**.
    
    ![Image of System Center Configuration Manager console](images/8999dd697e3b495c04eb911f8b68a1ef.png)

7. Target the policy to the newly created Windows 10 collection and click **OK**.

    ![Image of System Center Configuration Manager console](images/0ccfe3e803be4b56c668b220b51da7f7.png)

After completing this task, you now have successfully configured ASR rules in audit mode.  
  
Below are additional steps to verify whether ASR rules are correctly applied to
endpoints. (This may take few minutes)


1. From a web browser, navigate to <https://securitycenter.windows.com>.

2.  Select **Configuration management** from left side menu.

    ![A screenshot of a cell phone Description automatically generated](images/653db482c7ccaf31d06f29fb2aa24b7a.png)

3. Click **Go to attack surface management** in the Attack surface management panel. 
    
    ![Image of attack surface management](images/3a01c7970ce3ec977a35883c0a01f0a2.png)

4. Click **Configuration** tab in Attack Surface reduction rules reports. It shows ASR rules configuration overview and ASR rules status on each devices.

    ![A screenshot of attack surface reduction rules reports](images/f91f406e6e0aae197a947d3b0e8b2d0d.png)

5. Click each device shows configuration details of ASR rules.

    ![A screenshot of attack surface reduction rules reports](images/24bfb16ed561cbb468bd8ce51130ca9d.png)

See [Optimize ASR rule deployment and
detections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-asr)   for more details.  


### To set Network Protection rules in Audit mode:
1. In the System Center Configuration Manager console, navigate to **Assets and  Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

    ![A screenshot System Center Confirugatiom Manager](images/728c10ef26042bbdbcd270b6343f1a8a.png)

2. Select **Network protection**.

3. Set the setting to **Audit** and click **Next**. 

    ![A screenshot System Center Confirugatiom Manager](images/c039b2e05dba1ade6fb4512456380c9f.png)

4. Confirm the new Exploit Guard Policy by clicking **Next**.
    
    ![A screenshot Exploit GUard policy](images/0a6536f2c4024c08709cac8fcf800060.png)

5. Once the policy is created click on **Close**.

    ![A screenshot Exploit GUard policy](images/95d23a07c2c8bc79176788f28cef7557.png)

6. Right-click on the newly created policy and choose **Deploy**.

    ![A screenshot System Center Configuration Manager](images/8999dd697e3b495c04eb911f8b68a1ef.png)

7. Select the policy to the newly created Windows 10 collection and choose **OK**.

    ![A screenshot System Center Configuration Manager](images/0ccfe3e803be4b56c668b220b51da7f7.png)

After completing this task, you now have successfully configured Network
Protection in audit mode.

### To set Controlled Folder Access rules in Audit mode:

1. In the System Center Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

    ![A screenshot of System Center Configuration Manager](images/728c10ef26042bbdbcd270b6343f1a8a.png)

2. Select **Controlled folder access**.
    
3. Set the configuration to **Audit** and click **Next**.

    ![A screenshot of System Center Configuration Manager](images/a8b934dab2dbba289cf64fe30e0e8aa4.png)    
    
4. Confirm the new Exploit Guard Policy by clicking on **Next**.

    ![A screenshot of System Center Configuration Manager](images/0a6536f2c4024c08709cac8fcf800060.png)

5. Once the policy is created click on **Close**.

    ![A screenshot of System Center Configuration Manager](images/95d23a07c2c8bc79176788f28cef7557.png)

6. Right-click on the newly created policy and choose **Deploy**.

    ![A screenshot of System Center Configuration Manager](images/8999dd697e3b495c04eb911f8b68a1ef.png)

7.  Target the policy to the newly created Windows 10 collection and click **OK**.

    ![A screenshot of System Center Configuration Manager](images/0ccfe3e803be4b56c668b220b51da7f7.png)

After completing this task, you now have successfully configured Controlled folder access in audit mode.

