---
title: Configure Windows Firewall logging
description: Learn how to configure Windows Firewall to log dropped packets or successful connections with CSP and group policy.
ms.topic: how-to
ms.date: 09/06/2024
---

# Configure Windows Firewall logging

To configure Windows Firewall to log dropped packets or successful connections, you can use:

- Configuration Service Provider (CSP), using an MDM solution like Microsoft Intune
- Group policy (GPO)

[!INCLUDE [tab-intro](../../../../../includes/configure/tab-intro.md)]

# [:::image type="icon" source="../../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

1. Sign into the [Microsoft Intune admin center][INT]
1. Go to **Endpoint security** > **Firewall** > **Create policy** > **Windows 10, Windows 11, and Windows Server** > **Windows Firewall** > **Create**
1. Enter a name and, optionally, a description > **Next**
1. Under **Configuration settings**, for each network location type (*Domain*, *Private*, *Public*), configure:
    - **Log file path**
    - **Enable log dropped packets**
    - **Enable log success connections**
    - **Log max file size**
1. Select **Next** > **Next**
1. Assign the policy to a group that contains as members the devices or users that you want to configure > **Next** > **Create**

> [!TIP]
> If you prefer you can also use a [Settings catalog policy][MEM-1] to configure Windows Firewall logging.

Alternatively, you can configure devices using a [custom policy][INT-1] with the [Firewall CSP][CSP-1].

| Network profile | Setting |
|--|--|
| *Domain* | Setting name: [EnableLogDroppedPackets][CSP-2]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableLogDroppedPackets` |
| *Domain* | Setting name: [LogFilePath][CSP-5]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/DomainProfile/LogFilePath` |
| *Domain* | Setting name: [EnableLogSuccessConnections][CSP-8]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/DomainProfile/EnableLogSuccessConnections` |
| *Domain* | Setting name: [LogMaxFileSize][CSP-11]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/DomainProfile/LogMaxFileSize` |
| *Private* | Setting name: [EnableLogDroppedPackets][CSP-3]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableLogDroppedPackets` |
| *Private* | Setting name: [LogFilePath][CSP-6]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/LogFilePath`|
| *Private* | Setting name: [EnableLogSuccessConnections][CSP-9]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/EnableLogSuccessConnections` |
| *Private* | Setting name: [LogMaxFileSize][CSP-12]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PrivateProfile/LogMaxFileSize` |
| *Public* | Setting name: [EnableLogDroppedPackets][CSP-4]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableLogDroppedPackets` |
| *Public* | Setting name: [LogFilePath][CSP-7]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PublicProfile/LogFilePath`|
| *Public* | Setting name: [EnableLogSuccessConnections][CSP-10]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PublicProfile/EnableLogSuccessConnections` |
| *Public* | Setting name: [LogMaxFileSize][CSP-13]<br>OMA-URI: `./Vendor/MSFT/Firewall/MdmStore/PublicProfile/LogMaxFileSize` |

# [:::image type="icon" source="../../../images/icons/group-policy.svg" border="false"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../../../includes/configure/gpo-settings-1.md)]

1. Expand the nodes **Computer Configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Windows Firewall with Advanced Security**
1. In the details pane, in the **Overview** section, select **Windows Defender Firewall Properties**
1. For each network location type (*Domain*, *Private*, *Public*), perform the following steps
    1. Select the tab that corresponds to the network location type
    1. Under **Logging**, select **Customize**
    1. The default path for the log is `%windir%\system32\logfiles\firewall\pfirewall.log`. If you want to change this path, clear the **Not configured** check box and enter the path to the new location, or select **Browse** to select a file location
1. The default maximum file size for the log is 4,096 kilobytes (KB). If you want to change this size, clear the **Not configured** check box, and enter the new size in KB, or use the up and down arrows to select a size. The file won't grow beyond this size; when the limit is reached, old log entries are deleted to make room for the newly created ones.
1. No logging occurs until you set one of following two options:
    - To create a log entry when Windows Defender Firewall drops an incoming network packet, change **Log dropped packets** to **Yes**
    - To create a log entry when Windows Defender Firewall allows an inbound connection, change **Log successful connections** to **Yes**
1. Select **OK** twice

[!INCLUDE [gpo-settings-2](../../../../../includes/configure/gpo-settings-2.md)]

---

> [!IMPORTANT]
> The location you specify must have permissions assigned that permit the Windows Firewall service to write to the log file.

## Recommendations

Here are some recommendations for configuring Windows Firewall logging:

- Change the logging size to at least **20,480 KB (20 MB)** to ensure that the log file doesn't fill up too quickly. The maximum log size is 32,767 KB (32 MB)
- For each profile (Domain, Private, and Public) change the default log file name from `%windir%\system32\logfiles\firewall\pfirewall.log` to:
  - `%windir%\system32\logfiles\firewall\pfirewall_Domain.log`
  - `%windir%\system32\logfiles\firewall\pfirewall_Private.log`
  - `%windir%\system32\logfiles\firewall\pfirewall_Public.log`
- Log dropped packets to **Yes**
- Log successful connections to **Yes**

On a single system, you can use the following commands to configure logging:

```cmd
netsh advfirewall>set allprofiles logging allowedconnections enable
netsh advfirewall>set allprofiles logging droppedconnections enable
```

## Parsing methods

There are several methods to parse the Windows Firewall log files. For example:

- Enable *Windows Event Forwarding* (WEF) to a *Windows Event Collector* (WEC). To learn more, see [Use Windows Event Forwarding to help with intrusion detection][WIN-1]
- Forward the logs to your SIEM product such as our Azure Sentinel. To learn more, see [Windows Firewall connector for Microsoft Sentinel][AZ-1]
- Forward the logs to Azure Monitor and use KQL to parse the data. To learn more, see [Azure Monitor agent on Windows client devices][AZ-2]

> [!TIP]
> If logs are slow to appear in your SIEM solution, you can decrease the log file size. Just beware that the downsizing results in more resource usage due to the increased log rotation.

## Troubleshoot if the log file is not created or modified

Sometimes the Windows Firewall log files aren't created, or the events aren't written to the log files. Some examples when this condition might occur include:

- Missing permissions for the *Windows Defender Firewall Service* (`mpssvc`) on the folder or on the log files
- You want to store the log files in a different folder and the permissions are missing, or aren't set automatically
- if firewall logging is configured via policy settings, it can happen that
  - the log folder in the default location `%windir%\System32\LogFiles\firewall` doesn't exist
  - the log folder in a custom path doesn't exist

In both cases, you must create the folder manually or via script, and add the permissions for `mpssvc`.

```PowerShell
New-Item -ItemType Directory -Path $env:windir\System32\LogFiles\Firewall
```

Verify if `mpssvc` has *FullControl* on the folder and the files. From an elevated PowerShell session, use the following commands, ensuring to use the correct path:

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

If not, add *FullControl* permissions for `mpssvc` to the folder, subfolders and files. Make sure to use the correct path.

```PowerShell
$LogPath = Join-Path -path $env:windir -ChildPath "System32\LogFiles\Firewall"
$NewAcl = Get-Acl -Path $LogPath

