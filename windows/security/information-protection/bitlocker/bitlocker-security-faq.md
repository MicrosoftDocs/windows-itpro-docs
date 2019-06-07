---
title: BitLocker Security FAQ (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
ms.assetid: c40f87ac-17d3-47b2-afc6-6c641f72ecee
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019 
---

# BitLocker Security FAQ

**Applies to**
-   Windows 10


## What form of encryption does BitLocker use? Is it configurable?

BitLocker uses Advanced Encryption Standard (AES) as its encryption algorithm with configurable key lengths of 128 or 256 bits. The default encryption setting is AES-128, but the options are configurable by using Group Policy.

## What is the best practice for using BitLocker on an operating system drive?

The recommended practice for BitLocker configuration on an operating system drive is to implement BitLocker on a computer with a TPM version 1.2 or higher and a Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware implementation, plus a PIN. By requiring a PIN that was set by the user in addition to the TPM validation, a malicious user that has physical access to the computer cannot simply start the computer.

## What are the implications of using the sleep or hibernate power management options?

BitLocker on operating system drives in its basic configuration (with a TPM but without additional startup authentication) provides additional security for the hibernate mode. However, BitLocker provides greater security when it is configured to use an additional startup authentication factor (TPM+PIN, TPM+USB, or TPM+PIN+USB) with the hibernate mode. This method is more secure because returning from hibernation requires authentication. For improved security, we recommend that sleep mode be disabled and that you use TPM+PIN for the authentication method. Startup authentication can be configured by using [Group Policy](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-group-policy-settings#a-href-idbkmk-unlockpol1arequire-additional-authentication-at-startup) or Mobile Device Management with the [Bitlocker CSP](https://docs.microsoft.com/windows/client-management/mdm/bitlocker-csp). 

## What are the advantages of a TPM?

Most operating systems use a shared memory space and rely on the operating system to manage physical memory. A TPM is a hardware component that uses its own internal firmware and logic circuits for processing instructions, thus shielding it from external software vulnerabilities. Attacking the TPM requires physical access to the computer. Additionally, the tools and skills necessary to attack hardware are often more expensive, and usually are not as available as the ones used to attack software. And because each TPM is unique to the computer that contains it, attacking multiple TPM computers would be difficult and time-consuming.

> [!NOTE]  
> Configuring BitLocker with an additional factor of authentication provides even more protection against TPM hardware attacks.
 
