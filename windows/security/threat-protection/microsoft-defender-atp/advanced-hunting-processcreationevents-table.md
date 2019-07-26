---
title: ProcessCreationEvents table in the Advanced hunting schema
description: Learn about the ProcessCreationEvents table in the Advanced hunting schema, such as column names, data types, and descriptions
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics, column name, data type, description, processcreationevents
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

# ProcessCreationEvents

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The ProcessCreationEvents table in the Advanced hunting schema contains information about process creation and related events. Use this reference to construct queries that return information from the table.

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
| SHA256 | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available. |
| MD5 | string | MD5 hash of the file that the recorded action was applied to |
| ProcessId | int | Process ID (PID) of the newly created process |
| ProcessCommandLine | string | Command line used to create the new process |
| ProcessIntegrityLevel | string | Integrity level of the newly created process. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet downloaded. These integrity levels influence permissions to resources |
| ProcessTokenElevation | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| ProcessCreationTime | datetime | Date and time the process was created |
| AccountDomain | string | Domain of the account |
| AccountName | string | User name of the account |
| AccountSid | string | Security Identifier (SID) of the account |
| LogonId | string | Identifier for a logon session. This identifier is unique on the same machine only between restarts |
| InitiatingProcessAccountDomain | string | Domain of the account that ran the process responsible for the event |
| InitiatingProcessAccountName | string | User name of the account that ran the process responsible for the event |
| InitiatingProcessAccountSid | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| InitiatingProcessLogonId | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same machine only between restarts. |
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

## Related topics

- [Advanced hunting overview](overview-hunting.md)
- [All Advanced hunting tables](advanced-hunting-reference.md)
- [Advanced hunting query best practices](advanced-hunting-best-practices.md)
- [Query data using Advanced hunting](advanced-hunting.md)
