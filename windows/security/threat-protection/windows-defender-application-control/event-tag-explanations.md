---
title: Understanding Application Control event tags (Windows)
description: Learn what different Windows Defender Application Control event tags signify.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jsuther1974
ms.reviewer: jogeurte
ms.author: vinpa
manager: aaroncz
ms.date: 03/24/2023
ms.technology: itpro-security
ms.topic: article
---

# Understanding Application Control event tags

Windows Defender Application Control (WDAC) events include many fields, which provide helpful troubleshooting information to figure out exactly what an event means. This article describes the values and meanings for a few useful event tags.

## SignatureType

Represents the type of signature which verified the image.

| SignatureType Value | Explanation |
|---|----------|
| 0 | Unsigned or verification hasn't been attempted |
| 1 | Embedded signature |
| 2 | Cached signature; presence of a CI EA means the file was previously verified |
| 3 | Cached catalog verified via Catalog Database or searching catalog directly |
| 4 | Uncached catalog verified via Catalog Database or searching catalog directly |
| 5 | Successfully verified using an EA that informs CI that catalog to try first |
| 6 | AppX / MSIX package catalog verified |
| 7 | File was verified |

## Requested and Validated Signing Level

Represents the signature level at which the code was verified.

| SigningLevel Value | Explanation |
|---|----------|
| 0 | Signing level hasn't yet been checked |
| 1 | File is unsigned or has no signature that passes the active policies |
| 2 | Trusted by Windows Defender Application Control policy |
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
| 3 | File isn't signed|
| 4 | Revoked signature |
| 5 | Expired signature |
| 6 | File is signed using a weak hashing algorithm, which doesn't meet the minimum policy |
| 7 | Invalid root certificate |
| 8 | Signature was unable to be validated; generic error |
| 9 | Signing time not trusted |
| 10 | The file must be signed using page hashes for this scenario |
| 11 | Page hash mismatch |
| 12 | Not valid for a PPL (Protected Process Light) |
| 13 | Not valid for a PP (Protected Process) |
| 14 | The signature is missing the required ARM processor EKU |
| 15 | Failed WHQL check |
| 16 | Default policy signing level not met |
| 17 | Custom policy signing level not met; returned when signature doesn't validate against an SBCP-defined set of certs |
| 18 | Custom signing level not met; returned if signature fails to match `CISigners` in UMCI |
| 19 | Binary is revoked based on its file hash |
| 20 | SHA1 cert hash's timestamp is missing or after valid cutoff as defined by Weak Crypto Policy |
| 21 | Failed to pass Windows Defender Application Control policy |
| 22 | Not Isolated User Mode (IUM)) signed; indicates an attempt to load a non-trustlet binary into a trustlet |
| 23 | Invalid image hash |
| 24 | Flight root not allowed; indicates trying to run flight-signed code on production OS |
| 25 | Anti-cheat policy violation |
| 26 | Explicitly denied by WADC policy |
| 27 | The signing chain appears to be tampered/invalid |
| 28 | Resource page hash mismatch |

## Policy activation event Options

The Application Control policy rule option values can be derived from the "Options" field in the Details section for successful [policy activation events](event-id-explanations.md#wdac-policy-activation-events). To parse the values, first convert the hex value to binary. To derive and parse these values, follow the below workflow.

- Access Event Viewer.
- Access the Code integrity 3099 event.
- Access the details pane.
- Identify the hex code listed in the "Options" field.
- Convert the hex code to binary.

:::image type="content" source="images/event-3099-options.png" alt-text="Event 3099 policy rule options.":::

For a simple solution for converting hex to binary, follow these steps:

1. Open the Calculator app.
1. Select the menu icon. :::image type="icon" source="images/calculator-menu-icon.png" border="false":::
1. Select **Programmer** mode.
1. Select **HEX**. :::image type="icon" source="images/hex-icon.png" border="false":::
1. Enter your hex code. For example, `80881000`.
1. Switch to the **Bit Toggling Keyboard**. :::image type="icon" source="images/bit-toggling-keyboard-icon.png" border="false":::

:::image type="content" source="images/calculator-with-hex-in-binary.png" alt-text="An example of the calculator app in programmer mode, with a hex code converted into binary.":::

This view provides the hex code in binary form, with each bit address shown separately.  The bit addresses start at 0 in the bottom right.  Each bit address correlates to a specific event policy-rule option.  If the bit address holds a value of 1, the setting is in the policy.

Next, use the bit addresses and their values from the following table to determine the state of each [policy rule-option](select-types-of-rules-to-create.md#table-1-windows-defender-application-control-policy---policy-rule-options). For example, if the bit address of 16 holds a value of 1, then the **Enabled: Audit Mode (Default)** option is in the policy. This setting means that the policy is in audit mode.

| Bit Address | Policy Rule Option |
|-------|------|
| 2 | `Enabled:UMCI` |
| 3 | `Enabled:Boot Menu Protection` |
| 4 | `Enabled:Intelligent Security Graph Authorization` |
| 5 | `Enabled:Invalidate EAs on Reboot` |
| 7 | `Required:WHQL` |
| 10 | `Enabled:Allow Supplemental Policies` |
| 11 | `Disabled:Runtime FilePath Rule Protection` |
| 13 | `Enabled:Revoked Expired As Unsigned` |
| 16 | `Enabled:Audit Mode (Default)` |
| 17 | `Disabled:Flight Signing` |
| 18 | `Enabled:Inherit Default Policy` |
| 19 | `Enabled:Unsigned System Integrity Policy (Default)` |
| 20 | `Enabled:Dynamic Code Security` |
| 21 | `Required:EV Signers` |
| 22 | `Enabled:Boot Audit on Failure` |
| 23 | `Enabled:Advanced Boot Options Menu` |
| 24 | `Disabled:Script Enforcement` |
| 25 | `Required:Enforce Store Applications` |
| 27 | `Enabled:Managed Installer`  |
| 28 | `Enabled:Update Policy No Reboot` |

## Microsoft Root CAs trusted by Windows

The rule means trust anything signed by a certificate that chains to this root CA.

| Root ID | Root Name |
|---|----------|
| 0| None |
| 1| Unknown |
| 2 | Self-Signed |
| 3 | Microsoft Authenticode(tm) Root Authority |
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

For well-known roots, the TBS hashes for the certificates are baked into the code for Windows Defender Application Control. For example, they don’t need to be listed as TBS hashes in the policy file.

## Status values

Represents values that are used to communicate system information. They are of four types: success values, information values, warning values, and error values. See [NTSATUS](/openspecs/windows_protocols/ms-erref/596a1078-e883-4972-9bbc-49e60bebca55) for information about common usage details.
