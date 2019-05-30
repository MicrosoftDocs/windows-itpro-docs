---
title: Configure and validate exclusions based on extension, name, or location
description: Exclude files from Windows Defender Antivirus scans based on their file extension, file name, or location.
keywords: exclusions, files, extension, file type, folder name, file name, scans
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 12/10/2018
ms.reviewer: 
manager: dansimp
---

# Configure and validate exclusions based on file extension and folder location

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> [!IMPORTANT]
> [Windows Defender Advanced Threat Protection ](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/defender-compatibility-windows-defender-advanced-threat-protection) does not adhere to Windows Defender Antivirus exclusion settings. This means that any Windows Defender exclusions, no matter how you created them, are not applied by Windows Defender ATP.

You can exclude certain files from Windows Defender Antivirus scans by modifying exclusion lists.

Generally, you shouldn't need to apply exclusions. Windows Defender Antivirus includes a number of automatic exclusions based on known operating system behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios and situations.

> [!NOTE]
> Automatic exclusions apply only to Windows Server 2016 and above. 

>[!TIP]
>The default antimalware policy we deploy at Microsoft doesn't set any exclusions by default.

This topic describes how to configure exclusion lists for the following:

Exclusion | Examples | Exclusion list
---|---|---
Any file with a specific extension | All files with the .test extension, anywhere on the machine | Extension exclusions
Any file under a specific folder | All files under the c:\test\sample folder | File and folder exclusions
A specific file in a specific folder | The file c:\sample\sample.test only | File and folder exclusions
A specific process | The executable file c:\test\process.exe | File and folder exclusions

This means the exclusion lists have the following characteristics:

- Folder exclusions will apply to all files and folders under that folder, unless the subfolder is a reparse point. Reparse point subfolders must be excluded separately.
- File extensions will apply to any file name with the defined extension if a path or folder is not defined.

