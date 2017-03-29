---
title: Configure and validate exclusions based on extension, name, or location
description: Exclude files from Windows Defender AV scans based on their file extension, file name, or location.
keywords: exclusions, files, extension, file type, folder name, file name, scans
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Configure and validate exclusions based on file name, extension, and folder location


**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators


**Manageability available with**

- Group Policy
- PowerShell
- Windows Management Instrumentation (WMI)
- System Center Configuration Manager
- Microsoft Intune
- Windows Defender Security Center

You can exclude certain files from being scanned by Windows Defender AV by modifying exclusion lists. 

This topic describes how to configure exclusion lists for the following:

Exclusion | Examples | Exclusion list
---|---|---
Any file with a specific extension | All files with the .test extension, anywhere on the machine | Extension exclusions
Any file under a specific folder | All files under the c:\test\sample folder | File and folder exclusions
Any file with a specific file name | The file "sample.test", anywhere on the machine | File and folder exclusions
A specific file in a specific folder | The file c:\sample\sample.test only | File and folder exclusions
A specific process | The executable file c:\test\process.exe | File and folder exclusions list

This means the exclusion lists have the following characteristics:
- If you exclude a file, the exclusion will apply to all versions of that file, regardless of where the file is located.
- Folder exclusions will apply to all files and folders under that folder.
- File extensions will apply to any file name with the defined extension, regardless of where the file is located.


To exclude files opened by a specific process, see the [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md) topic.


The exclusions apply to [scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md), [on-demand scans](run-scan-windows-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md).

Changes made via Group Policy to the exclusion lists **will show** in the lists in the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions). However, changes made in the Windows Defender Security Center app **will not show** in the Group Policy lists.

