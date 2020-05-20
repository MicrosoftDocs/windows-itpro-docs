---
title: DeviceFileCertificateInfo table in the advanced hunting schema
description: Learn about file signing information in the DeviceFileCertificateInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, windows defender atp, wdatp search, query, telemetry, schema reference, kusto, table, column, data type, description, digital signature, certificate, file signing, DeviceFileCertificateInfo
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
ms.date: 01/14/2020
---

# DeviceFileCertificateInfo

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The `DeviceFileCertificateInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about file signing certificates. This table uses data obtained from certificate verification activities regularly performed on files on endpoints.

For information on other tables in the advanced hunting schema, see [the advanced hunting schema reference](advanced-hunting-schema-reference.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `DeviceId` | string | Unique identifier for the device in the service |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the device |
| `SHA1` | string | SHA-1 of the file that the recorded action was applied to |
| `IsSigned` | boolean | Indicates whether the file is signed |
| `SignatureType` | string | Indicates whether signature information was read as embedded content in the file itself or read from an external catalog file |
| `Signer` | string | Information about the signer of the file |
| `SignerHash` | string | Unique hash value identifying the signer |
| `Issuer` | string | Information about the issuing certificate authority (CA) |
| `IssuerHash` | string | Unique hash value identifying issuing certificate authority (CA) |
| `CertificateSerialNumber` | string | Identifier for the certificate that is unique to the issuing certificate authority (CA) |
| `CrlDistributionPointUrls` | string |  JSON array listing the URLs of network shares that contain certificates and certificate revocation lists (CRLs) |
| `CertificateCreationTime` | datetime | Date and time the certificate was created |
| `CertificateExpirationTime` | datetime | Date and time the certificate is set to expire |
| `CertificateCountersignatureTime` | datetime | Date and time the certificate was countersigned |
| `IsTrusted` | boolean | Indicates whether the file is trusted based on the results of the WinVerifyTrust function, which checks for unknown root certificate information, invalid signatures, revoked certificates, and other questionable attributes |
| `IsRootSignerMicrosoft` | boolean | Indicates whether the signer of the root certificate is Microsoft |
| `ReportId` | long | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns. |


## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)