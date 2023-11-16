---
title: Configure Windows Firewall logging 
description: Learn how to configure Windows Firewall to log dropped packets or successful connections with CSP and group policy.
ms.topic: how-to
ms.date: 11/14/2023
---

# Configure Windows Firewall logging

To configure Windows Firewall to log dropped packets or successful connections, you can use:

- Configuration Service Provider (CSP), using an MDM solution like Microsoft Intune
- Group policy (GPO)

[!INCLUDE [tab-intro](../../../../../includes/configure/tab-intro.md)]

# [:::image type="icon" source="../../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| | | |

[!INCLUDE [intune-settings-catalog-2](../../../../../includes/configure/intune-settings-catalog-2.md)]

> [!TIP]
> You can also configure Windows Firewall by using an *TBD* profile in endpoint security. For more information, see [Account protection policy settings for endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security-account-protection-profile-settings).

Alternatively, you can configure devices using a [custom policy][INT-1] with the [DeviceGuard Policy CSP][CSP-1].

| Setting |
|--------|
| **Setting name**: Turn On Virtualization Based Security<br>**OMA-URI**: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/EnableVirtualizationBasedSecurity`<br>**Data type**: int<br>**Value**: `1`|
| **Setting name**: Credential Guard Configuration<br>**OMA-URI**: `./Device/Vendor/MSFT/Policy/Config/DeviceGuard/LsaCfgFlags`<br>**Data type**: int<br>**Value**:<br>&emsp;**Enabled with UEFI lock**: `1`<br>&emsp;**Enabled without lock**: `2`|

# [:::image type="icon" source="../../../images/icons/group-policy.svg" border="false"::: **Group policy**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../../../includes/configure/gpo-settings-1.md)]

1. Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).
1. In the details pane, in the **Overview** section, click **Windows Defender Firewall Properties**.
1. For each network location type (Domain, Private, Public), perform the following steps.
    1. Click the tab that corresponds to the network location type
    1. Under **Logging**, click **Customize**
    1. The default path for the log is **%windir%\system32\logfiles\firewall\pfirewall.log**. If you want to change this path, clear the **Not configured** check box and type the path to the new location, or click **Browse** to select a file location
        > [!IMPORTANT]
        > The location you specify must have permissions assigned that permit the Windows Firewall service to write to the log file.
1. The default maximum file size for the log is 4,096 kilobytes (KB). If you want to change this size, clear the **Not configured** check box, and type in the new size in KB, or use the up and down arrows to select a ize. The file won't grow beyond this size; when the limit is reached, old log entries are deleted to make room for the newly created ones.
1. No logging occurs until you set one of following two options:
    - To create a log entry when Windows Defender Firewall drops an incoming network packet, change **Log dropped packets** to **Yes**
    - To create a log entry when Windows Defender Firewall allows an inbound connection, change **Log successful connections** to **Yes**
1. Click **OK** twice


| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration** > **Windows Settings** > **Security Settings** > **Windows Defender Firewall with Advanced Security** |Turn On Virtualization Based Security | **Enabled** and select one of the options listed under the **Credential Guard Configuration** dropdown:<br>&emsp;- **Enabled with UEFI lock**<br>&emsp;- **Enabled without lock**|

[!INCLUDE [gpo-settings-2](../../../../../includes/configure/gpo-settings-2.md)]

---

### Troubleshoot Slow Log Ingestion

If logs are slow to appear in Sentinel, you can turn down the log file size. Just beware that this downsizing will result in more resource usage due to the increased resource usage for log rotation.

### Troubleshoot if the log file is not created or modified

Sometimes the Windows Firewall log files aren't created, or the events aren't written to the log files. Some examples when this condition might occur include:

- missing permissions for the *Windows Defender Firewall Service* (MpsSvc) on the folder or on the log files
- you want to store the log files in a different folder and the permissions were removed, or haven't been set automatically
- if firewall logging is configured via policy settings, it can happen that
  - the log folder in the default location `%windir%\System32\LogFiles\firewall` doesn't exist
  - the log folder in a custom path doesn't exist
  In both cases, you must create the folder manually or via script, and add the permissions for MpsSvc

If firewall logging is configured via Group Policy only, it also can happen that the `firewall` folder is not created in the default location `%windir%\System32\LogFiles\`. The same can happen if a custom path to a non-existent folder is configured via Group Policy. In this case, create the folder manually or via script and add the permissions for MPSSVC.  

```PowerShell
New-Item -ItemType Directory -Path $env:windir\System32\LogFiles\Firewall
```

Verify if MpsSvc has *FullControl* on the folder and the files.
From an elevated PowerShell session, use the following commands, ensuring to use the correct path:

```PowerShell
$LogPath = Join-Path -path $env:windir -ChildPath "System32\LogFiles\Firewall"
(Get-ACL -Path $LogPath).Access | Format-Table IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -AutoSize
```

The output should show `NT SERVICE\mpssvc` having *FullControl*:

```PowerShell
IdentityReference      FileSystemRights AccessControlType IsInherited InheritanceFlags
-----------------      ---------------- ----------------- ----------- ----------------
NT AUTHORITY\SYSTEM         FullControl             Allow       False    ObjectInherit
BUILTIN\Administrators      FullControl             Allow       False    ObjectInherit
NT SERVICE\mpssvc           FullControl             Allow       False    ObjectInherit
```

If not, add *FullControl* permissions for mpssvc to the folder, subfolders and files. Make sure to use the correct path.

```PowerShell
$LogPath = Join-Path -path $env:windir -ChildPath "System32\LogFiles\Firewall"
$ACL = get-acl -Path $LogPath
$ACL.SetAccessRuleProtection($true, $false)
$RULE = New-Object System.Security.AccessControl.FileSystemAccessRule ("NT SERVICE\mpssvc","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$ACL.AddAccessRule($RULE)
```

Restart the device to restart the *Windows Defender Firewall* service.
