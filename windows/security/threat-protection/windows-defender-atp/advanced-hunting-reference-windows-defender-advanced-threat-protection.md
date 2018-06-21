---
title: Advanced hunting reference in Windows Defender ATP
description: Learn about Advanced hunting table reference such as column name, data type, and description
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 06/01/2018
---

# Advanced hunting reference in Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)


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
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| EventTime | datetime | Date and time when the event was recorded |
| EventType | string | Table where the record is stored |
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
| InitiatingProcessParentName | string | Name of the parent process that spawned the process responsible for the event |
| InitiatingProcessSha1 | string | SHA-1 of the process (image file) that initiated the event |
| InitiatingProcessSha256 | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated—use the SHA1 column when available. |
| InitiatingProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| IsAzureADJoined | boolean | Boolean indicator of whether machine is joined to the Azure Active Directory |
| LocalIP | string | IP address assigned to the local machine used during communication |
| LocalPort | int | TCP port on the local machine used during communication |
| LogonId | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts. |
| LoggedOnUsers | string | List of all users that are logged on the machine at the time of the event in JSON array format |
| LogonType | string | Type of logon session, specifically:<br><br> - **Interactive** - User physically interacts with the machine using the local keyboard and screen<br><br> - **Remote interactive (RDP) logons** - User interacts with the machine remotely using Remote Desktop, Terminal Services, Remote Assistance, or other RDP clients<br><br> - **Network** - Session initiated when the machine is accessed using PsExec or when shared resources on the machine, such as printers and shared folders, are accessed<br><br> - **Batch** - Session initiated by scheduled tasks<br><br> - **Service** - Session initiated by services as they start<br> 
| MachineGroup | string | Machine group of the machine. This group is used by role-based access control to determine access to the machine. |
| MachineId | string | Unique identifier for the machine in the service |
| MD5 | string | MD5 hash of the file that the recorded action was applied to |
| NetworkCardIPs | string | List of all network adapters on the machine, including their MAC addresses and assigned IP addresses, in JSON array format |
| OSArchitecture | string | Architecture of the operating system running on the machine |
| OSBuild | string | Build version of the operating system running on the machine |
| OSPlatform | string | Platform of the operating system running on the machine. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. |
| PreviousRegistryKey | string | Original registry key of the registry value before it was modified |
| PreviousRegistryValueData | string | Original data of the registry value before it was modified |
| PreviousRegistryValueName | string | Original name of the registry value before it was modified |
| PreviousRegistryValueType | string | Original data type of the registry value before it was modified |
| ProcessCommandline | string | Command line used to create the new process |
| ProcessCreationTime | datetime | Date and time the process was created |
| ProcessId | int | Process ID (PID) of the newly created process |
| ProcessIntegrityLevel | string | Integrity level of the newly created process. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet downloaded. These integrity levels influence permissions to resources. |
| ProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| ProviderId | string | Unique identifier for the Event Tracing for Windows (ETW) provider that collected the event log |
| PublicIP | string | Public IP address used by the onboarded machine to connect to the Windows Defender ATP service. This could be the IP address of the machine itself, a NAT device, or a proxy. |
| RegistryKey | string | Registry key that the recorded action was applied to |
| RegistryValueData | string | Data of the registry value that the recorded action was applied to |
| RegistryValueName | string | Name of the registry value that the recorded action was applied to |
| RegistryValueType | string | Data type, such as binary or string, of the registry value that the recorded action was applied to |
| RemoteComputerName | string | Name of the machine that performed a remote operation on the affected machine. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name, or a host name without domain information. |
| RemoteIP | string | IP address that was being connected to |
| RemotePort | int | TCP port on the remote device that was being connected to |
| RemoteUrl | string | URL or fully qualified domain name (FQDN) that was being connected to |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns. |
| SHA1 | string | SHA-1 of the file that the recorded action was applied to |
| SHA256 | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available. |

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-belowfoldlink)        

## Related topic
- [Query data using Advanced hunting](advanced-hunting-windows-defender-advanced-threat-protection.md)
- [Advanced hunting query language best practices](/advanced-hunting-best-practices-windows-defender-advanced-threat-protection.md)