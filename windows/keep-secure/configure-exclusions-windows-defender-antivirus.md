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

You can exclude certain files, folders, and process-modified files from being scanned by Windows Defender AV. The exclusions apply to both [scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md) and [always-on real-time protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md).

Changes made via Group Policy to the exclusion lists will show in the lists in the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions).

However, changes made in the Windows Defender Security Center app will not show in the lists in the Group Policy settings.


## Exclude file extensions from Windows Defender AV scans

You can exclude certain file extenstions from being scanned by Windows Defender AV.

**Use Group Policy to exclude specified file extensions from scans:**

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




## Exclude paths and files from Windows Defender AV scans

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


## Exclude files opened by processes from Windows Defender AV scns

You can exclude files that are opened by specified processes from being scanned. The specified process won't be excluded - but any files that are opened by that process will be.

You can only exclude executable files.

**Use Group Policy to exclude files that have been used or modified by specified processes from scans:**

1.  On your Group Policy management machine, open the [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), right-click the Group Policy Object you want to configure and click **Edit**.

3.  In the **Group Policy Management Editor** go to **Computer configuration**.

4.  Click **Policies** then **Administrative templates**.

5.  Expand the tree to **Windows components > Windows Defender Antivirus > Exclusions**. 


6. Double-click the **Process Exclusions** setting and add the exclusions:

    1. Set the option to **Enabled**. 
    2. Under the **Options** section, click **Show...**
    3. Enter each process on its own line under the **Value name** column. Ensure you enter a fully qualified path to the process, including the drive letter, folder path, filename, and extesnsion. Enter **0** in the **Value** column for all processes.

7. Click **OK**. 

![The Group Policy setting for specifying process exclusions](images/defender/wdav-process-exclusions.png)


 ## Configure auto exclusions lists for Windows Server deployments

If you are using Windows Defender AV to protect Windows Server endpoints or machines, you are [automatically enrolled in certain exclusions](https://technet.microsoft.com/en-us/windows-server-docs/security/windows-defender/automatic-exclusions-for-windows-defender), as defined by your specified Server role.

These exclusions will not appear in the standard exclusion lists shown in the [Windows Defender Security Center app](windows-defender-security-center-antivirus.md#exclusions).

You can also [add custom exclusions to the auto exclusions with PowerShell](https://technet.microsoft.com/en-us/windows-server-docs/security/windows-defender/windows-defender-overview-windows-server#BKMK_DefExclusions).
Exclusions | Turn off Auto Exclusions | 







## Related topics

- [Customize, initiate, and review the results of Windows Defender AV scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)