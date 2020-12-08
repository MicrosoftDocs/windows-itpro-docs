---
title: Understanding Application Control event tags (Windows 10)
description: Learn what different Windows Defender Application Control event tags signify.
keywords:  security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
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
ms.date: 8/27/2020
---

# Understanding Application Control event tags

Windows Defender Application Control (WDAC) events include a number of fields which provide helpful troubleshooting information to figure out exactly what an event means. Below, we have documented the values and meanings for a few useful event tags.

## SignatureType

Represents the type of signature which verified the image.

| SignatureType Value | Explanation |
|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0 | Unsigned or verification has not been attempted |
| 1 | Embedded signature |
| 2 | Cached signature; presence of CI EA shows that file had been previously verified |
| 4 | Un-cached catalog verified via Catalog Database or searching catalog directly |
| 5 | Successfully verified using an EA that informs CI which catalog to try first |
|6 | AppX / MSIX package catalog verified |
| 7 | File was verified |

## ValidatedSigningLevel

Represents the signature level at which the code was verified.

| ValidatedSigningLevel Value | Explanation |
|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
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
|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0 | Successfully verified signature |
| 2 | File contains shared writable sections |
| 4 | Revoked signature |
| 5 | Expired signature |
| 7 | Invalid root certificate |
| 8 | Signature was unable to be validated; generic error |
| 9 | Signing time not trusted |
| 12 | Not valid for a PPL (Protected Process Light) |
| 13 | Not valid for a PP (Protected Process) |
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
| 26 | Explicitly denied by WADC policy |
| 28 | Resource page hash mismatch |
