---
title: Onboard to the Microsoft Defender ATP service
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365solution-endpointprotect  
ms.topic: article
---

# Onboard to the Microsoft Defender ATP service
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Deploying Microsoft Defender ATP is a three-phase process:

<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;" >
      <a href= "https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment"> 
        <img src="images/prepare.png" alt="Prepare to deploy Microsoft Defender ATP" title="Prepare" />
      <br/>Phase 1: Prepare </a><br>
    </td>
     <td align="center">
      <a href="https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment">
        <img src="images/setup.png" alt="Setup the Microsoft Defender ATP service" title="Setup" />
      <br/>Phase 2: Set up </a><br>
    </td>
    <td align="center" bgcolor="#d5f5e3">
      <a href="https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboarding">
        <img src="images/onboard.png" alt="Onboard" title="Onboard to the Microsoft Defender ATP service" />
      <br/>Phase 3: Onboard </a><br>
</td>


  </tr>
</table>
You are currently in the onboarding phase.



To deploy Microsoft Defender ATP, you'll need to onboard devices to the service. Depending on the architecture of your environment, you'll need to use the appropriate management tool that best suites your requirements. 

The deployment guide uses Microsoft Endpoint Configuration Manager as the management tool to demonstrate an end-to-end deployment. 

This article will guide you on:
- Setting up Microsoft Endpoint Configuration Manager 
- Endpoint detection and response configuration
- Next-generation protection configuration
- Attack surface reduction configuration

## Onboarding using Microsoft Endpoint Configuration Manager 
### Collection creation
To onboard Windows 10 devices with Microsoft Endpoint Configuration Manager, the
deployment can target either and existing collection or a new collection can be
created for testing. The onboarding like group policy or manual method does
not install any agent on the system. Within the Configuration Manager console
the onboarding process will be configured as part of the compliance settings
within the console. Any system that receives this required configuration will
maintain that configuration for as long as the Configuration Manager client
continues to receive this policy from the management point. Follow the steps
below to onboard systems with Configuration Manager.

1. In Microsoft Endpoint Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Device Collections**.            

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-device-collections.png)

2. Right Click **Device Collection** and select **Create Device Collection**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-create-device-collection.png)

3. Provide a **Name** and **Limiting Collection**, then select **Next**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-limiting-collection.png)

4. Select **Add Rule** and choose **Query Rule**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-query-rule.png)

5.  Click **Next** on the **Direct Membership Wizard** and click on **Edit Query Statement**.

     ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-direct-membership.png)

6. Select **Criteria** and then choose the star icon.

     ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-criteria.png)

7. Keep criterion type as **simple value**, choose where as **Operating System - build number**, operator as **is greater than or equal to** and value **14393** and click on **OK**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-simple-value.png)

8. Select **Next** and **Close**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-membership-rules.png)

9. Select **Next**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-confirm.png)

After completing this task, you now have a device collection with all the Windows 10 endpoints in the environment. 

## Endpoint detection and response
### Windows 10
From within the Microsoft Defender Security Center it is possible to download
the '.onboarding' policy that can be used to create the policy in System Center Configuration
Manager and deploy that policy to Windows 10 devices.

1. From a Microsoft Defender Security Center Portal, select [Settings and then Onboarding](https://securitycenter.windows.com/preferences2/onboarding).



2. Under Deployment method select the supported version of **Microsoft Endpoint Configuration Manager**.

    ![Image of Microsoft Defender ATP onboarding wizard](images/mdatp-onboarding-wizard.png)

3. Select **Download package**.

    ![Image of Microsoft Defender ATP onboarding wizard](images/mdatp-download-package.png)

4. Save the package to an accessible location.
5. In  Microsoft Endpoint Configuration Manager, navigate to: **Assets and Compliance > Overview > Endpoint Protection > Microsoft Defender ATP Policies**.

6. Right-click **Microsoft Defender ATP Policies** and select **Create Microsoft Defender ATP Policy**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-create-policy.png)

7. Enter the name and description, verify **Onboarding** is selected, then select **Next**.

    ![Image of Microsoft Endpoint Configuration Manager wizard](images/configmgr-policy-name.png)

8. Click **Browse**.

9. Navigate to the location of the downloaded file from step 4 above.

10. Click **Next**.
11. Configure the Agent with the appropriate samples (**None** or **All file types**).

    ![Image of configuration settings](images/configmgr-config-settings.png)

12. Select the appropriate telemetry (**Normal** or **Expedited**) then click **Next**.

    ![Image of configuration settings](images/configmgr-telemetry.png)

