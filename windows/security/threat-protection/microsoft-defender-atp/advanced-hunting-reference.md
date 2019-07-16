---
title: Advanced hunting reference in Microsoft Defender ATP
description: Learn about Advanced hunting table reference such as column name, data type, and description
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 06/01/2018
---

# Advanced hunting reference in Microsoft Defender ATP

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

## Advanced hunting column reference
To effectively build queries that span multiple tables, you need to understand the columns in the Advanced hunting schema. The following table lists all the available columns, along with their data types and descriptions. This information is also available in the schema representation in the Advanced hunting screen.

| Column name | Data type | Description
:---|:--- |:---                                                            
| AccountDomain | string | Domain of the account |
| AccountName | string | User name of the account |
| AccountSid | string | Security Identifier (SID) of the account |
| ActionType | string | Type of activity that triggered the event |
| AdditionalFields | string | Additional information about the event in JSON array format |
| AlertId | string | Unique identifier for the alert |
| AppGuardContainerId | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| Category | string | Type of threat indicator or breach activity identified by the alert |
| ClientVersion | string | Version of the endpoint agent or sensor running on the machine |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| ConnectedNetworks | string | Networks that the adapter is connected to. Each JSON array contains the network name, category (public, private or domain), a description, and a flag indicating if it’s connected publicly to the internet. |
| DefaultGateways | string | Default gateway addresses in JSON array format |
| DnsAddresses | string | DNS server addresses in JSON array format |
| EventTime | datetime | Date and time when the event was recorded |
| FileName | string | Name of the file that the recorded action was applied to |
| FileOriginIp | string | IP address where the file was downloaded from |
| FileOriginReferrerUrl | string | URL of the web page that links to the downloaded file |
| FileOriginUrl | string | URL where the file was downloaded from |
| FolderPath | string | Folder containing the file that the recorded action was applied to |
| InitiatingProcessAccountDomain | string | Domain of the account that ran the process responsible for the event |
| InitiatingProcessAccountName | string | User name of the account that ran the process responsible for the event |
| InitiatingProcessAccountSid | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| InitiatingProcessCommandLine | string | Command line used to run the process that initiated the event |
| InitiatingProcessCreationTime | datetime | Date and time when the process that initiated the event was started |
| InitiatingProcessFileName | string | Name of the process that initiated the event |
| InitiatingProcessFolderPath | string | Folder containing the process (image file) that initiated the event |
| InitiatingProcessId | int | Process ID (PID) of the process that initiated the event |
| InitiatingProcessIntegrityLevel | string | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources. |
| InitiatingProcessLogonId | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same machine only between restarts. |
| InitiatingProcessMd5 | string | MD5 hash of the process (image file) that initiated the event |
| InitiatingProcessParentCreationTime | datetime | Date and time when the parent of the process responsible for the event was started |
| InitiatingProcessParentId | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| InitiatingProcessParentFileName | string | Name of the parent process that spawned the process responsible for the event |
| InitiatingProcessSha1 | string | SHA-1 of the process (image file) that initiated the event |
| InitiatingProcessSha256 | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated—use the SHA1 column when available. |
| InitiatingProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| IPAddresses | string | JSON array containing all the IP addresses assigned to the adapter, along with their respective subnet prefix and IP address space, such as public, private, or link-local |
| Ipv4Dhcp | string | IPv4 address of DHCP server |
| Ipv6Dhcp | string | IPv6 address of DHCP server |
| IsAzureADJoined | boolean | Boolean indicator of whether machine is joined to the Azure Active Directory |
| IsAzureInfoProtectionApplied | boolean | Indicates whether the file is encrypted by Azure Information Protection |
| LocalIP | string | IP address assigned to the local machine used during communication |
| LocalPort | int | TCP port on the local machine used during communication |
| LocalIPType | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| LogonId | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts. |
| LoggedOnUsers | string | List of all users that are logged on the machine at the time of the event in JSON array format |
| LogonType | string | Type of logon session, specifically:<br><br> - **Interactive** - User physically interacts with the machine using the local keyboard and screen<br><br> - **Remote interactive (RDP) logons** - User interacts with the machine remotely using Remote Desktop, Terminal Services, Remote Assistance, or other RDP clients<br><br> - **Network** - Session initiated when the machine is accessed using PsExec or when shared resources on the machine, such as printers and shared folders, are accessed<br><br> - **Batch** - Session initiated by scheduled tasks<br><br> - **Service** - Session initiated by services as they start<br> 
| MacAddress | string | MAC address of the network adapter |
| MachineGroup | string | Machine group of the machine. This group is used by role-based access control to determine access to the machine. |
| MachineId | string | Unique identifier for the machine in the service |
| MD5 | string | MD5 hash of the file that the recorded action was applied to |
| NetworkAdapterName | string | Name of the network adapter |
| NetworkAdapterStatus | string | Operational status of the network adapter. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.operationalstatus?view=netframework-4.7.2). |
| NetworkAdapterType | string | Network adapter type. For the possible values, refer to [this enumeration](https://docs.microsoft.com/dotnet/api/system.net.networkinformation.networkinterfacetype?view=netframework-4.7.2). |
| OSArchitecture | string | Architecture of the operating system running on the machine |
| OSBuild | string | Build version of the operating system running on the machine |
| OSPlatform | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| OsVersion | string | Version of the operating system running on the machine |
| PreviousRegistryKey | string | Original registry key of the registry value before it was modified |
| PreviousRegistryValueData | string | Original data of the registry value before it was modified |
| PreviousRegistryValueName | string | Original name of the registry value before it was modified |
| PreviousRegistryValueType | string | Original data type of the registry value before it was modified |
| ProcessCommandline | string | Command line used to create the new process |
| ProcessCreationTime | datetime | Date and time the process was created |
| ProcessId | int | Process ID (PID) of the newly created process |
| ProcessIntegrityLevel | string | Integrity level of the newly created process. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet downloaded. These integrity levels influence permissions to resources. |
| ProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| Protocol | string | IP protocol used, whether TCP or UDP |
| PublicIP | string | Public IP address used by the onboarded machine to connect to the Microsoft Defender ATP service. This could be the IP address of the machine itself, a NAT device, or a proxy. |
| RegistryKey | string | Registry key that the recorded action was applied to |
| RegistryValueData | string | Data of the registry value that the recorded action was applied to |
| RegistryValueName | string | Name of the registry value that the recorded action was applied to |
| RegistryValueType | string | Data type, such as binary or string, of the registry value that the recorded action was applied to |
| RemoteComputerName | string | Name of the machine that performed a remote operation on the affected machine. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name, or a host name without domain information. |
| RemoteIP | string | IP address that was being connected to |
| RemoteIPType | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| RemotePort | int | TCP port on the remote device that was being connected to |
| RemoteUrl | string | URL or fully qualified domain name (FQDN) that was being connected to |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns. |
| Severity | string | Indicates the potential impact (high, medium, or low) of the threat indicator or breach activity identified by the alert |
| SensitivityLabel | string | Label applied to an email, file, or other content to classify it for information protection |
| SensitivitySubLabel | string | Sublabel applied to an email, file, or other content to classify it for information protection; sensitivity sublabels are grouped under sensitivity labels but are treated independently |
| SHA1 | string | SHA-1 of the file that the recorded action was applied to |
| SHA256 | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available. |
| RegistryMachineTag | string | Machine tag added through the registry |
| Table | string | Table that contains the details of the event |
| TunnelingType | string | Tunneling protocol, if the interface is used for this purpose, for example 6to4, Teredo, ISATAP, PPTP, SSTP, and SSH |

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-belowfoldlink)        

## Related topics
- [Query data using Advanced hunting](advanced-hunting.md)
- [Advanced hunting query language best practices](advanced-hunting-best-practices.md)