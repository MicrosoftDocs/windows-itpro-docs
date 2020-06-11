---
title: Part 2 - Configure settings and exclusions for Microsoft Defender ATP and Symantec Endpoint Protection
description: Part 2 - Make the switch from Symantec to Microsoft Defender ATP
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

# Migrate from Symantec - Part 2: Configure settings and exclusions

**Welcome to Part 2 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)**. This migration phase includes the following steps:
1. [Set Microsoft Defender ATP to passive mode](#set-microsoft-defender-atp-to-passive-mode).
2. [Re-enable Microsoft Defender Antivirus](#re-enable-microsoft-defender-antivirus).
3. [Add Microsoft Defender ATP EDR to the exclusion list for Symantec](#add-microsoft-defender-atp-edr-to-the-exclusion-list-for-symantec).
4. [Add Symantec to your Microsoft Defender ATP EDR exclusion list](#add-symantec-to-your-microsoft-defender-atp-edr-exclusion-list). 

## Set Microsoft Defender ATP to passive mode

*This is from the Word doc - needs revision and clarification*

Set the registry key for Passive Mode in Windows Server 2016, Windows Server, 1803 (Core only mode) and Windows Server 2019.
HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection
ForceDefenderPassiveMode (dword) 1 (hex)
Note:  You can use “Group Policy Preference” (GPP) or LGPO or a “Package” in SCCM.


## Re-enable Microsoft Defender Antivirus

*This is from the Word doc - needs revision and clarification*

Many IT Architects/IT Administrators/Security Architects/Security Administrators might have disabled the “Windows Defender” service back in the Windows 7 SP1/Windows Server 2008 R2 SP1 days, when it was just an Antispyware or if you have a 3rd party AV.

Review in AGPM or GPMC to see if the following policy is set:
Computer configuration -> Administrative templates -> Windows components > Windows Defender Antivirus 
Turn off Windows Defender Antivirus
Disabled.
Recommendation:
Enabled.

Locally on a machine:
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender
DisableAntiSpyware (dword) 1 (hex)
Recommendation:
Needs to be set to 0 (hex) which means it’s enabled in order to work.
Requires a reboot.

<Future item:  Add a CMPivot query that provides the results of the entry>


Reference(s):
Use Group Policy settings to configure and manage Windows Defender Antivirus
https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/use-group-policy-windows-defender-antivirus  
Turn on Windows Defender to access company resources
https://docs.microsoft.com/en-us/intune-user-help/turn-on-defender-windows 


## Add Microsoft Defender ATP EDR to the exclusion list for Symantec

*This is from the Word doc - needs revision and clarification*


Add Microsoft Defender ATP EDR to the exclusion list for Symantec (or any other security products).

Adding MDATP (EDR) to the exclusion list to SEP/Trendmicro or any other security product and EDR (RSA Netwitness)
If you’ll have a 3rd party security product(s) that intercepts MDATP and not let the data get uploaded.
 
For these types of issues, please add exclusions for the following services/processes from the 3rd party security product(s):

For MDATP built-in to Windows 10, Windows Server 1803, and Windows Server 2019:
C:\Program Files\Windows Defender Advanced Threat Protection\MsSense.exe
C:\Program Files\Windows Defender Advanced Threat Protection\SenseCncProxy.exe
C:\Program Files\Windows Defender Advanced Threat Protection\SenseSampleUploader.exe
C:\Program Files\Windows Defender Advanced Threat Protection\SenseIR.exe 
Note:  On Windows 10 1803 and newer w/o the KB hotfix for April 2019.  Available in Windows 10 1709/1703 w/ the KB hotfix for April 2019.
 
For the down-level Windows OS versions (Windows 7/Windows Server 2008R2, Windows 8.1 and Windows Server 2012 R2/Windows Server 2016) that have MMA agent installed:
 
"C:\Program Files\Microsoft Monitoring Agent\Agent\Health Service State\Monitoring Host Temporary Files 6\45\MsSenseS.exe"
Note:  Where Monitoring Host Temporary Files 6\45 can be different numbered subfolders.
 
"C:\Program Files\Microsoft Monitoring Agent\Agent\AgentControlPanel.exe"
"C:\Program Files\Microsoft Monitoring Agent\Agent\HealthService.exe"
"C:\Program Files\Microsoft Monitoring Agent\Agent\HSLockdown.exe"
"C:\Program Files\Microsoft Monitoring Agent\Agent\MOMPerfSnapshotHelper.exe"
"C:\Program Files\Microsoft Monitoring Agent\Agent\MonitoringHost.exe"
"C:\Program Files\Microsoft Monitoring Agent\Agent\TestCloudConnection.exe"


## Add Symantec to your Microsoft Defender ATP EDR exclusion list

Add Symantec and your other security solutions to the Microsoft Defender ATP EDR exclusion list.

For MDATP (AV and EDR), there are two portions to ‘exclude’ 3rd party security products.
 
1.	You will need to add exclusions to Path and Process in the AV.
Process exclusion vs Path exclusion...
“Process exclusions” exclude everything a process touches but does not exclude the process itself from being scanned on access. Excluding the same EXE as both a “process” and “path exclusion” will exclude the file itself, as well as anything the file accesses. We discourage process exclusions that are 'name only' instead of full path, as they are less secure.
 
2.	And add in EDR, go to Indicator – File Hash.



**Congratulations**! You have completed part 2 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!


## Next step

- [Proceed to Part 3: Finish making the switch to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-part3.md)