>[!IMPORTANT]
>The use of wildcards such as the asterisk (\*) will alter how the exclusion rules are interpreted. See the [Use wildcards in the file name and folder path or extension exclusion lists](#use-wildcards-in-the-file-name-and-folder-path-or-extension-exclusion-lists) section for important information about how wildcards work.
>
>You cannot exclude mapped network drives. You must specify the actual network path.
>
>Folders that are reparse points that are created after the Windows Defender Antivirus service starts and that have been added to the exclusion list will not be included. You must restart the service (by restarting Windows) for new reparse points to be recognized as a valid exclusion target.

To exclude files opened by a specific process, see [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md).

The exclusions apply to [scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md), [on-demand scans](run-scan-windows-defender-antivirus.md), and [real-time protection](configure-real-time-protection-windows-defender-antivirus.md).

>[!IMPORTANT]
>Exclusion list changes made with Group Policy **will show** in the lists in the [Windows Security app](windows-defender-security-center-antivirus.md#exclusions).
>
>Changes made in the Windows Security app **will not show** in the Group Policy lists.

By default, local changes made to the lists (by users with administrator privileges, including changes made with PowerShell and WMI) will be merged with the lists as defined (and deployed) by Group Policy, Configuration Manager, or Intune. The Group Policy lists will take precedence in case of conflicts.

You can [configure how locally and globally defined exclusions lists are merged](configure-local-policy-overrides-windows-defender-antivirus.md#merge-lists) to allow local changes to override managed deployment settings.

## Configure the list of exclusions based on folder name or file extension

**Use Intune to configure file name, folder, or file extension exclusions:**

See [Configure device restriction settings in Microsoft Intune](https://docs.microsoft.com/intune/device-restrictions-configure) and [Windows Defender Antivirus device restriction settings for Windows 10 in Intune](https://docs.microsoft.com/intune/device-restrictions-windows-10#windows-defender-antivirus) for more details.

**Use Configuration Manager to configure file name, folder, or file extension exclusions:**

See [How to create and deploy antimalware policies: Exclusion settings](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings) for details on configuring System Center Configuration Manager (current branch).

**Use Group Policy to configure folder or file extension exclusions:**

>[!NOTE]
>If you specify a fully qualified path to a file, then only that file is excluded. If a folder is defined in the exclusion, then all files and subdirectories under that folder are excluded.

1. On your Group Policy management computer, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**.

4. Double-click the **Path Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**.
    3. Enter each folder on its own line under the **Value name** column. If you are entering a file, ensure you enter a fully qualified path to the file, including the drive letter, folder path, filename, and extension. Enter **0** in the **Value** column.

5. Click **OK**.

    ![The Group Policy setting for file and folder exclusions](images/defender/wdav-path-exclusions.png)

6. Double-click the **Extension Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**.
    2. Under the **Options** section, click **Show...**.
    3. Enter each file extension on its own line under the **Value name** column.  Enter **0** in the **Value** column.

7. Click **OK**.

    ![The Group Policy setting for extension exclusions](images/defender/wdav-extension-exclusions.png)

<a id="ps"></a>

**Use PowerShell cmdlets to configure file name, folder, or file extension exclusions:**

Using PowerShell to add or remove exclusions for files based on the extension, location, or file name requires using a combination of three cmdlets and the appropriate exclusion list parameter. The cmdlets are all in the [Defender module](https://technet.microsoft.com/itpro/powershell/windows/defender/defender).

The format for the cmdlets is:

```PowerShell
<cmdlet> -<exclusion list> "<item>"
```

The following are allowed as the \<cmdlet>:

Configuration action | PowerShell cmdlet
---|---
Create or overwrite the list | `Set-MpPreference`
Add to the list | `Add-MpPreference`
Remove item from the list | `Remove-MpPreference`

The following are allowed as the \<exclusion list>:

Exclusion type | PowerShell parameter
---|---
All files with a specified file extension | `-ExclusionExtension`
All files under a folder (including files in subdirectories), or a specific file | `-ExclusionPath`

>[!IMPORTANT]
>If you have created a list, either with `Set-MpPreference` or `Add-MpPreference`, using the `Set-MpPreference` cmdlet again will overwrite the existing list.

For example, the following code snippet would cause Windows Defender AV scans to exclude any file with the **.test** file extension:

```PowerShell
Add-MpPreference -ExclusionExtension ".test"
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to configure file name, folder, or file extension exclusions:**

Use the [ **Set**, **Add**, and **Remove** methods of the **MSFT_MpPreference**](https://msdn.microsoft.com/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
ExclusionExtension
ExclusionPath
```

The use of **Set**, **Add**, and **Remove** is analogous to their counterparts in PowerShell: `Set-MpPreference`, `Add-MpPreference`, and `Remove-MpPreference`.

See the following for more information and allowed parameters:

- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)

<a id="man-tools"></a>

**Use the Windows Security app to configure file name, folder, or file extension exclusions:**

See [Add exclusions in the Windows Security app](windows-defender-security-center-antivirus.md#exclusions) for instructions.

<a id="wildcards"></a>
## Use wildcards in the file name and folder path or extension exclusion lists

You can use the asterisk `*`, question mark `?`, or environment variables (such as `%ALLUSERSPROFILE%`) as wildcards when defining items in the file name or folder path exclusion list. The way in which these wildcards are interpreted differs from their usual usage in other apps and languages, so you should read this section to understand their specific limitations.

>[!IMPORTANT]
>There are key limitations and usage scenarios for these wildcards:
>
>- Environment variable usage is limited to machine variables and those applicable to processes running as an NT AUTHORITY\SYSTEM account.
>- You cannot use a wildcard in place of a drive letter.
>- An asterisk `*` in a folder exclusion will stand in place for a single folder. Use multiple instances of `\*\` to indicate multiple nested folders with unspecified names.

The following table describes how the wildcards can be used and provides some examples.
<table>
    <tr>
        <th>Wildcard</th>
        <th>Use in file and file extension exclusions</th>
        <th>Use in folder exclusions</th>
        <th>Example use</th>
        <th>Example matches></th>
    </tr>
    <tr>
        <td><b>\*</b> (asterisk)</td>
        <td>Replaces any number of characters. <br />Only applies to files in the last folder defined in the argument. </td>
        <td>Replaces a single folder. <br />Use multiple <b>\*</b> with folder slashes <b>\\</b> to indicate multiple, nested folders. </br>After matching to the number of wilcarded and named folders, all subfolders will also be included.</td>
        <td>
            <ol>
                <li>C:\MyData\\<b>\*</b>.txt</li>
                <li>C:\somepath\\<b>\*</b>\Data</li>
                <li>C:\Serv\\<b>\*</b>\\<b>\*</b>\Backup
            </ol>
        </td>
        <td>
            <ol>
                <li><i>C:\MyData\\<b>notes</b>.txt</i></li>
                <li>Any file in:
                    <ul>
                        <li><i>C:\somepath\\<b>Archives</b>\Data</i> and its subfolders</li>
                        <li><i>C:\somepath\\<b>Authorized</b>\Data</i> and its subfolders</li>
                    </ul>
                <li>Any file in:
                <ul>
                    <li><i>C:\Serv\\<b>Primary</b>\\<b>Denied</b>\Backup</i> and its subfolders</li>
                    <li><i>C:\Serv\\<b>Secondary</b>\\<b>Allowed</b>\Backup</i> and its subfolders</li>
                </ul>
            </ol>
        </td>
    </tr>
    <tr>
        <td>
            <b>?</b> (question mark)
        </td>
        <td>
            Replaces a single character. <br />
            Only applies to files in the last folder defined in the argument.
        </td>
        <td>
            Replaces a single character in a folder name. </br>
            After matching to the number of wilcarded and named folders, all subfolders will also be included.
        </td>
        <td>
            <ol>
                <li>C:\MyData\my<b>?</b>.zip</li>
                <li>C:\somepath\\<b>?</b>\Data</li>
                <li>C:\somepath\test0<b>?</b>\Data</li>
            </ol>
        </td>
        <td>
            <ol>
                <li><i>C:\MyData\my<b>1</b>.zip</i></li>
                <li>Any file in <i>C:\somepath\\<b>P</b>\Data</i> and its subfolders</li>
                <li>Any file in <i>C:\somepath\test0<b>1</b>\Data</i> and its subfolders</li>
            </ol>
        </td>
    </tr>
    <tr>
        <td>Environment variables</td>
        <td>The defined variable will be populated as a path when the exclusion is evaluated.</td>
        <td>Same as file and extension use. </td>
        <td>
            <ol>
                <li><b>%ALLUSERSPROFILE%</b>\CustomLogFiles</li>
            </ol> 
        </td>
        <td>
            <ol>
                <li><i><b>C:\ProgramData</b>\CustomLogFiles\Folder1\file1.txt</i></li>
            </ol>
        </td>
    </tr>
</table>

>[!IMPORTANT]
>If you mix a file exclusion argument with a folder exclusion argument, the rules will stop at the file argument match in the matched folder, and will not look for file matches in any subfolders.
>
>For example, you can exclude all files that start with "date" in the folders *c:\data\final\marked* and *c:\data\review\marked* by using the rule argument <b>c:\data\\\*\marked\date*.\*</b>.
>
>This argument, however, will not match any files in **subfolders** under *c:\data\final\marked* or *c:\data\review\marked*.

<a id="review"></a>

## Review the list of exclusions

You can retrieve the items in the exclusion list with [Intune](https://docs.microsoft.com/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune), [System Center Configuration Manager](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings), MpCmdRun, PowerShell, or the [Windows Security app](windows-defender-security-center-antivirus.md#exclusions).

>[!IMPORTANT]
>Exclusion list changes made with Group Policy **will show** in the lists in the [Windows Security app](windows-defender-security-center-antivirus.md#exclusions).
>
>Changes made in the Windows Security app **will not show** in the Group Policy lists.

If you use PowerShell, you can retrieve the list in two ways:

- Retrieve the status of all Windows Defender Antivirus preferences. Each of the lists will be displayed on separate lines, but the items within each list will be combined into the same line.
- Write the status of all preferences to a variable, and use that variable to only call the specific list you are interested in. Each use of `Add-MpPreference` is written to a new line.

**Validate the exclusion list by using MpCmdRun:**

To check exclusions with the dedicated [command-line tool mpcmdrun.exe](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/command-line-arguments-windows-defender-antivirus?branch=v-anbic-wdav-new-mpcmdrun-options), use the following command:

```DOS
MpCmdRun.exe -CheckExclusion -path <path>
```

>[!NOTE]
>Checking exclusions with MpCmdRun requires Windows Defender Antivirus CAMP version 4.18.1812.3 (released in December 2018) or later.

**Review the list of exclusions alongside all other Windows Defender Antivirus preferences by using PowerShell:**

Use the following cmdlet:

```PowerShell
Get-MpPreference
```

In the following example, the items contained in the `ExclusionExtension` list are highlighted:

![PowerShell output for Get-MpPreference showing the exclusion list alongside other preferences](images/defender/wdav-powershell-get-exclusions-all.png)

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Retrieve a specific exclusions list by using PowerShell:**

Use the following code snippet (enter each line as a separate command); replace **WDAVprefs** with whatever label you want to name the variable:

```PowerShell
$WDAVprefs = Get-MpPreference
$WDAVprefs.ExclusionExtension
$WDAVprefs.ExclusionPath
```

In the following example, the list is split into new lines for each use of the `Add-MpPreference` cmdlet:

![PowerShell output showing only the entries in the exclusion list](images/defender/wdav-powershell-get-exclusions-variable.png)

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

<a id="validate"></a>

## Validate exclusions lists with the EICAR test file

You can validate that your exclusion lists are working by using PowerShell with either the `Invoke-WebRequest` cmdlet or the .NET WebClient class to download a test file.

In the following PowerShell snippet, replace *test.txt* with a file that conforms to your exclusion rules. For example, if you have excluded the .testing extension, replace *test.txt* with *test.testing*. If you are testing a path, ensure you run the cmdlet within that path.

```PowerShell
Invoke-WebRequest "http://www.eicar.org/download/eicar.com.txt" -OutFile "test.txt"
```

If Windows Defender Antivirus reports malware, then the rule is not working. If there is no report of malware, and the downloaded file exists, then the exclusion is working. You can open the file to confirm the contents are the same as what is described on the [EICAR testfile website](http://www.eicar.org/86-0-Intended-use.html).

You can also use the following PowerShell code, which calls the .NET WebClient class to download the testfile - as with the `Invoke-WebRequest` cmdlet; replace *c:\test.txt* with a file that conforms to the rule you are validating:

```PowerShell
$client = new-object System.Net.WebClient
$client.DownloadFile("http://www.eicar.org/download/eicar.com.txt","c:\test.txt")
```

If you do not have Internet access, you can create your own EICAR test file by writing the EICAR string to a new text file with the following PowerShell command:

```PowerShell
[io.file]::WriteAllText("test.txt",'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*')
```

You can also copy the string into a blank text file and attempt to save it with the file name or in the folder you are attempting to exclude.

## Related topics

- [Configure and validate exclusions in Windows Defender Antivirus scans](configure-exclusions-windows-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md)
- [Configure Windows Defender Antivirus exclusions on Windows Server](configure-server-exclusions-windows-defender-antivirus.md)
- [Customize, initiate, and review the results of Windows Defender Antivirus scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
