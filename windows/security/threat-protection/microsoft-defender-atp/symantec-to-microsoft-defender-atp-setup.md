---
title: Part 2 - Set up Microsoft Defender ATP
description: Part 2 - Set up Microsoft Defender ATP
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

# Migrate from Symantec - Part 2: Set up Microsoft Defender ATP


|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Phase 1: Prepare](symantec-to-microsoft-defender-atp-prepare.md) |![Phase 2: Set up](images/setup.png)<br/>Phase 2: Set up |[![Phase 3: Onboard](images/onboard.png)](symantec-to-microsoft-defender-atp-onboard.md)<br/>[Phase 3: Onboard](symantec-to-microsoft-defender-atp-onboard.md) |
|--|--|--|
||*You are here!* | |

**Welcome to Part 2 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)**. This migration phase includes the following steps:
1. [Set Microsoft Defender ATP to passive mode](#set-microsoft-defender-atp-to-passive-mode).
2. [Re-enable Microsoft Defender Antivirus](#re-enable-microsoft-defender-antivirus).
3. [Add Microsoft Defender ATP EDR to the exclusion list for Symantec](#add-microsoft-defender-atp-edr-to-the-exclusion-list-for-symantec).
4. [Add Symantec to your Microsoft Defender ATP exclusion list](#add-symantec-to-your-microsoft-defender-atp-exclusion-list). 

## Set Microsoft Defender ATP to passive mode

This procedure applies to devices running any of the following versions of Windows:
- Windows Server 2016
- Windows Server, version 1803 (core-only mode)
- Windows Server 2019

For those versions of Windows, you should set the registry key for Microsoft Defender ATP to passive mode. 

1. As an administrator on the device, open Registry Editor.

2. Navigate to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Windows Advanced Threat Protection`.

3. Edit (or create) a DWORD entry called **ForceDefenderPassiveMode**, and specify the following settings:
   - Set the DWORD's value to **1**.
   - Under **Base**, select **Hexidecimal**.

> [!NOTE]
> You can use other methods to perform this task, such as the following:
>- [Group Policy Preference](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn581922(v=ws.11))
>- [Local Group Policy Object tool](https://docs.microsoft.com/windows/security/threat-protection/security-compliance-toolkit-10#what-is-the-local-group-policy-object-lgpo-tool)
>- [A package in Configuration Manager](https://docs.microsoft.com/mem/configmgr/apps/deploy-use/packages-and-programs)


## Re-enable Microsoft Defender Antivirus

Considering your organization has been using Symantec as your primary antivirus solution, Microsoft Defender Antivirus (Microsoft Defender AV) is most likely disabled on your organization's Windows devices. This step of the migration process involves enabling Microsoft Defender AV. 

Microsoft Defender AV can run alongside your existing antivirus solution so that protection remains in place.

You can use one of several methods to enable Microsoft Defender AV as listed in the following table:


|Method  |What to do  |
|---------|---------|
|Control Panel in Windows     |Follow the guidance here: [Turn on Microsoft Defender AV](https://docs.microsoft.com/mem/intune/user-help/turn-on-defender-windows)         |
|[Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm/) <br/>or<br/>[Group Policy Management Console](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus)  |1. Go to `Computer configuration > Administrative templates > Windows components > Windows Defender Antivirus`. <br/>2. Look for a policy that was set to turn off Microsoft Defender Antivirus (or Windows Defender Antivirus). <br/>3. Disable that policy. This enables Microsoft Defender Antivirus.  |
|Registry Editor |1. As an administrator on the device, open Registry Editor.<br/>2. Navigate to `ComputerHKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`.<br/>3. Look for a DWORD entry called `DisableAntiSpyware`. If the entry exists, change its value from **1** (Hexidecimal base) to **0**. <br/>4. Reboot the device. |

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


## Add Symantec to your Microsoft Defender ATP exclusion list

*This is from the Word doc - needs revision and clarification*


Add Symantec and your other security solutions to the Microsoft Defender ATP EDR exclusion list.

For MDATP (AV and EDR), there are two portions to exclude third-party security products.


 
1.	You will need to add exclusions to Path and Process in the AV.
Process exclusion vs Path exclusion...
“Process exclusions” exclude everything a process touches but does not exclude the process itself from being scanned on access. Excluding the same EXE as both a “process” and “path exclusion” will exclude the file itself, as well as anything the file accesses. We discourage process exclusions that are 'name only' instead of full path, as they are less secure.
 
2.	And add in EDR, go to Indicator – File Hash.

### MDAV/SCEP

#### Option 1: In the Intune MDAV policies add the exclusions
 
Intune portal (portal.azure.com)
Device Configuration -> Profiles -> [Select your profile for AV] -> Properties -> Settings -> Microsoft Defender Antivirus -> Microsoft Defender Antivirus Exclusions 
 
Files and folders
       xxxxx
 
Processes
       xxxxx
 

#### Option 2: In the SCCM MDAV/SCEP policies add the exclusions

Assets and Compliance -> Endpoint Protection -> Antimalware Policies -> [Select the policy that you want to modify] -> Exclusion Settings  
Excluded files and folders:
xxxxx
Excluded processes:
xxxxx


#### Option 3: Create a new GPO w/ the MDAV exclusions

Computer Configuration -> Administrative Templates -> Windows Components -> Windows Defender Antivirus -> Exclusions
Path Exclusions
    xxxxx
Process Exclusions
    xxxxx

#### Option 4: Local gpo

You could setup the 3rd party security product exclusions (SEP or Tanium) on 1 machine by going to:
              Computer Configuration -> Administrative Templates -> Windows Components -> Windows Defender Antivirus -> Exclusions
              Path Exclusions
                           xxxxx
              Process Exclusions
                           xxxxx

#### Option 5: Export the following registry key:
 
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\exclusions
 
And import it in as a “regedit.exe /s MDAV_Exclusion.reg”

### MD ATP (EDR)

Indicators – Hash
Settings -> Indicators ->File hashes tab -> Add indicator
In the “Indicator” tab
File hash
Never
Click on Next 
In the “Action” tab
Response Action: Allow
Title:
Description:
Click on Next
In the “Scope” tab
Machine groups:
All machines in my scope
or
Select from list
Click on Next
In the “Summary” tab
Review
Click on “Save”

*More notes in the Word document:*

How can I find the file hashes of my 3rd party security products?
There are a few methods, in this e-mail, we will talk about the MDATP “Advanced Hunting” functionality and SCCM’s CMPivot.
 
MDATP “Advanced Hunting”
 
Note:  Change the “Last 7 days” to “Last 30 days”
 
find in (FileCreationEvents, ProcessCreationEvents, MiscEvents, RegistryEvents, NetworkCommunicationEvents, ImageLoadEvents)
where InitiatingProcessFileName has 'notepad.exe'
| project EventTime, ComputerName, InitiatingProcessSHA256, InitiatingProcessFolderPath, InitiatingProcessCommandLine
| distinct InitiatingProcessSHA256
Note:    Replace notepad.exe with the 3rd party security product process name.
Note 2:  We added ‘distinct’ query which shows just the unique SHA256’s.
              
SCCM CMPivot
 
Pre-req
Install CMPivot
C:\Program Files\Microsoft Configuration Manager\tools\CMPivot \cmpivot.msi
 
Start, CMPivot (Run as admin)
Connect to your SCCM server (SCCM_ServerName.DomainName.com)
Click on Connect
 
Click on the “Query tab”
 
Select the “Device Collection” (drop down, All Systems (default)).
Type:
File(c:\\windows\\notepad.exe)
| project Hash

<br/><br/><br/><br/>

**Congratulations**! You have completed part 2 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!


## Next step

- [Proceed to Part 3: Finish making the switch to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-onboard.md)
