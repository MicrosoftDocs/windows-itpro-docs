---
title: DeviceEvents table in the advanced hunting schema
description: Learn about antivirus, firewall, and other event types in the miscellaneous device events (DeviceEvents) table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, schema reference, kusto, table, column, data type, security events, antivirus, firewall, exploit guard, MiscEvents
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
---

# DeviceEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The miscellaneous device events or `DeviceEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about various event types, including events triggered by security controls, such as Microsoft Defender Antivirus and exploit protection. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting schema reference](advanced-hunting-schema-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the device in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `ActionType` | string | Type of activity that triggered the event |
| `FileName` | string | Name of the file that the recorded action was applied to |
| `FolderPath` | string | Folder containing the file that the recorded action was applied to |
| `SHA1` | string | SHA-1 of the file that the recorded action was applied to |
| `SHA256` | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available |
| `MD5` | string | MD5 hash of the file that the recorded action was applied to |
| `AccountDomain` | string | Domain of the account |
| `AccountName` |string | User name of the account |
| `AccountSid` | string | Security Identifier (SID) of the account |
| `RemoteUrl` | string | URL or fully qualified domain name (FQDN) that was being connected to |
| `RemoteDeviceName` | string | Name of the device that performed a remote operation on the affected device. Depending on the event being reported, this name could be a fully-qualified domain name (FQDN), a NetBIOS name, or a host name without domain information |
| `ProcessId` | int | Process ID (PID) of the newly created process |
| `ProcessCommandLine` | string | Command line used to create the new process |
| `ProcessCreationTime` | datetime | Date and time the process was created |
| `ProcessTokenElevation` | string | Token type indicating the presence or absence of User Access Control (UAC) privilege elevation applied to the newly created process |
| `LogonId` | string | Identifier for a logon session. This identifier is unique on the same device only between restarts |
| `RegistryKey` | string | Registry key that the recorded action was applied to |
| `RegistryValueName` | string | Name of the registry value that the recorded action was applied to |
| `RegistryValueData` | string | Data of the registry value that the recorded action was applied to |
| `RemoteIP` | string | IP address that was being connected to |
| `RemotePort` | int | TCP port on the remote device that was being connected to |
| `LocalIP` | string | IP address assigned to the local device used during communication |
| `LocalPort` | int | TCP port on the local device used during communication |
| `FileOriginUrl` | string | URL where the file was downloaded from |
| `FileOriginIP` | string | IP address where the file was downloaded from |
| `AdditionalFields` | string | Additional information about the event in JSON array format |
| `InitiatingProcessSHA1` | string | SHA-1 of the process (image file) that initiated the event |
| `InitiatingProcessSHA256` | string | SHA-256 of the process (image file) that initiated the event. This field is usually not populated—use the SHA1 column when available |
| `InitiatingProcessFileName` | string | Name of the process that initiated the event |
| `InitiatingProcessFolderPath` | string | Folder containing the process (image file) that initiated the event |
| `InitiatingProcessId` | int | Process ID (PID) of the process that initiated the event |
| `InitiatingProcessCommandLine` | string | Command line used to run the process that initiated the event |
| `InitiatingProcessCreationTime` | datetime | Date and time when the process that initiated the event was started |
| `InitiatingProcessParentId` | int | Process ID (PID) of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentFileName` | string | Name of the parent process that spawned the process responsible for the event |
| `InitiatingProcessParentCreationTime` | datetime | Date and time when the parent of the process responsible for the event was started |
| `InitiatingProcessMD5` | string | MD5 hash of the process (image file) that initiated the event |
| `InitiatingProcessAccountDomain` | string | Domain of the account that ran the process responsible for the event |
| `InitiatingProcessAccountName` | string | User name of the account that ran the process responsible for the event |
| `InitiatingProcessAccountSid` | string | Security Identifier (SID) of the account that ran the process responsible for the event |
| `InitiatingProcessLogonId` | string | Identifier for a logon session of the process that initiated the event. This identifier is unique on the same device only between restarts |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the `DeviceName` and `Timestamp` columns |
| `AppGuardContainerId` | string | Identifier for the virtualized container used by Application Guard to isolate browser activity |


## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
