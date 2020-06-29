---
title: Phase 3 - Onboard to Microsoft Defender ATP
description: Make the switch from Symantec to Microsoft Defender ATP
keywords: migration, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Migrate from Symantec - Phase 3: Onboard to Microsoft Defender ATP

:::image type="content" source="images/SymantecMigration-DefenderATP-phase3.png" alt-text="Phase 3: Onboard":::

**Welcome to Phase 3 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#the-migration-process)**. This migration phase includes the following steps:

1. [Onboard devices to Microsoft Defender ATP](#onboard-devices-to-microsoft-defender-atp).
2. [Run a detection test](#run-a-detection-test).
3. [Uninstall Symantec](#uninstall-symantec).

## Onboard devices to Microsoft Defender ATP

1. Go to the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)) and sign in.

2. Choose **Settings** > **Device management** > **Onboarding**. 

3. In the **Select operating system to start onboarding process** list, select an operating system. 

4. Under **Deployment method**, select an option. Follow the links and prompts to onboard your organization's devices. Need help? See [Onboarding methods](#onboarding-methods).

### Onboarding methods
 
Deployment methods vary, depending on which operating system is selected. Refer to the resources listed in the table below to get help with onboarding.

|Operating system  |Method  |
|---------|---------|
|Windows 10     |- [Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-gp)<br/>- [Configuration Manager](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm)<br/>- [Mobile Device Management (Intune)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-mdm)<br/>- [Local script](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-script) <br/><br/>**NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.         |
|Windows 8.1 Enterprise <br/>Windows 8.1 Pro <br/>Windows 7 SP1 Enterprise <br/>Windows 7 SP1 Pro     | [Microsoft Monitoring Agent](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-downlevel#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-atp)        |
|Windows Server 2019 and later <br/>Windows Server 2019 core edition <br/>Windows Server version 1803 and later |- [Local script](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-script) <br/>- [Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-gp) <br/>- [Configuration Manager](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm) <br/>- [System Center Configuration Manager](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm#onboard-windows-10-machines-using-earlier-versions-of-system-center-configuration-manager) <br/>- [VDI onboarding scripts for non-persistent machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-vdi) <br/><br/>**NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.    |
|Windows Server 2016 <br/>Windows Server 2012 R2 <br/>Windows Server 2008 R2 SP1  |- [Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-server-endpoints#option-1-onboard-servers-through-microsoft-defender-security-center)<br/>- [Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-wdatp) |
|macOS<br/>iOS<br/>Linux |[Onboard non-Windows machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-non-windows)  |

## Run a detection test

To verify that your onboarded devices are properly connected to Microsoft Defender ATP, you can run a detection test.


|Operating system  |Guidance  |
|---------|---------|
|Windows 10 <br/>Windows Server 2019 <br/>Windows Server, version 1803 <br/>Windows Server 2016 <br/>Windows Server 2012 R2     |See [Run a detection test](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/run-detection-test). <br/><br/>Visit the Microsoft Defender ATP demo scenarios site ([https://demo.wd.microsoft.com](https://demo.wd.microsoft.com)) and try one or more of the scenarios. For example, try the **Cloud-delivered protection** demo scenario.         |
|macOS<br/>- 10.15 (Catalina)<br/>- 10.14 (Mojave)<br/>- 10.13 (High Sierra)     |Using Terminal, run the following command: <br/>`$ mdatp --connectivity-test` <br/><br/>For more information, see [Microsoft Defender Advanced Threat Protection for Mac](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac).        |
|Linux |1. Run the following command, and look for a result of **1**: <br/>`mdatp health --field real_time_protection_enabled`. <br/><br/>2. Open a Terminal window, and run the following command: <br/>`curl -o ~/Downloads/eicar.com.txt https://www.eicar.org/download/eicar.com.txt`. <br/><br/>3. Run the following command to list any detected threats: <br/>`mdatp threat list`. <br/><br/>For more information, see [Microsoft Defender ATP for Linux](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux). |

## Uninstall Symantec

Now that you have onboarded your organization's devices to Microsoft Defender ATP, your next step is to uninstall Symantec.

1. [Disable Tamper Protection](https://knowledge.broadcom.com/external/article?legacyId=tech192023) in Symantec.

2. Delete the uninstall password for Symantec:
   1. On your Windows devices, open Registry Editor as an administrator.
   2. Go to `HKEY_LOCAL_MACHINE\SOFTWARE\Symantec\Symantec Endpoint Protection\SMC`.
   3. Look for an entry named **SmcInstData**. Right-click the item, and then choose **Delete**. 

3. Remove Symantec from your devices. You can use SEP Manager to perform this task. See [Configuring client packages to uninstall existing security software](https://techdocs.broadcom.com/content/broadcom/techdocs/symantec-security-software/endpoint-security-and-management/endpoint-protection/all/Managing-a-custom-installation/preparing-for-client-installation-v16742985-d21e7/configuring-client-packages-to-uninstall-existing-v73569396-d21e2634.html).
  

> [!TIP]
> Need help? See the following Broadcom resources: 
> - [Uninstall Symantec Endpoint Protection](https://knowledge.broadcom.com/external/article/156148/uninstall-symantec-endpoint-protection.html).
> -  Windows devices: [Manually uninstall Endpoint Protection 14 clients on Windows](https://knowledge.broadcom.com/external/article?articleId=170040).
> - macOS computers: [Remove Symantec software for Mac using RemoveSymantecMacFiles](https://knowledge.broadcom.com/external/article?articleId=151387).
> - Linux devices: [Frequently Asked Questions for Endpoint Protection for Linux](https://knowledge.broadcom.com/external/article?articleId=162054). 

## Next steps

**Congratulations**! You have completed your [migration from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#the-migration-process)! 

- [Visit your security operations dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard) in the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)). 