You can add, remove, and review the lists for exclusions in [Group Policy](#gp), [System Center Configuration Manager, Microsoft Intune, and with the Windows Defender Security Center app](#man-tools), and you can [use wildcards](#wildcards) to further customize the lists.

You can also [use PowerShell cmdlets and WMI to configure the exclusion lists](#ps), including [reviewing](#review) and [validating](#validate) your lists. 


By default, local changes made to the lists (by users with administrator privileges) will be merged with the lists as defined (and deployed) by Group Policy, Configuration Manager, Intune, PowerShell, or WMI. The Group Policy lists will take precedence in the case of conflicts. You can [configure how locally and globally defined exclusions lists are merged](configure-local-policy-overrides-windows-defender-antivirus.md#merge-lists) to disable this setting.

 




## Configure the list of exclusions based on file or folder name or file extension

<a id="gp"></a>
**Use Group Policy to configure file name, folder, or file extension exclusions:**

>[!NOTE]
>The exclusion will apply to any file with the defined file name - regardless of its location. If a folder is defined in the exclusion, then all files and subdirectories under that folder will be excluded.

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**. 


6. Double-click the **Path Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**
    3. Enter each path or file on its own line under the **Value name** column. If you are entering a file, ensure you enter a fully qualified path to the file, including the drive letter, folder path, filename, and extension. Enter **0** in the **Value** column for all processes.

7. Click **OK**. 

![The Group Policy setting for file and folder exclusions](images/defender/wdav-extension-exclusions.png)

8. Double-click the **Extension Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**
    3. Enter each file extension on its own line under the **Value name** column.  Enter **0** in the **Value** column for all processes.


9. Click **OK**. 

![The Group Policy setting for extension exclusions](images/defender/wdav-path-exclusions.png)


<a id="ps"></a>
**Use PowerShell cmdlets to configure file name, folder, or file extension exclusions:**

Using PowerShell to add or remove exclusions for files based on the extension, location, or file name requires using a combination of three cmdlets and the appropriate exclusion list parameter. The cmdlets are all in the [Defender module](https://technet.microsoft.com/en-us/itpro/powershell/windows/defender/defender).

The format for the cmdlets is:

```PowerShell
<cmdlet> -<exclusion list> "<item1>, <item2>, <item3>"
```

The following are allowed as the \<cmdlet>:

Configuration action | PowerShell cmdlet
---|---
Create or overwrite the list | `Set-MpPreference` 
Add to the list | `Add-MpPreference` 
Remove items from the list | `Remove-MpPreference` 

The following are allowed as the \<exclusion list>:

Exclusion type | PowerShell parameter
---|---
All files with a specified file extension | `-ExclusionExtension`
All files under a folder (including files in subdirectories) | `-ExclusionPath`


>[!IMPORTANT]
>If you have created a list, either with `Set-MpPreference` or `Add-MpPreference`, using the `Set-MpPreference` cmdlet again will overwrite the existing list. 


For example, the following code snippet would cause Windows Defender AV scans to exclude any file with the **.test**, **.sample**, or **.ignore** file extension:

```PowerShell
Add-MpPreference -ExclusionExtension ".test, .sample, .ignore"
```

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.


**Use Windows Management Instruction (WMI) to configure file name, folder, or file extension exclusions:**

Use the [ **Set**, **Add**, and **Remove** methods of the **MSFT_MpPreference**](https://msdn.microsoft.com/en-us/library/dn455323(v=vs.85).aspx) class for the following properties:

```WMI
ExclusionExtension
ExclusionPath
```

The use of **Set**, **Add**, and **Remove** is analogous to their counterparts in PowerShell: `Set-MpPreference`, `Add-MpPreference`, and `Remove-MpPreference`.

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)

<a id="man-tools"></a>
**Use Configuration Manager to configure file name, folder, or file extension exclusions:**

See [How to create and deploy antimalware policies: Exclusion settings](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings) for details on configuring System Center Configuration Manager (current branch).


**Use Microsoft Intune to configure file name, folder, or file extension exclusions:**


See [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune) and [Windows Defender policy settings in Windows 10](https://docs.microsoft.com/en-us/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune#windows-defender-1) for more details.


**Use the Windows Defender Security Center app to configure file name, folder, or file extension exclusions:**

See [Add exclusions in the Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions) for instructions.



<a id="wildcards"></a>
## Use wildcards in the file name and folder path or extension exclusion lists

You can use the asterisk **\***, question mark **?**, or environment variables (such as %APPDATA%) as wildcards when defining items in the file name or folder path exclusion list.

You cannot use a wildcard in place of a drive letter.


The following table describes how the wildcards can be used and provides some examples.

Wildcard | Use | Example use | Example matches
---|---|---|---
**\*** (asterisk) | Replaces any number of chararacters | <ul><li>C:\MyData\my\*.zip</li><li>C:\somepath\\\*\Data</li></ul> | <ul><li>C:\MyData\my-archived-files-43.zip</li><li>Any file in C:\somepath\folder1\folder2\Data</li></ul>
**?** (question mark) | Replaces a single character | <ul><li>C:\MyData\my\?.zip</li><li>C:\somepath\\\?\Data</li></ul> | <ul><li>C:\MyData\my1.zip</li><li>Any file in C:\somepath\P\Data</li></ul>
Environment variables | The defined variable will be populated as a path when the exclusion is evaluated |  <ul><li>%ALLUSERSPROFILE%\CustomLogFiles</li><li>%APPDATA%\Data\file.png</li></ul> | <ul><li>C:\ProgramData\CustomLogFiles\Folder1\file1.txt</li><li>C:\Users\username\AppData\Roaming\Data\file.png</li></ul>




<a id="review"></a>
### Review the list of exclusions

You can retrieve the items in the exclusion list with PowerShell, [System Center Configuration Manager](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#exclusion-settings), [Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune), or the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions).

If you use PowerShell, you can retrieve the list in two ways:

- Retrieve the status of all Windows Defender AV preferences. Each of the lists will be displayed on separate lines, but the items within each list will be combined into the same line.
- Write the status of all preferences to a variable, and use that variable to only call the specific list you are interested in. Each use of `Add-MpPreference` is written to a new line.

**Review the list of exclusions alongside all other Windows Defender AV preferences:**

Use the following cmdlet:

```PowerShell
Get-MpPreference
```

In the following example, the items contained in the `ExclusionExtension` list are highlighted:
  

![PowerShell output for Get-MpPreference showing the exclusion list alongside other preferences](images/defender/wdav-powershell-get-exclusions-all.png)

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.


**Retrieve a specific exclusions list:**

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

If Windows Defender AV reports malware, then the rule is not working. If there is no report of malware, and the downloaded file exists, then the exclusion is working. You can open the file to confirm the contents are the same as what is described on the [EICAR testfile website](http://www.eicar.org/86-0-Intended-use.html).

You can also use the following PowerShell code, which calls the .NET WebClient class to download the testfile - as with the `Invoke-WebRequest` cmdlet; replace *c:\test.txt* with a file that conforms to the rule you are validating:

```PowerShell 
$client = new-object System.Net.WebClient
$client.DownloadFile("http://www.eicar.org/download/eicar.com.txt","c:\test.txt")
```



## Related topics

- [Configure and validate exclusions in Windows Defender AV scans](configure-exclusions-windows-defender-antivirus.md)
- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md)
- [Configure exclusions in Windows Defender AV on Windows Servery](configure-server-exclusions-windows-defender-antivirus.md)
- [Customize, initiate, and review the results of Windows Defender AV scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
