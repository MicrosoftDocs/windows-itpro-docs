---
title: Phase 2 - Set up Microsoft Defender ATP
description: Phase 2 - Set up Microsoft Defender ATP
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

# Migrate from Symantec - Phase 2: Set up Microsoft Defender ATP


|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Phase 1: Prepare](symantec-to-microsoft-defender-atp-prepare.md) |![Phase 2: Set up](images/setup.png)<br/>Phase 2: Set up |[![Phase 3: Onboard](images/onboard.png)](symantec-to-microsoft-defender-atp-onboard.md)<br/>[Phase 3: Onboard](symantec-to-microsoft-defender-atp-onboard.md) |
|--|--|--|
||*You are here!* | |

**Welcome to Part 2 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)**. This phase includes the following steps:
1. [Set Microsoft Defender ATP to passive mode](#set-microsoft-defender-atp-to-passive-mode).
2. [Enable Microsoft Defender Antivirus](#enable-microsoft-defender-antivirus).
3. [Add Microsoft Defender ATP to the exclusion list for Symantec](#add-microsoft-defender-atp-to-the-exclusion-list-for-symantec).
4. [Add Symantec to the exclusion list for Microsoft Defender ATP](#add-symantec-to-the-exclusion-list-for-microsoft-defender-atp). 

## Set Microsoft Defender ATP to passive mode

Set the registry key for Microsoft Defender ATP to passive mode on any endpoints or devices running the following operating systems:
- Windows Server 2016;
- Windows Server, version 1803 (core-only mode); or 
- Windows Server 2019

1. As an administrator on the endpoint or device, open Registry Editor.

2. Navigate to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Windows Advanced Threat Protection`.

3. Edit (or create) a DWORD entry called **ForceDefenderPassiveMode**, and specify the following settings:
   - Set the DWORD's value to **1**.
   - Under **Base**, select **Hexidecimal**.

> [!NOTE]
> You can use other methods to perform this task, such as the following:
>- [Group Policy Preference](https://docs.microsoft.com/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn581922(v=ws.11))
>- [Local Group Policy Object tool](https://docs.microsoft.com/windows/security/threat-protection/security-compliance-toolkit-10#what-is-the-local-group-policy-object-lgpo-tool)
>- [A package in Configuration Manager](https://docs.microsoft.com/mem/configmgr/apps/deploy-use/packages-and-programs)

## Enable Microsoft Defender Antivirus

Because your organization has been using Symantec as your primary antivirus solution, Microsoft Defender Antivirus (Microsoft Defender AV) is most likely disabled on your organization's Windows devices. This step of the migration process involves enabling Microsoft Defender AV, which can run alongside your existing antivirus solution. 

Use one the methods listed in the following table:


|Method  |What to do  |
|---------|---------|
|Control Panel in Windows     |Follow the guidance here: [Turn on Microsoft Defender AV](https://docs.microsoft.com/mem/intune/user-help/turn-on-defender-windows).         |
|[Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm/) <br/>or<br/>[Group Policy Management Console](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus)  |1. Go to `Computer configuration > Administrative templates > Windows components > Microsoft Defender Antivirus`. <br/><br/>2. Look for a policy called **Turn off Microsoft Defender Antivirus**.<br/> <br/>3. Choose **Edit policy setting**, and make sure that policy is disabled. This enables Microsoft Defender Antivirus.  |
|Registry Editor |1. As an administrator on the device, open Registry Editor.<br/><br/>2. Navigate to `ComputerHKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`.<br/><br/>3. Look for a DWORD entry called `DisableAntiSpyware`. If the entry exists, change its value from **1** (Hexidecimal base) to **0**. <br/><br/>4. Reboot the device. |

## Add Microsoft Defender ATP to the exclusion list for Symantec

This step of the setup process involves adding Microsoft Defender ATP to the exclusion list for Symantec and any other security products your organization is using. The specific exclusions to add depend on which version of Windows your endpoints or devices are running, and are listed in the following table:

|OS |Exclusions |
|--|--|
|Windows 10, [version 1803](https://docs.microsoft.com/windows/release-information/status-windows-10-1803) or later (See [Windows 10 release information](https://docs.microsoft.com/windows/release-information))<br/><br/>Windows 10, version 1703 or [1709](https://docs.microsoft.com/windows/release-information/status-windows-10-1709) with [KB4493441](https://support.microsoft.com/help/4493441) installed <br/><br/>[Windows Server, version 1803](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1803)<br/><br/>[Windows Server 2019](https://docs.microsoft.com/windows/release-information/status-windows-10-1809-and-windows-server-2019) |`C:\Program Files\Windows Defender Advanced Threat Protection\MsSense.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseCncProxy.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseSampleUploader.exe`<br/><br/>`C:\Program Files\Windows Defender Advanced Threat Protection\SenseIR.exe`<br/>  |
|[Windows 7](https://docs.microsoft.com/windows/release-information/status-windows-7-and-windows-server-2008-r2-sp1)<br/><br/>[Windows Server 2008 R2 SP1](https://docs.microsoft.com/windows/release-information/status-windows-7-and-windows-server-2008-r2-sp1)<br/><br/>[Windows 8.1](https://docs.microsoft.com/windows/release-information/status-windows-8.1-and-windows-server-2012-r2) <br/><br/>[Windows Server 2012 R2](https://docs.microsoft.com/windows/release-information/status-windows-8.1-and-windows-server-2012-r2)<br/><br/>[Windows Server 2016](https://docs.microsoft.com/windows/release-information/status-windows-10-1607-and-windows-server-2016) |`C:\Program Files\Microsoft Monitoring Agent\Agent\Health Service State\Monitoring Host Temporary Files 6\45\MsSenseS.exe`<br/><br/>**NOTE**: Where Monitoring Host Temporary Files 6\45 can be different numbered subfolders.<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\AgentControlPanel.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\HealthService.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\HSLockdown.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\MOMPerfSnapshotHelper.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\MonitoringHost.exe`<br/><br/>`C:\Program Files\Microsoft Monitoring Agent\Agent\TestCloudConnection.exe` |

## Add Symantec to the exclusion list for Microsoft Defender ATP

During this step of the setup process, you add Symantec and your other security solutions to the Microsoft Defender ATP exclusion list. You specify exclusions in both Microsoft Defender AV and Microsoft Defender ATP.

### Add exclusions in Microsoft Defender AV

When you add [exclusions to Microsoft Defender AV scans](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus), you should add path and process exclusions. Keep the following points in mind:
- Path exclusions exclude specific files and whatever those files access.
- Process exclusions exclude whatever a process touches, but does not exclude the process itself.
- If you list each executable (.exe) as both a path exclusion and a process exclusion, you can help ensure that the process and whatever it touches are all excluded.
- List your process exclusions using their full path and not by their name only. (The name-only method is less secure.)

You can choose from several methods to add your exclusions to Microsoft Defender AV, as listed in the following table:

|Method | What to do|
|--|--|
|[Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) |1. Go to the Azure portal [https://portal.azure.com](https://portal.azure.com) and sign in.<br/><br/>2. In the list of Azure services, select **Intune**.<br/><br/>3. Go to **Device Configuration** > **Profiles**, and then select your profile for AV. If you need to create a profile, see [Create the profile](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-configure#create-the-profile).<br/><br/>4. Go to **Properties**, and then edit your **Configuration settings**. <br/><br/>5. Expand **Microsoft Defender Antivirus**, and then expand **Microsoft Defender Antivirus Exclusions**.<br/><br/>6. **Settings** > **Microsoft Defender Antivirus** > **Microsoft Defender Antivirus Exclusions**.<br/><br/>7. Specify the files and folders, extensions, and processes to exclude from Microsoft Defender AV scans. For reference, see [Microsoft Defender AV exclusions](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions).  |
|[Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/) |1. Using the [Configuration Manager console](https://docs.microsoft.com/mem/configmgr/core/servers/manage/admin-console), go to **Assets and Compliance** > **Endpoint Protection** > **Antimalware Policies**, and then select the policy that you want to modify. <br/><br/>2. Specify exclusion settings for files and folders, extensions, and processes to exclude from Microsoft Defender AV scans. |
|[Group Policy Object](https://docs.microsoft.com/previous-versions/windows/desktop/Policy/group-policy-objects) | 1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.<br/><br/>2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.<br/><br/>3. Expand the tree to **Windows components > Microsoft Defender Antivirus > Exclusions**.<br/><br/>4. Double-click the **Path Exclusions** setting and add the exclusions.<br/>- Set the option to **Enabled**.<br/>- Under the **Options** section, click **Show...**.<br/>- Specify each folder on its own line under the **Value name** column.<br/>- If you are specifying a file, ensure you enter a fully qualified path to the file, including the drive letter, folder path, filename, and extension. Enter **0** in the **Value** column.<br/><br/>5. Click **OK**.<br/><br/>6. Double-click the **Extension Exclusions** setting and add the exclusions.<br/>- Set the option to **Enabled**.<br/>- Under the **Options** section, click **Show...**.<br/>- Enter each file extension on its own line under the **Value name** column.  Enter **0** in the **Value** column.<br/><br/>7. Click **OK**. |
|Local group policy object |1. On the endpoint or device, open the Local Group Policy Editor. <br/><br/>2. Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Exclusions**. <br/><br/>3. Specify your path and process exclusions. |
|Registry key |Export the following registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\exclusions`. Then import it as a `regedit.exe /s MDAV_Exclusion.reg` |

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
 
```
find in (FileCreationEvents, ProcessCreationEvents, MiscEvents, RegistryEvents, NetworkCommunicationEvents, ImageLoadEvents)
where InitiatingProcessFileName has 'notepad.exe'
| project EventTime, ComputerName, InitiatingProcessSHA256, InitiatingProcessFolderPath, InitiatingProcessCommandLine
| distinct InitiatingProcessSHA256
```

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

<br/><br/>

**Congratulations**! You have completed part 2 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!


## Next step

- [Proceed to Part 3: Finish making the switch to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-onboard.md)