14. Verify the configuration, then click **Next**.

     ![Image of configuration settings](images/configmgr-verify-configuration.png)

15. Click **Close** when the Wizard completes.

16.  In the Microsoft Endpoint Configuration Manager console, right-click the Microsoft Defender ATP policy you just created and select **Deploy**.

     ![Image of configuration settings](images/configmgr-deploy.png)

17. On the right panel, select the previously created collection and click **OK**.

    ![Image of configuration settings](images/configmgr-select-collection.png)


### Previous versions of Windows Client (Windows 7 and Windows 8.1)
Follow the steps below to identify the Microsoft Defender ATP Workspace ID and Workspace Key, that will be required for the onboarding of previous versions of Windows.

1. From a Microsoft Defender Security Center Portal, select **Settings > Onboarding**.

2. Under operating system choose **Windows 7 SP1 and 8.1**.

3. Copy the **Workspace ID** and **Workspace Key** and save them. They will be used later in the process.

    ![Image of onboarding](images/91b738e4b97c4272fd6d438d8c2d5269.png)

4. Install the Microsoft Monitoring Agent (MMA). <br>
    MMA is currently (as of January 2019) supported on the following Windows Operating
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

5. If you're using a proxy to connect to the Internet see the Configure proxy settings section.

Once completed, you should see onboarded endpoints in the portal within an hour.

## next-generation protection 
Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers.

1. In the Microsoft Endpoint Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Antimalware Polices** and choose **Create Antimalware Policy**.

    ![Image of antimalware policy](images/9736e0358e86bc778ce1bd4c516adb8b.png)

2. Select **Scheduled scans**, **Scan settings**, **Default actions**, **Real-time protection**, **Exclusion settings**, **Advanced**, **Threat overrides**, **Cloud Protection Service** and **Security intelligence   updates** and choose **OK**.

    ![Image of next-generation protection pane](images/1566ad81bae3d714cc9e0d47575a8cbd.png)

    In certain industries or some select enterprise customers might have specific
