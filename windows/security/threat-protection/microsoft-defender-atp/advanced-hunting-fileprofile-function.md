---
title: FileProfile() function in advanced hunting for Microsoft Defender Advanced Threat Protection
description: Learn how to use the FileProfile() to enrich information about files in your advanced hunting query results 
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, Microsoft Defender ATP, Microsoft Defender Advanced Threat Protection, Windows Defender, Windows Defender ATP, Windows Defender Advanced Threat Protection, search, query, telemetry, schema reference, kusto, FileProfile, file profile, function, enrichment
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
ms.date: 09/20/2020
---

# FileProfile()

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The `FileProfile()` function is an enrichment function in [advanced hunting](advanced-hunting-overview.md) that adds the following data to files found by the query.

Column | Data type | Description
-|-|-
SHA1 | string | SHA-1 of the file that the recorded action was applied to
SHA256 | string | SHA-256 of the file that the recorded action was applied to
MD5 | string | MD5 hash of the file that the recorded action was applied to
FileSize | int | Size of the file in bytes
GlobalPrevalence | int | Number of instances of the entity observed by Microsoft globally
GlobalFirstSeen | datetime | Date and time when the entity was first observed by Microsoft globally
GlobalLastSeen | datetime | Date and time when the entity was last observed by Microsoft globally
Signer | string | Information about the signer of the file
Issuer | string | Information about the issuing certificate authority (CA)
SignerHash | string | Unique hash value identifying the signer
IsCertificateValid | boolean | Whether the certificate used to sign the file is valid
IsRootSignerMicrosoft | boolean | Indicates whether the signer of the root certificate is Microsoft
IsExecutable | boolean | Whether the file is a Portable Executable (PE) file
ThreatName | string | Detection name for any malware or other threats found
Publisher | string | Name of the organization that published the file
SoftwareName | string | Name of the software product

## Syntax

```kusto
invoke FileProfile(x,y)
```

## Arguments

- **x** — file ID column to use: `SHA1`, `SHA256`, `InitiatingProcessSHA1` or `InitiatingProcessSHA256`; function uses `SHA1` if unspecified
- **y** — limit to the number of records to enrich, 1-1000; function uses 100 if unspecified

## Examples

### Project only the SHA1 column and enrich it

```kusto
DeviceFileEvents
| where isnotempty(SHA1) and Timestamp > ago(1d)
| take 10
| project SHA1
| invoke FileProfile()
```

### Enrich the first 500 records and list low-prevalence files

```kusto
DeviceFileEvents
| where ActionType == "FileCreated" and Timestamp > ago(1d)
| project CreatedOn = Timestamp, FileName, FolderPath, SHA1
| invoke FileProfile("SHA1", 500) 
| where GlobalPrevalence < 15
```

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
