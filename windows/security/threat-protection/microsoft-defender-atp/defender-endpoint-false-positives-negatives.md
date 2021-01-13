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
ms.date: 01/15/2021
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

In Microsoft Defender for Endpoint, a false positive is an entity, such as a file or process, that was detected and identified as malicious, when, in fact, the entity does not pose a threat. A false negative is an entity that was not detected as a threat even though it is, in fact, malicious. If you’re seeing false positives or negatives in your Microsoft Defender Security Center, use this article as a guide to take action. 

Review your threat protection settings
Microsoft Defender for Endpoint offers a wide variety of options, including the ability to fine tune settings for various features and capabilities. If you’re getting a lot of false positives, review your organization’s threat protection settings. You might need to make some adjustments to the following settings in particular:

- Cloud-delivered protection
- Remediation for potentially unwanted apps (PUA)

### Cloud-delivered protection

Check your cloud-delivered protection level for Microsoft Defender Antivirus. By default, this is set to **Not configured**, which corresponds to a normal level of protection for most organizations. If your cloud-delivered protection is set to **High**, **High +**, or **Zero tolerance**, you might experience a higher number of false positives.

See [Specify the cloud-delivered protection level](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/specify-cloud-protection-level-microsoft-defender-antivirus)

### Remediation for potentially unwanted applications (PUA)

Potentially unwanted applications (PUA) are a category of software that can cause devices to run slowly, display unexpected ads, or install other software that might be unexpected or unwanted. Examples of PUA include advertising software, bundling software, and evasion software that behaves differently with security products. Although PUA is not considered malware, some kinds of software are PUA based on their behavior and reputation.
 
Depending on the apps your organization is using, you might be getting false positives as a result of your PUA protection settings. If this is happening, consider running PUA protection in audit mode for a while, or apply PUA protection to a subset of devices in your organization. PUA protection can be configured for the Microsoft Edge browser and for Microsoft Defender Antivirus. 

> [!TIP]
> To learn more about PUA, see [Detect and block potentially unwanted applications](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-antivirus/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).


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