---
title: DeviceFileEvents table in the advanced hunting schema 
description: Learn about file-related events in the DeviceFileEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, schema reference, kusto, table, column, data type, description, devicefileevents, files, path, hash, sha1, sha256, md5, FileCreationEvents
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 10/08/2019
---

# DeviceFileEvents

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The `DeviceFileEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about file creation, modification, and other file system events. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see  [the advanced hunting schema reference](advanced-hunting-schema-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the machine in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the machine |
| `ActionType` | string | Type of activity that triggered the event |
| `FileName` | string | Name of the file that the recorded action was applied to |
| `FolderPath` | string | Folder containing the file that the recorded action was applied to |
| `SHA1` | string | SHA-1 of the file that the recorded action was applied to |
| `SHA256` | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available |
| `MD5` | string | MD5 hash of the file that the recorded action was applied to |
| `FileOriginUrl` | string | URL where the file was downloaded from |
| `FileOriginReferrerUrl` | string | URL of the web page that links to the downloaded file |
| `FileOriginIP` | string | IP address where the file was downloaded from |
| `InitiatingProcessAccountDomain` | string | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | string | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessMD5` | string | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessSHA1` | string | SHA-1 of the process (image file) that initiated the event |
| `InitiatingProcessFolderPath` | string | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessFileName` | string | Name of the process that initiated the event |
| `InitiatingProcessId` | int | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | string | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | datetime | Date and time when the process that initiated the event was started |
| `InitiatingProcessIntegrityLevel` | string | integrity level of the process that initiated the event. Windows assigns integrity levels to processes based on certain characteristics, such as if they were launched from an internet download. These integrity levels influence permissions to resources |
| `InitiatingProcessTokenElevation` | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the process that initiated the event |
| `InitiatingProcessParentId` | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentFileName` | string | Name of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | datetime | Date and time when the parent of the process responsible for the event was started |
| `RequestProtocol` | string | Network protocol, if applicable, used to initiate the activity: Unknown, Local, SMB, or NFS |
| `ShareName` | string | Name of shared folder containing the file |
| `RequestSourceIP` | string | IPv4 or IPv6 address of the remote device that initiated the activity |
| `RequestSourcePort` | string | Source port on the remote device that initiated the activity |
| `RequestAccountName` | string | User name of account used to remotely initiate the activity |
| `RequestAccountDomain` | string | Domain of the account used to remotely initiate the activity |
| `RequestAccountSid` | string | Security Identifier (SID) of the account to remotely initiate the activity |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `AppGuardContainerId` | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |
| `SensitivityLabel` | string | Label applied to an email, file, or other content to classify it for information protection |
| `SensitivitySubLabel` | string | Sublabel applied to an email, file, or other content to classify it for information protection; sensitivity sublabels are grouped under sensitivity labels but are treated independently |
| `IsAzureInfoProtectionApplied` | boolean | Indicates whether the file is encrypted by Azure Information Protection |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
