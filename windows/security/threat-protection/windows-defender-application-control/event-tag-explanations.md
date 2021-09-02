---
title: Understanding Application Control event tags (Windows)
description: Learn what different Windows Defender Application Control event tags signify.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 07/13/2021
ms.technology: mde
---

# Understanding Application Control event tags

Windows Defender Application Control (WDAC) events include a number of fields which provide helpful troubleshooting information to figure out exactly what an event means. Below, we have documented the values and meanings for a few useful event tags.

## SignatureType

Represents the type of signature which verified the image.

| SignatureType Value | Explanation |
|---|----------|
| 0 | Unsigned or verification has not been attempted |
| 1 | Embedded signature |
| 2 | Cached signature; presence of CI EA shows that file had been previously verified |
| 3 | Cached catalog verified via Catalog Database or searching catalog directly |
| 4 | Un-cached catalog verified via Catalog Database or searching catalog directly |
| 5 | Successfully verified using an EA that informs CI which catalog to try first |
| 6 | AppX / MSIX package catalog verified |
| 7 | File was verified |

## ValidatedSigningLevel

Represents the signature level at which the code was verified.

| ValidatedSigningLevel Value | Explanation |
|---|----------|
| 0 | Signing level has not yet been checked |
| 1 | File is unsigned |
| 2 | Trusted by WDAC policy |
| 3 | Developer signed code |
| 4 | Authenticode signed |
| 5 | Microsoft Store signed app PPL (Protected Process Light) |
| 6 | Microsoft Store-signed |
| 7 | Signed by an Antimalware vendor whose product is using AMPPL |
| 8 | Microsoft signed |
| 11 | Only used for signing of the .NET NGEN compiler |
| 12 | Windows signed |
| 14 | Windows Trusted Computing Base signed |

## VerificationError

Represents why verification failed, or if it succeeded.

| VerificationError Value | Explanation |
|---|----------|
| 0 | Successfully verified signature |
| 1 | File has an invalid hash |
| 2 | File contains shared writable sections |
| 3 | File is not signed|
| 4 | Revoked signature |
| 5 | Expired signature |
| 6 | File is signed using a weak hashing algorithm which does not meet the minimum policy |
| 7 | Invalid root certificate |
| 8 | Signature was unable to be validated; generic error |
| 9 | Signing time not trusted |
| 10 | The file must be signed using page hashes for this scenario |
| 11 | Page hash mismatch |
| 12 | Not valid for a PPL (Protected Process Light) |
| 13 | Not valid for a PP (Protected Process) |
| 14 | The signature is missing the required ARM EKU |
| 15 | Failed WHQL check |
| 16 | Default policy signing level not met |
| 17 | Custom policy signing level not met; returned when signature doesn't validate against an SBCP-defined set of certs |
| 18 | Custom signing level not met; returned if signature fails to match CISigners in UMCI |
| 19 | Binary is revoked by file hash |
| 20 | SHA1 cert hash's timestamp is missing or after valid cutoff as defined by Weak Crypto Policy |
| 21 | Failed to pass WDAC policy |
| 22 | Not IUM (Isolated User Mode) signed; indicates trying to load a non-trustlet binary into a trustlet |
| 23 | Invalid image hash |
| 24 | Flight root not allowed; indicates trying to run flight-signed code on production OS |
| 25 | Anti-cheat policy violation |
| 26 | Explicitly denied by WADC policy |
| 27 | The signing chain appears to be tampered/invalid |
| 28 | Resource page hash mismatch |

## Microsoft Root CAs trusted by Windows

The rule means trust anything signed by a certificate that chains to this root CA.

| Root ID | Root Name |
|---|----------|
| 0| None |
| 1| Unknown |
| 2 | Self-Signed |
| 3 | Authenticode |
| 4 | Microsoft Product Root 1997 |
| 5 | Microsoft Product Root 2001 |
| 6 | Microsoft Product Root 2010 |
| 7 | Microsoft Standard Root 2011 |
| 8 | Microsoft Code Verification Root 2006 |
| 9 | Microsoft Test Root 1999 |
| 10 | Microsoft Test Root 2010 |
| 11 | Microsoft DMD Test Root 2005 |
| 12 | Microsoft DMDRoot 2005 |
| 13 | Microsoft DMD Preview Root 2005 |
| 14 | Microsoft Flight Root 2014 |
| 15 | Microsoft Third Party Marketplace Root  |
| 16 | Microsoft ECC Testing Root CA 2017 |
| 17 | Microsoft ECC Development Root CA 2018 |
| 18 | Microsoft ECC Product Root CA 2018 |
| 19 | Microsoft ECC Devices Root CA 2017 |

For well-known roots, the TBS hashes for the certificates are baked into the code for WDAC. For example, they don’t need to be listed as TBS hashes in the policy file.

## Status values

Represents values that are used to communicate system information. They are of four types: success values, information values, warning values, and error values. Click on the [NTSATUS](/openspecs/windows_protocols/ms-erref/596a1078-e883-4972-9bbc-49e60bebca55) link for information about common usage details.
