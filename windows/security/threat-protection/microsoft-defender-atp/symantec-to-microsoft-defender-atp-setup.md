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

**Welcome to the Setup phase of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)**. This phase includes the following steps:
1. [Set Microsoft Defender AV to passive mode](#set-microsoft-defender-av-to-passive-mode) on certain versions of Windows.
2. [Enable Microsoft Defender AV](#enable-microsoft-defender-antivirus).
3. [Add Microsoft Defender ATP to the exclusion list for Symantec](#add-microsoft-defender-atp-to-the-exclusion-list-for-symantec).
4. [Add Symantec to the exclusion list for Microsoft Defender AV and Microsoft Defender ATP](#add-symantec-to-the-exclusion-list-for-microsoft-defender-av-and-microsoft-defender-atp). 

## Set Microsoft Defender AV to passive mode

> [!TIP]
> If you're running Windows 10, you do not need to perform this task. Proceed to **[Enable Microsoft Defender Antivirus](#enable-microsoft-defender-antivirus)**.

On certain versions of Windows, Microsoft Defender Antivirus will not enter passive or disabled mode if you have also installed a third-party antivirus product, such as Symantec. (See [Microsoft Defender Antivirus compatibility](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility)) However, you can enable passive mode by setting a registry key. 

The following procedure applies to endpoints or devices that are running the following versions of Windows:
- Windows Server 2016;
- Windows Server, version 1803 (core-only mode); or 
- Windows Server 2019

1. As an administrator on the endpoint or device, open Registry Editor.

2. Navigate to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Windows Advanced Threat Protection`.

3. Edit (or create) a DWORD entry called **ForceDefenderPassiveMode**, and specify the following settings:
   - Set the DWORD's value to **1**.
   - Under **Base**, select **Hexidecimal**.

> [!NOTE]
> You can use other methods to set the registry key, such as the following:
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

## Add Symantec to the exclusion list for Microsoft Defender AV

During this step of the setup process, you add Symantec and your other security solutions to the Microsoft Defender AV exclusion list. 

When you add [exclusions to Microsoft Defender AV scans](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-exclusions-microsoft-defender-antivirus), you should add path and process exclusions. Keep the following points in mind:
- Path exclusions exclude specific files and whatever those files access.
- Process exclusions exclude whatever a process touches, but does not exclude the process itself.
- If you list each executable (.exe) as both a path exclusion and a process exclusion, the process and whatever it touches are excluded.
- List your process exclusions using their full path and not by their name only. (The name-only method is less secure.)

You can choose from several methods to add your exclusions to Microsoft Defender AV, as listed in the following table:

|Method | What to do|
|--|--|
|[Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) |1. Go to the Azure portal [https://portal.azure.com](https://portal.azure.com) and sign in.<br/><br/>2. In the list of Azure services, select **Intune**.<br/><br/>3. Go to **Device Configuration** > **Profiles**, and then select your profile for AV. If you need to create a profile, see [Create the profile](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-configure#create-the-profile).<br/><br/>4. Go to **Properties**, and then edit your **Configuration settings**. <br/><br/>5. Expand **Microsoft Defender Antivirus**, and then expand **Microsoft Defender Antivirus Exclusions**.<br/><br/>6. **Settings** > **Microsoft Defender Antivirus** > **Microsoft Defender Antivirus Exclusions**.<br/><br/>7. Specify the files and folders, extensions, and processes to exclude from Microsoft Defender AV scans. For reference, see [Microsoft Defender AV exclusions](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions).  |
|[Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/) |1. Using the [Configuration Manager console](https://docs.microsoft.com/mem/configmgr/core/servers/manage/admin-console), go to **Assets and Compliance** > **Endpoint Protection** > **Antimalware Policies**, and then select the policy that you want to modify. <br/><br/>2. Specify exclusion settings for files and folders, extensions, and processes to exclude from Microsoft Defender AV scans. |
|[Group Policy Object](https://docs.microsoft.com/previous-versions/windows/desktop/Policy/group-policy-objects) | 1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.<br/><br/>2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.<br/><br/>3. Expand the tree to **Windows components > Microsoft Defender Antivirus > Exclusions**.<br/><br/>4. Double-click the **Path Exclusions** setting and add the exclusions.<br/>- Set the option to **Enabled**.<br/>- Under the **Options** section, click **Show...**.<br/>- Specify each folder on its own line under the **Value name** column.<br/>- If you are specifying a file, ensure you enter a fully qualified path to the file, including the drive letter, folder path, filename, and extension. Enter **0** in the **Value** column.<br/><br/>5. Click **OK**.<br/><br/>6. Double-click the **Extension Exclusions** setting and add the exclusions.<br/>- Set the option to **Enabled**.<br/>- Under the **Options** section, click **Show...**.<br/>- Enter each file extension on its own line under the **Value name** column.  Enter **0** in the **Value** column.<br/><br/>7. Click **OK**. |
|Local group policy object |1. On the endpoint or device, open the Local Group Policy Editor. <br/><br/>2. Go to **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Exclusions**. <br/><br/>3. Specify your path and process exclusions. |
|Registry key |Export the following registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\exclusions`. Then import it as a `regedit.exe /s MDAV_Exclusion.reg` |

## Add Symantec to the exclusion list for Microsoft Defender ATP

To add exclusions to Microsoft Defender ATP, you create [indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators#create-indicators-for-files).

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.

2. In the navigation pane, choose **Settings** > **Rules** > **Indicators**.

3.  On the **File hashes** tab, choose **Add indicator**.

3. On the **Indicator** tab, specify the following settings:
   - File hash (Need help? See [How to find the file hashes of your security solutions](#how-to-find-the-file-hashes-of-your-security-solutions) in this article.)
   - Under **Expires on (UTC)**, choose **Never**.

4. On the **Action** tab, specify the following settings:
   - **Response Action**: **Allow**
   - Title and description

5. On the **Scope** tab, under **Device groups**, select either **All devices in my scope** or **Select from list**.

6. On the **Summary** tab, review the settings, and then click **Save**.

### How to find the file hashes of your security solutions

You can find the file hashes of your third-party security products by using one of the following methods:
- [Advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview) in Microsoft Defender ATP
- [CMPivot](https://docs.microsoft.com/mem/configmgr/core/servers/manage/cmpivot-overview) in Configuration Manager

#### Find a file hash using Advanced Hunting
 
Advanced hunting is a query-based threat-hunting tool that lets you explore raw data for the last 30 days. You can use Kusto syntax and operators to construct queries that locate information in the schema specifically structured for advanced hunting. To learn more, see [Learn the advanced hunting query language](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-query-language).

Here's an example query that you can use to find the file hashes for your security solutions: 
 
```kusto
find in (FileCreationEvents, ProcessCreationEvents, MiscEvents, RegistryEvents, NetworkCommunicationEvents, ImageLoadEvents)
where InitiatingProcessFileName has 'notepad.exe'
| project EventTime, ComputerName, InitiatingProcessSHA256, InitiatingProcessFolderPath, InitiatingProcessCommandLine
| distinct InitiatingProcessSHA256
```

> [!NOTE]
> In the query above, replace *notepad.exe* with the your third-party security product process name. 
>
> In our example query, we added the *distinct* query which shows just the unique SHA256’s.
              
#### Find a file hash using CMPivot

CMPivot is an in-console utility for Configuration Manager. CMPivot provides access to the real-time state of devices in your environment. It immediately runs a query on all currently connected devices in the target collection and returns the results. To learn more, see [CMPivot overview](https://docs.microsoft.com/mem/configmgr/core/servers/manage/cmpivot-overview).

To use CMPivot to get your file hash, follow these steps:

1. Review the [prerequisites](https://docs.microsoft.com/mem/configmgr/core/servers/manage/cmpivot#prerequisites).

2. [Start CMPivot](https://docs.microsoft.com/mem/configmgr/core/servers/manage/cmpivot#start-cmpivot). 

3. Connect to Configuration Manager (`SCCM_ServerName.DomainName.com`).

4. Select the **Query** tab.
 
5. Select **Device Collection** drop down, and choose **All Systems (default)**.

6. In the query box, type the following query:<br/>

```kusto
File(c:\\windows\\notepad.exe)
| project Hash
```
> [!NOTE]
> In the query above, replace *notepad.exe* with the your third-party security product process name. 

<br/><br/>

**Congratulations**! You have completed the Setup phase of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!


## Next step

- [Proceed to Phase 3: Onboard to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-onboard.md)
