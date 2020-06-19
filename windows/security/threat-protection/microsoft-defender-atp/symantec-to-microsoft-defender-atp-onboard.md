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


|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Phase 1: Prepare](symantec-to-microsoft-defender-atp-prepare.md) |[![Phase 2: Set up](images/setup.png)](symantec-to-microsoft-defender-atp-setup.md)<br/>[Phase 2: Set up](symantec-to-microsoft-defender-atp-setup.md) |![Phase 3: Onboard](images/onboard.png)<br/>Phase 3: Onboard |
|--|--|--|
|| |*You are here!* |


**Welcome to Phase 3 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#the-migration-process)**. This migration phase includes the following steps:

1. 
2. 
3.  

## Onboard devices to Microsoft Defender ATP

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.

2. Choose **Settings** > **Device management** > **Onboarding**. 

3. In the **Select operating system to start onboarding process** list, select an operating system. 

4. Under **Deployment method**, select an option.
 
Deployment methods vary, depending on which operating system is selected. Refer to the resources listed in the table below to get help with onboarding.

|Operating system  |Method  |
|---------|---------|
|Windows 10     |[Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-gp)<br/><br/>[Microsoft Endpoing Configuration Manager](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm)<br/><br/>[Mobile Device Management (Intune)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-mdm)<br/><br/>[Local script](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-script)         |
|Windows 8.1 Enterprise <br/><br/>Windows 8.1 Pro <br/><br/>Windows 7 SP1 Enterprise <br/><br/>Windows 7 SP1 Pro     | [Microsoft Monitoring Agent](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-downlevel#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-atp)        |
|Windows Server 2019 and later <br/><br/>Windows Server 2019 core edition <br/><br/>Windows Server version 1803 and later |[Local script](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-script) <br/><br/>[Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-gp) <br/><br/>[Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm) <br/><br/>[System Center Configuration Manager 2012 / 2012 R2 1511 / 1602](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-sccm#onboard-windows-10-machines-using-earlier-versions-of-system-center-configuration-manager) <br/><br/>[VDI onboarding scripts for non-persistent machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints-vdi)   |
|Windows Server 2016 <br/><br/>Windows Server 2012 R2 <br/><br/>Windows Server 2008 R2 SP1  |[Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-server-endpoints#option-1-onboard-servers-through-microsoft-defender-security-center)<br/><br/>[Azure Security Center](https://docs.microsoft.com/azure/security-center/security-center-wdatp) |



## Uninstall Symantec

*WORK IN PROGRESS*

Uninstall 3rd party EDR (RSA NetWitness)

Uninstall 3rd party SEP AV
1)	Unblock password (Anti-tamper, in order to remove)
2)	Refresh SEP policy 
<Add the command here.>
3)	Uninstall the Endpoint Protection client using the command prompt
https://support.symantec.com/us/en/article.tech102470.html

There is an example for both PowerShell and DOS.  This script could be automated to check for a ReturnValue to equal zero and if not then run “CleanWipe”

Download the CleanWipe removal tool to uninstall Endpoint Protection
https://support.symantec.com/us/en/article.howto124983.html
Note:  SEP 14 now forces end-user interaction.

Article has the download and readme.
 
Select all apps in the tool and once completed it will require a reboot and once you log back in the software will continue and show completion.  You will need to periodically check this article as they update the software versions often.  You can also verify when running if it requires an update.

[Uninstall Symantec Endpoint Protection](https://knowledge.broadcom.com/external/article/156148/uninstall-symantec-endpoint-protection.html)


## Next steps

**Congratulations**! You have completed your [migration from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)! You have two next steps:

- After you have Microsoft Defender ATP set up and deployed, your security operations team can **[manage the various features and capabilities of Microsoft Defender ATP, post migration](microsoft-defender-atp-post-migration-management.md)**.

- **[Visit your security operations dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard)** in the Microsoft Defender Security Center 