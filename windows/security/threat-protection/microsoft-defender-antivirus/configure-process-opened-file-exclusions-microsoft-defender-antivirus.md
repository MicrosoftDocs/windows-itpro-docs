---
title: Configure exclusions for files opened by specific processes
description: You can exclude files from scans if they have been opened by a specific process.
keywords: Microsoft Defender Antivirus, process, exclusion, files, scans
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Configure exclusions for files opened by processes

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

You can exclude files that have been opened by specific processes from Microsoft Defender Antivirus scans. See [Recommendations for defining exclusions](configure-exclusions-microsoft-defender-antivirus.md#recommendations-for-defining-exclusions) before defining your exclusion lists.

This article describes how to configure exclusion lists. 

## Examples of exclusions

|Exclusion | Example |
|---|---|
|Any file on the machine that is opened by any process with a specific file name | Specifying `test.exe` would exclude files opened by: <br/>`c:\sample\test.exe`<br/>`d:\internal\files\test.exe` |  
|Any file on the machine that is opened by any process under a specific folder | Specifying `c:\test\sample\*` would exclude files opened by:<br/>`c:\test\sample\test.exe`<br/>`c:\test\sample\test2.exe`<br/>`c:\test\sample\utility.exe` | 
|Any file on the machine that is opened by a specific process in a specific folder | Specifying `c:\test\process.exe` would exclude files only opened by `c:\test\process.exe` |


When you add a process to the process exclusion list, Microsoft Defender Antivirus won't scan files opened by that process, no matter where the files are located. The process itself, however, will be scanned unless it has also been added to the [file exclusion list](configure-extension-file-exclusions-microsoft-defender-antivirus.md).

The exclusions only apply to [always-on real-time protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md). They don't apply to scheduled or on-demand scans.

Changes made with Group Policy to the exclusion lists **will show** in the lists in the [Windows Security app](microsoft-defender-security-center-antivirus.md). However, changes made in the Windows Security app **will not show** in the Group Policy lists.

You can add, remove, and review the lists for exclusions in Group Policy, Microsoft Endpoint Configuration Manager, Microsoft Intune, and with the Windows Security app, and you can use wildcards to further customize the lists.

You can also use PowerShell cmdlets and WMI to configure the exclusion lists, including reviewing your lists.

By default, local changes made to the lists (by users with administrator privileges; changes made with PowerShell and WMI) will be merged with the lists as defined (and deployed) by Group Policy, Configuration Manager, or Intune. The Group Policy lists will take precedence in the case of conflicts.

You can [configure how locally and globally defined exclusions lists are merged](configure-local-policy-overrides-microsoft-defender-antivirus.md#merge-lists) to allow local changes to override managed deployment settings.

## Configure the list of exclusions for files opened by specified processes

### Use Microsoft Intune to exclude files that have been opened by specified processes from scans

See [Configure device restriction settings in Microsoft Intune](/intune/device-restrictions-configure) and [Microsoft Defender Antivirus device restriction settings for Windows 10 in Intune](/intune/device-restrictions-windows-10#microsoft-defender-antivirus) for more details.

### Use Microsoft Endpoint Manager to exclude files that have been opened by specified processes from scans

See [How to create and deploy antimalware policies: Exclusion settings](/configmgr/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings) for details on configuring Microsoft Endpoint Manager (current branch).

### Use Group Policy to exclude files that have been opened by specified processes from scans

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Microsoft Defender Antivirus > Exclusions**.

4. Double-click **Process Exclusions** and add the exclusions:

    1. Set the option to **Enabled**.
    2. Under the **Options** section, click **Show...**.
    3. Enter each process on its own line under the **Value name** column. See the example table for the different types of process exclusions.  Enter **0** in the **Value** column for all processes.

5. Click **OK**.

### Use PowerShell cmdlets to exclude files that have been opened by specified processes from scans

Using PowerShell to add or remove exclusions for files that have been opened by processes requires using a combination of three cmdlets with the `-ExclusionProcess` parameter. The cmdlets are all in the [Defender module](/powershell/module/defender/).

The format for the cmdlets is:

```PowerShell
<cmdlet> -ExclusionProcess "<item>"
```

The following are allowed as the \<cmdlet>:

|Configuration action | PowerShell cmdlet |
|---|---|
|Create or overwrite the list | `Set-MpPreference` |
|Add to the list | `Add-MpPreference` |
|Remove items from the list | `Remove-MpPreference` |

>[!IMPORTANT]
>If you have created a list, either with `Set-MpPreference` or `Add-MpPreference`, using the `Set-MpPreference` cmdlet again will overwrite the existing list.

For example, the following code snippet would cause Microsoft Defender AV scans to exclude any file that is opened by the specified process:

```PowerShell
Add-MpPreference -ExclusionProcess "c:\internal\test.exe"
```

For more information on how to use PowerShell with Microsoft Defender Antivirus, see Manage antivirus with PowerShell cmdlets and [Microsoft Defender Antivirus cmdlets](/powershell/module/defender).

### Use Windows Management Instruction (WMI) to exclude files that have been opened by specified processes from scans

Use the [**Set**, **Add**, and **Remove** methods of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
ExclusionProcess
```

The use of **Set**, **Add**, and **Remove** is analogous to their counterparts in PowerShell: `Set-MpPreference`, `Add-MpPreference`, and `Remove-MpPreference`.

For more information and allowed parameters, see  [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).

### Use the Windows Security app to exclude files that have been opened by specified processes from scans

See [Add exclusions in the Windows Security app](microsoft-defender-security-center-antivirus.md) for instructions.

## Use wildcards in the process exclusion list

The use of wildcards in the process exclusion list is different from their use in other exclusion lists.

In particular, you cannot use the question mark (`?`) wildcard, and the asterisk (`*`) wildcard can only be used at the end of a complete path. You can still use environment variables (such as `%ALLUSERSPROFILE%`) as wildcards when defining items in the process exclusion list.

The following table describes how the wildcards can be used in the process exclusion list:

|Wildcard | Example use | Example matches |
|:---|:---|:---|
|`*` (asterisk) <br/><br/> Replaces any number of characters | `C:\MyData\*` | Any file opened by `C:\MyData\file.exe` |
|Environment variables <br/><br/> The defined variable is populated as a path when the exclusion is evaluated | `%ALLUSERSPROFILE%\CustomLogFiles\file.exe` | Any file opened by `C:\ProgramData\CustomLogFiles\file.exe` |

## Review the list of exclusions

You can retrieve the items in the exclusion list with MpCmdRun, PowerShell, [Microsoft Endpoint Configuration Manager](/configmgr/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings), [Intune](/intune/device-restrictions-configure), or the [Windows Security app](microsoft-defender-security-center-antivirus.md).

If you use PowerShell, you can retrieve the list in two ways:

- Retrieve the status of all Microsoft Defender Antivirus preferences. Each of the lists will be displayed on separate lines, but the items within each list will be combined into the same line.
- Write the status of all preferences to a variable, and use that variable to only call the specific list you are interested in. Each use of `Add-MpPreference` is written to a new line.

### Validate the exclusion list by using MpCmdRun

To check exclusions with the dedicated [command-line tool mpcmdrun.exe](./command-line-arguments-microsoft-defender-antivirus.md?branch=v-anbic-wdav-new-mpcmdrun-options), use the following command:

```DOS
MpCmdRun.exe -CheckExclusion -path <path>
```

> [!NOTE]
> Checking exclusions with MpCmdRun requires Microsoft Defender Antivirus CAMP version 4.18.1812.3 (released in December 2018) or later.


### Review the list of exclusions alongside all other Microsoft Defender Antivirus preferences by using PowerShell

Use the following cmdlet:

```PowerShell
Get-MpPreference
```

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender) for more information on how to use PowerShell with Microsoft Defender Antivirus.

### Retrieve a specific exclusions list by using PowerShell

Use the following code snippet (enter each line as a separate command); replace **WDAVprefs** with whatever label you want to name the variable:

```PowerShell
$WDAVprefs = Get-MpPreference
$WDAVprefs.ExclusionProcess
```

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender) for more information on how to use PowerShell with Microsoft Defender Antivirus.

## Related articles

- [Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)
- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md)
- [Configure Microsoft Defender Antivirus exclusions on Windows Server](configure-server-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
- [Customize, initiate, and review the results of Microsoft Defender Antivirus scans and remediation](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)