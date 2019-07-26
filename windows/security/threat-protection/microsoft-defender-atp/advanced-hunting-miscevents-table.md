---
title: MiscEvents
description: MiscEvents table in the advanced hunting schema
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description, miscEvents
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-maave
author: martyav
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 07/24/2019
---

# MiscEvents

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The MiscEvents table in the Advanced hunting schema contains information about multiple event types, including events triggered by security controls, such as Windows Defender Antivirus and exploit protection. Use this reference to construct queries that return information from this table.

For information on other tables in the Advanced hunting schema, see our [Advanced hunting reference](advanced-hunting-reference.md) page.

| Column name | Data type | Description |
|-------------|-----------|-------------|
| EventTime | datetime | Date and time when the event was recorded |
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string | Fully qualified domain name (FQDN) of the machine |
| ActionType | string | Type of activity that triggered the event |
| FileName | string | Name of the file that the recorded action was applied to |
| FolderPath | string | Folder containing the file that the recorded action was applied to |
| SHA1 | string | SHA-1 of the file that the recorded action was applied to |
| SHA256 | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available |
| MD5 | string | MD5 hash of the file that the recorded action was applied to |
| AccountDomain | string | Domain of the account |
| AccountName |string | User name of the account |
| AccountSid | string | Security Identifier (SID) of the account |
| RemoteUrl | string | URL or fully qualified domain name (FQDN) that was being connected to |
| RemoteComputerName | string | Name of the machine that performed a remote operation on the affected machine | Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name, or a host name without domain information |
| ProcessId | int | Process ID (PID) of the newly created process |
| ProcessCommandLine | string | Command line used to create the new process |
| ProcessCreationTime | datetime | Date and time the process was created |
| ProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| LogonId | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts |
| RegistryKey | string | Registry key that the recorded action was applied to |
| RegistryValueName | string | Name of the registry value that the recorded action was applied to |
| RegistryValueData | string | Data of the registry value that the recorded action was applied to |
| RemoteIP | string | IP address that was being connected to |
| RemotePort | int | TCP port on the remote device that was being connected to |
| LocalIP | string | IP address assigned to the local machine used during communication |
| LocalPort | int | TCP port on the local machine used during communication |
| FileOriginUrl | string | URL where the file was downloaded from |
| FileOriginIP | string | IP address where the file was downloaded from |
| AdditionalFields | string | Additional information about the event in JSON array format |
| InitiatingProcessSHA1 | string | SHA-1 of the process (image file) that initiated the event |
| InitiatingProcessSHA256 | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated—use the SHA1 column when available |
| InitiatingProcessFileName | string | Name of the process that initiated the event |
| InitiatingProcessFolderPath | string | Folder containing the process (image file) that initiated the event |
| InitiatingProcessId | int | Process ID (PID) of the process that initiated the event |
| InitiatingProcessCommandLine | string | Command line used to run the process that initiated the event |
| InitiatingProcessCreationTime | datetime | Date and time when the process that initiated the event was started |
| InitiatingProcessParentId | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| InitiatingProcessParentFileName | string | Name of the parent process that spawned the process responsible for the event |
| InitiatingProcessParentCreationTime | datetime | Date and time when the parent of the process responsible for the event was started |
| InitiatingProcessMD5 | string | MD5 hash of the process (image file) that initiated the event |
| InitiatingProcessAccountDomain | string | Domain of the account that ran the process responsible for the event |
| InitiatingProcessAccountName | string | User name of the account that ran the process responsible for the event |
| InitiatingProcessAccountSid | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| InitiatingProcessLogonId | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same machine only between restarts |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns |
| AppGuardContainerId | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |

## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
