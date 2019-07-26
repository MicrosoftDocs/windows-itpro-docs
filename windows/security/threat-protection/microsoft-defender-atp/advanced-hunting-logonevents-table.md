---
title: LogonEvents
description: Learn about Advanced hunting table LogonEvents, such as column names, data types, and description
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description, logonevents
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

# LogonEvents

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

LogonEvents is a table in the Advanced hunting schema. It contains information about user logons and other authentication events. You can use the reference below to construct queries that return information from this table.

For information on other tables in the Advanced hunting schema, see our [Advanced hunting reference](advanced-hunting-reference.md) page.

| Column name | Data type | Description |
|-------------|-----------|-------------|
| EventTime | datetime | Date and time when the event was recorded |
| MachineId | string | Unique identifier for the machine in the service |
| ComputerName | string	| Fully qualified domain name (FQDN) of the machine |
| ActionType | string |Type of activity that triggered the event |
| AccountDomain | string | Domain of the account |
| AccountName | string | User name of the account |
| AccountSid | string | Security Identifier (SID) of the account |
| LogonType | string | Type of logon session, specifically:<br><br> - **Interactive** - User physically interacts with the machine using the local keyboard and screen<br><br> - **Remote interactive (RDP) logons** - User interacts with the machine remotely using Remote Desktop, Terminal Services, Remote Assistance, or other RDP clients<br><br> - **Network** - Session initiated when the machine is accessed using PsExec or when shared resources on the machine, such as printers and shared folders, are accessed<br><br> - **Batch** - Session initiated by scheduled tasks<br><br> - **Service** - Session initiated by services as they start<br> |
| LogonId | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts |
| RemoteComputerName | string | Name of the machine that performed a remote operation on the affected machine. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name  or a host name without domain information |
| RemoteIP | string | IP address that was being connected to |
| RemoteIPType | string | Type of IP address, for example Public, Private, Reserved, Loopback, Teredo, FourToSixMapping, and Broadcast |
| RemotePort | int | TCP port on the remote device that was being connected to |
| AdditionalFields | string | Additional information about the event in JSON array format |
| InitiatingProcessAccountDomain | string | Domain of the account that ran the process responsible for the event |
| InitiatingProcessAccountName | string | User name of the account that ran the process responsible for the event |
| InitiatingProcessAccountSid | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| InitiatingProcessIntegrityLevel | string | Integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources |
| InitiatingProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| InitiatingProcessSHA1 | string | SHA-1 of the process (image file) that initiated the event |
| InitiatingProcessSHA256 | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated—use the SHA1 column when available |
| InitiatingProcessMD5 | string | MD5 hash of the process (image file) that initiated the event |
| InitiatingProcessFileName | string | Name of the process that initiated the event |
| InitiatingProcessId | int | Process ID (PID) of the process that initiated the event |
| InitiatingProcessCommandLine | string | Command line used to run the process that initiated the event |
| InitiatingProcessCreationTime | datetime | Date and time when the process that initiated the event was started |
| InitiatingProcessFolderPath | string | Folder containing the process (image file) that initiated the event |
| InitiatingProcessParentId | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| InitiatingProcessParentFileName | string | Name of the parent process that spawned the process responsible for the event |
| InitiatingProcessParentCreationTime | datetime | Date and time when the parent of the process responsible for the event was started |
| ReportId | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the ComputerName and EventTime columns |
| AppGuardContainerId | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| IsLocalAdmin | boolean | Boolean indicator of whether the user is a local administrator on the machine |

## Related topics

- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
