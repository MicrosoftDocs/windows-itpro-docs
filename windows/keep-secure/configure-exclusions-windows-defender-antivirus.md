---
title: Set up exclusions for Windows Defender AV scans
description: You can exclude files (including files modified by specified processes) and folders from being scanned by Windows Defender AV
keywords: 
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Exclude files and processes from Windows Defender AV scans


**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators


**Manageability available with**

- Group Policy
- System Center Configuration Manager 
- PowerShell
- Windows Management Instrumentation (WMI)
- Microsoft Intune
- Windows Defender Security Center

You can exclude certain files, folders, processes, and process-modified files from being scanned by Windows Defender AV. The exclusions apply to [scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md), [on-demand scans](run-scan-windows-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md).

Changes made via Group Policy to the exclusion lists will show in the lists in the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions).

However, changes made in the Windows Defender Security Center app will not show in the lists in the Group Policy settings.

You can add, remove, and review the lists for exclusions in Group Policy, System Center Configuration Manager, Microsoft Intune, and with the Windows Defender Security Center app.

You can also use PowerShell cmdlets and WMI to configure the exclusion lists, although you will need to use several different cmdlets.

## Use Group Policy to configure exclusion lists

**Use Group Policy to configure file extension exclusions:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**. 


6. Double-click the **Extension Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**
    3. Enter each file extension on its own line under the **Value name** column.  Enter **0** in the **Value** column for all processes.

7. Click **OK**. 

![The Group Policy setting for file exclusions](images/defender/wdav-extension-exclusions.png)
<a id="exclude-paths-files"></a>
**Use Group Policy to exclude specified paths or folders from scans:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**. 


6. Double-click the **Path Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**
    3. Enter each path or file on its own line under the **Value name** column. If you are entering a file, ensure you enter a fully qualified path to the file, including the drive letter, folder path, filename, and extesnsion. Enter **0** in the **Value** column for all processes.

7. Click **OK**. 

![The Group Policy setting for folder exclusions](images/defender/wdav-path-exclusions.png)

**Use Group Policy to exclude files that have been used or modified by specified processes from scans:**

>[!NOTE] You can exclude files that are opened by specified processes from being scanned. The specified process won't be excluded - but any files that are opened by that process will be. If you need to exclude the process itself, [exclude it as a file](#exclude-paths-files).  
>You can only exclude files modified by processes if the process is an executable.

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**. 


6. Double-click the **Process Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**
    3. Enter each process on its own line under the **Value name** column. Ensure you enter a fully qualified path to the process, including the drive letter, folder path, filename, and extesnsion. The process must be an executable. Enter **0** in the **Value** column for all processes.

7. Click **OK**. 

![The Group Policy setting for specifying process exclusions](images/defender/wdav-process-exclusions.png)


## Use PowerShell cmdlets and WMI to configure exclusion lists

Excluding and reviewing file extensions, paths and files (including processes), and files opened by processes with PowerShell requires using a combination of four  cmdlets and the appropriate exclusion list parameter. The cmdlets are all in the Defender module.

There are three exclusion lists:
- ExclusionExtension
- ExclusionPath
- ExclusionProcess

You can modify each of the lists with the following cmdlets:
- Set-MpPreference to create or overwrite the defined list
- Add-MpPreference to add new items to the defined list
- Remove-MpPreference to remove or delete items from the defined list
- Get-MpPreference to review the items in the list, either all at once with all other Windows Defender AV settings, or individually for each of the lists


The format for the command is:

```PowerShell


**Use PowerShell cmdlets to create a new list of file extension exclusions:**


1. Review the current list of exclusions:

```PowerShell
Get-MpPreference


Set-MpPreference -ExclusionExtension
Add-MpPreference -ExclusionExtension
Remove-MpPreference -ExclusionExtension
```

>[!IMPORTANT]
>Use the `Set-MpPreference` cmdlet to create a list. This will overwrite the existing list. 
>Use `Add-MpPreference` to add items to the list, and `Remove-MpPreference` to remove or delete items from the list.
>Assigning `Get-MpPreference` to a variable and then querying `ExclusionExtension` will place the items from each instance of `Add-MpPreference` on its own line. Using `Get-MpPreference` on its own will place all items together. 

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to configure file extension exclusions:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
DisableAutoExclusions
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)





## Use System Center Configuration Manager, Intune, or the Windows Defender Security Center app to configure exclusion lists


**Use Configuration Manager to configure file extension exclusions:**

See [How to create and deploy antimalware policies: Exclusion settings](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings) for details on configuring System Center Configuration Manager (current branch).


**Use Microsoft Intune to configure file extension exclusions:**


See [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune) and [Windows Defender policy settings in Windows 10](https://docs.microsoft.com/en-us/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune#windows-defender-1) for more details.


**Use the Windows Defender Security app to add exclusions to Windows Defender AV:**

See [Add exclusions in the Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions) for instructions.



 ## Configure auto exclusions lists for Windows Server deployments

If you are using Windows Defender AV to protect Windows Server endpoints or machines, you are [automatically enrolled in certain exclusions](https://technet.microsoft.com/en-us/windows-server-docs/security/windows-defender/automatic-exclusions-for-windows-defender), as defined by your specified Windows Server Role.

These exclusions will not appear in the standard exclusion lists shown in the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions).

You can still add or remove custom exclusions (in addition to the Server Role-defined auto exclusions) as described in the other sections in this topic.

You can also disable the auto-exclusions lists with Group Policy, PowerShell cmdlets, and WMI.

**Use Group Policy to disable the auto-exclusions list on Windows Server 2016:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**.

6. Double-click the **Turn off Auto Exclusions** setting and set the option to **Enabled**. Click **OK**. 

**Use PowerShell cmdlets to disable the auto-exclusions list on Windows Server 2016:**

Use the following cmdlets:

```PowerShell
Set-MpPreference -DisableAutoExclusions
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to disable the auto-exclusions list on Windows Server 2016:**

Use the [**Set** method of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
DisableAutoExclusions
```

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)

























## Related topics

- [Customize, initiate, and review the results of Windows Defender AV scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)