$identity = "NT SERVICE\mpssvc"
$fileSystemRights = "FullControl"
$inheritanceFlags = "ContainerInherit,ObjectInherit"
$propagationFlags = "None"
$type = "Allow"

$fileSystemAccessRuleArgumentList = $identity, $fileSystemRights, $inheritanceFlags, $propagationFlags, $type
$fileSystemAccessRule = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $fileSystemAccessRuleArgumentList

$NewAcl.SetAccessRule($fileSystemAccessRule)
Set-Acl -Path $LogPath -AclObject $NewAcl
```

Restart the device to restart the *Windows Defender Firewall* service.

<!--links-->

[INT-1]: /mem/intune/configuration/custom-settings-windows-10
[CSP-1]: /windows/client-management/mdm/firewall-csp
[AZ-1]: /azure/sentinel/data-connectors/windows-firewall
[INT]: https://go.microsoft.com/fwlink/?linkid=2109431
[MEM-1]: /mem/intune/configuration/settings-catalog
[WIN-1]: /windows/security/threat-protection/use-windows-event-forwarding-to-assist-in-intrusion-detection
[AZ-2]: /azure/azure-monitor/agents/azure-monitor-agent-windows-client
[CSP-2]: /windows/client-management/mdm/firewall-csp#mdmstoredomainprofileenablelogdroppedpackets
[CSP-3]: /windows/client-management/mdm/firewall-csp#mdmstoreprivateprofileenablelogdroppedpackets
[CSP-4]: /windows/client-management/mdm/firewall-csp#mdmstorepublicprofileenablelogdroppedpackets
[CSP-5]: /windows/client-management/mdm/firewall-csp#mdmstoredomainprofilelogfilepath
[CSP-6]: /windows/client-management/mdm/firewall-csp#mdmstoreprivateprofilelogfilepath
[CSP-7]: /windows/client-management/mdm/firewall-csp#mdmstorepublicprofilelogfilepath
[CSP-8]: /windows/client-management/mdm/firewall-csp#mdmstoredomainprofileenablelogsuccessconnections
[CSP-9]: /windows/client-management/mdm/firewall-csp#mdmstoreprivateprofileenablelogsuccessconnections
[CSP-10]: /windows/client-management/mdm/firewall-csp#mdmstorepublicprofileenablelogsuccessconnections
[CSP-11]: /windows/client-management/mdm/firewall-csp#mdmstoredomainprofilelogmaxfilesize
[CSP-12]: /windows/client-management/mdm/firewall-csp#mdmstoreprivateprofilelogmaxfilesize
[CSP-13]: /windows/client-management/mdm/firewall-csp#mdmstorepublicprofilelogmaxfilesize
