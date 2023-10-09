---
title: Configure the Windows Defender Firewall Log 
description: Learn how to configure Windows Defender Firewall with Advanced Security to log dropped packets or successful connections by using Group Policy Management MMC.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
---

# Configure the Windows Defender Firewall with Advanced Security Log


To configure Windows Defender Firewall with Advanced Security to log dropped packets or successful connections, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management MMC snap-in.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## To configure the Windows Defender Firewall with Advanced Security log

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane, in the **Overview** section, click **Windows Defender Firewall Properties**.

3.  For each network location type (Domain, Private, Public), perform the following steps.

    1.  Click the tab that corresponds to the network location type.

    2.  Under **Logging**, click **Customize**.

    3.  The default path for the log is **%windir%\\system32\\logfiles\\firewall\\pfirewall.log**. If you want to change this path, clear the **Not configured** check box and type the path to the new location, or click **Browse** to select a file location.

        >**Important:**  The location you specify must have permissions assigned that permit the Windows Defender Firewall service to write to the log file.

    4.  The default maximum file size for the log is 4,096 kilobytes (KB). If you want to change this size, clear the **Not configured** check box, and type in the new size in KB, or use the up and down arrows to select a size. The file won't grow beyond this size; when the limit is reached, old log entries are deleted to make room for the newly created ones.

    5.  No logging occurs until you set one of following two options:

        -   To create a log entry when Windows Defender Firewall drops an incoming network packet, change **Log dropped packets** to **Yes**.

        -   To create a log entry when Windows Defender Firewall allows an inbound connection, change **Log successful connections** to **Yes**.

    6.  Click **OK** twice.

### Troubleshooting if the log file is not created or modified

Sometimes the log files are not created or no events are written the log files. This can be related to missing permissions for the Windows Defender Firewall Service (mpssvc) on the folder or the logfiles themselves. It can happen if you want to store the log files in a different folder or the permissions were removed or have not been set automatically.  
If firewall logging is configured via Group Policy only, it also can happen that the `firewall` folder is not created in the default location `%windir%\System32\LogFiles\`. The same can happen if a custom path to a non-existant folder is configered via Group Policy. In this case, create the folder manually or via script and add the permissions for MPSSVC.  

```PowerShell
New-Item -ItemType Directory -Path $env:windir\System32\LogFiles\Firewall
```

Verify if mpssvc has FullControl on the folder and the files.
Open an elevated PowerShell and use these commands. Make sure to use the correct path.

```
$LogPath = Join-Path -path $env:windir -ChildPath "System32\LogFiles\Firewall"
(Get-ACL -Path $LogPath).Access | Format-Table IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -AutoSize
```
The output should show NT SERVICE\mpssvc having FullControl:
```
IdentityReference      FileSystemRights AccessControlType IsInherited InheritanceFlags
-----------------      ---------------- ----------------- ----------- ----------------
NT AUTHORITY\SYSTEM         FullControl             Allow       False    ObjectInherit
BUILTIN\Administrators      FullControl             Allow       False    ObjectInherit
NT SERVICE\mpssvc           FullControl             Allow       False    ObjectInherit
```
If not, add FullControl permissions for mpssvc to the folder, subfolders and files. Make sure to use the correct path.
```
$LogPath = Join-Path -path $env:windir -ChildPath "System32\LogFiles\Firewall"
$ACL = get-acl -Path $LogPath
$ACL.SetAccessRuleProtection($true, $false)
$RULE = New-Object System.Security.AccessControl.FileSystemAccessRule ("NT SERVICE\mpssvc","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$ACL.AddAccessRule($RULE)
```
Restart the Computer to restart the Windows Defender Firewall Service.



### Troubleshooting Slow Log Ingestion
If logs are slow to appear in Sentinel, you can turn down the log file size. Just beware that this downsizing will result in more resource usage due to the increased resource usage for log rotation. 