needs on how Antivirus is configured.

  
    [Quick scan versus full scan and custom scan](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/scheduled-catch-up-scans-microsoft-defender-antivirus#quick-scan-versus-full-scan-and-custom-scan)

    For more details, see [Windows Security configuration framework](https://docs.microsoft.com/windows/security/threat-protection/windows-security-configuration-framework/windows-security-configuration-framework)
  
    
    ![Image of next-generation protection pane](images/cd7daeb392ad5a36f2d3a15d650f1e96.png)

    ![Image of next-generation protection pane](images/36c7c2ed737f2f4b54918a4f20791d4b.png)

    ![Image of next-generation protection pane](images/a28afc02c1940d5220b233640364970c.png)

    ![Image of next-generation protection pane](images/5420a8790c550f39f189830775a6d4c9.png)

    ![Image of next-generation protection pane](images/33f08a38f2f4dd12a364f8eac95e8c6b.png)

    ![Image of next-generation protection pane](images/41b9a023bc96364062c2041a8f5c344e.png)

    ![Image of next-generation protection pane](images/945c9c5d66797037c3caeaa5c19f135c.png)

    ![Image of next-generation protection pane](images/3876ca687391bfc0ce215d221c683970.png)

3. Right-click on the newly created antimalware policy and select **Deploy**.

    ![Image of next-generation protection pane](images/f5508317cd8c7870627cb4726acd5f3d.png)

4. Target the new antimalware policy to your Windows 10 collection and click **OK**.

     ![Image of next-generation protection pane](images/configmgr-select-collection.png)

After completing this task, you now have successfully configured Windows
Defender Antivirus.

## Attack surface reduction
The attack surface reduction pillar of Microsoft Defender ATP includes the feature set that is available under Exploit Guard. Attack surface reduction (ASR) rules, Controlled Folder Access, Network Protection and Exploit
Protection. 

All these features provide an audit mode and a block mode. In audit mode there is no end-user impact. All it does is collect additional telemetry and make it available in the Microsoft Defender Security Center. The goal with a deployment is to step-by-step move security controls into block mode.

To set ASR rules in Audit mode:

1. In the Microsoft Endpoint Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

   ![Image of Microsoft Endpoint Configuration Manager console](images/728c10ef26042bbdbcd270b6343f1a8a.png)


2.  Select **Attack Surface Reduction**.
   

3. Set rules to **Audit** and click **Next**.

    ![Image of Microsoft Endpoint Configuration Manager console](images/d18e40c9e60aecf1f9a93065cb7567bd.png)

4. Confirm the new Exploit Guard policy by clicking on **Next**.

    ![Image of Microsoft Endpoint Configuration Manager console](images/0a6536f2c4024c08709cac8fcf800060.png)

    
5. Once the policy is created click **Close**.

    ![Image of Microsoft Endpoint Configuration Manager console](images/95d23a07c2c8bc79176788f28cef7557.png)

    

6.  Right-click on the newly created policy and choose **Deploy**.
    
    ![Image of Microsoft Endpoint Configuration Manager console](images/8999dd697e3b495c04eb911f8b68a1ef.png)

7. Target the policy to the newly created Windows 10 collection and click **OK**.

    ![Image of Microsoft Endpoint Configuration Manager console](images/0ccfe3e803be4b56c668b220b51da7f7.png)

After completing this task, you now have successfully configured ASR rules in audit mode.  
  
Below are additional steps to verify whether ASR rules are correctly applied to
endpoints. (This may take few minutes)


1. From a web browser, navigate to <https://securitycenter.windows.com>.

2.  Select **Configuration management** from left side menu.

3. Click **Go to attack surface management** in the Attack surface management panel. 
    
    ![Image of attack surface management](images/security-center-attack-surface-mgnt-tile.png)

4. Click **Configuration** tab in Attack surface reduction rules reports. It shows ASR rules configuration overview and ASR rules status on each devices.

    ![A screenshot of attack surface reduction rules reports](images/f91f406e6e0aae197a947d3b0e8b2d0d.png)

5. Click each device shows configuration details of ASR rules.

    ![A screenshot of attack surface reduction rules reports](images/24bfb16ed561cbb468bd8ce51130ca9d.png)

See [Optimize ASR rule deployment and
detections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-asr)   for more details.  


### To set Network Protection rules in Audit mode:
1. In the Microsoft Endpoint Configuration Manager console, navigate to **Assets and  Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

    ![A screenshot System Center Configuration Manager](images/728c10ef26042bbdbcd270b6343f1a8a.png)

2. Select **Network protection**.

3. Set the setting to **Audit** and click **Next**. 

    ![A screenshot System Center Confirugatiom Manager](images/c039b2e05dba1ade6fb4512456380c9f.png)

4. Confirm the new Exploit Guard Policy by clicking **Next**.
    
    ![A screenshot Exploit GUard policy](images/0a6536f2c4024c08709cac8fcf800060.png)

5. Once the policy is created click on **Close**.

    ![A screenshot Exploit GUard policy](images/95d23a07c2c8bc79176788f28cef7557.png)

6. Right-click on the newly created policy and choose **Deploy**.

    ![A screenshot Microsoft Endpoint Configuration Manager ](images/8999dd697e3b495c04eb911f8b68a1ef.png)

7. Select the policy to the newly created Windows 10 collection and choose **OK**.

    ![A screenshot Microsoft Endpoint Configuration Manager ](images/0ccfe3e803be4b56c668b220b51da7f7.png)

After completing this task, you now have successfully configured Network
Protection in audit mode.

### To set Controlled Folder Access rules in Audit mode:

1. In the Microsoft Endpoint Configuration Manager console, navigate to **Assets and Compliance \> Overview \> Endpoint Protection \> Windows Defender Exploit Guard** and choose **Create Exploit Guard Policy**.

    ![A screenshot of Microsoft Endpoint Configuration Manager ](images/728c10ef26042bbdbcd270b6343f1a8a.png)

2. Select **Controlled folder access**.
    
3. Set the configuration to **Audit** and click **Next**.

    ![A screenshot of Microsoft Endpoint Configuration Manager ](images/a8b934dab2dbba289cf64fe30e0e8aa4.png)    
    
4. Confirm the new Exploit Guard Policy by clicking on **Next**.

    ![A screenshot of Microsoft Endpoint Configuration Manager ](images/0a6536f2c4024c08709cac8fcf800060.png)

5. Once the policy is created click on **Close**.

    ![A screenshot of Microsoft Endpoint Configuration Manager ](images/95d23a07c2c8bc79176788f28cef7557.png)

6. Right-click on the newly created policy and choose **Deploy**.

    ![A screenshot of Microsoft Endpoint Configuration Manager ](images/8999dd697e3b495c04eb911f8b68a1ef.png)

7.  Target the policy to the newly created Windows 10 collection and click **OK**.

    ![A screenshot of Microsoft Endpoint Configuration Manager ](images/0ccfe3e803be4b56c668b220b51da7f7.png)

You have now successfully configured Controlled folder access in audit mode.

