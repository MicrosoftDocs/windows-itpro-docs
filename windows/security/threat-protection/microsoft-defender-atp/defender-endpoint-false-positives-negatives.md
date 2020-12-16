---
title: Address false positives/negatives in Microsoft Defender for Endpoint
description: Learn how to handle false positives or false negatives in Microsoft Defender for Endpoint.
keywords: alert, exclusion, defender atp, false positive, false negative
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.technology: windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.date: 12/15/2020
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs, yonghree
ms.custom: FPFN
---

# Address false positives/negatives in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146806)

Did Microsoft Defender for Endpoint identify an artifact as malicious, even though it wasn't? Are files or processes that are not a threat being stopped in their tracks by Defender for Endpoint? Or, did Defender for Endpoint miss something? Use this article as a guide for addressing false positives or false negatives in Defender for Endpoint.

| Step | Description |
|:---|:---|
| 1. [Identify a false positive/negative](#identify-a-false-positivenegative) |   |
| 2. [Review/define exclusions for Defender for Endpoint](#review-or-define-exclusions)  |  |
| 3. [Review/define indicators for Defender for Endpoint](#review-or-define-indicators) |  |
| 4. [Classify a false positive/negative in Defender for Endpoint](#classify-a-false-positive-or-false-negative) |  |
| 5. [Submit a file for analysis](#submit-a-file-for-analysis) |  |
| 6. [Confirm your software uses EV code signing](#confirm-your-software-uses-ev-code-signing)  |  |

## Identify a false positive/negative

*How do we know something is a false positive or negative? What do we want customers to look for?*

## Review or define exclusions

*Exclusions are defined for AutoIR and for MDAV, yes?*

## Review or define indicators

*Allow indicators for false positives; block indicators for false negatives.  https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators*

## Classify a false positive or false negative

*Need to figure out where/how this is done*

## Submit a file for analysis

*https://www.microsoft.com/wdsi/filesubmission/*

## Confirm your software uses EV code signing

*Some info is available here: https://docs.microsoft.com/windows-hardware/drivers/dashboard/get-a-code-signing-certificate*