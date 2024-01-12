---
title: How Key protection with VBS works
description: Learn how Key protection with VBS works ...
ms.date: 01/11/2024
ms.topic: overview
appliesto:
- "✅ <a href=\"https://learn.microsoft.com/windows-insider/\" target=\"_blank\">Windows Insider Preview builds</a>"
---

# How Key protection with VBS works

[!INCLUDE [insider-note](../../includes/insider-note.md)]

## Problem Statement

In today's landscape, with the growing number and complexity of OS and admin-level security threats, a secure key isolation solution on Windows is critical. Traditionally, Windows leverages LSA Memory to store keys - while this is more secure than storing keys in process memory as is done on Linux, it does not prevent admin-level attacks. Increasingly, cyber attackers exploit vulnerabilities in identity services to gain access to critical assets. Key exfiltration, when sensitive data is extracted off the network and continually used to authenticate resources from outside, is a major threat that can result in a range of consequences, from the exportation of high value secrets off the network, to rogue control of guest and Azure VMs, to major service outages. Therefore, protecting cryptographic keys is essential to the availability and security of all Azure first-party as well as third-party services.

Traditionally, Windows leverages software isolation with LSA Memory to store keys, which does not prevent admin-level attacks. Another option is hardware-based isolation, where keys are stored directly on a TPM, but this is less ideal for high-volume signing and encryption scenarios.

## Solution Design

KeyGuard is a Windows key isolation solution that provides a strong security guarantee against rogue admin and key exfiltration attacks. KeyGuard leverages VBS to store keys in VSM (Virtual Secure Mode), an isolated boundary within the OS backed by an on-device TPM (Trusted Platform Module). The following sections explain this in further detail.

### Key Isolation through Virtualization Based Security (VBS)

KeyGuard isolates private key material with Virtualization Based Security (VBS). VBS uses the virtualization extension capability of the CPU to enable a security boundary between two different Virtual Trust Levels (VTLs):

- The first virtual trust level, **VTL0**, consists of normal user mode and kernel mode. This is where the client process is running. In the case of KeyGuard, *LsaSs.exe*, the normal mode secure process, runs here.
- The second and more privileged virtual trust level, **VTL1**, consists of an Isolated User Mode as well as the Secure Kernel (SK), which manages the operations of VTL1. In the case of KeyGuard,  VTL1 is where the secure process, *LsaIso.exe* runs in a VBS trustlet. This is an isolated process that is separate from other applications running on the same machine.

The security boundary between VTL1 and VTL0 makes up what is known as [Virtual Secure Mode](https://learn.microsoft.com/virtualization/hyper-v-on-windows/tlfs/vsm) on Windows. Such separation ensures that malicious host kernel, user mode, and host admin level malware penetrates VTL0, it cannot access secrets in VTL1. Altogether, this design enables the isolation of secure regions of memory for private key material and significant containment malware and exploits.

### Data Encryption with a TPM

KeyGuard leverages a master key from the [Trusted Platform Module (TPM)](https://learn.microsoft.com/windows/security/hardware-security/tpm/trusted-platform-module-top-node) on the machine to encrypt its data, binding the contents of KeyGuard to the device.  
A TPM chip is a secure crypto-processor that helps with actions such as generating, storing, and limiting the use of cryptographic keys, and to confirm that the operating system and firmware on your device are what they're supposed to be and have not been tampered with.

TPM version 2.0 is the current standard and a requirement for KeyGuard on bare-metal machines. vTPM is supported in VM environments. 

> [!IMPORTANT]
> KeyGuard is not as secure as a sole TPM-based solution, since operations are not hardware isolated and VBS creates a larger attack surface than TPM. In fact, KeyGuard is only as secure as the TPM that its master key is provisioned from. Therefore, if TPM reliability or security is degraded, it will pass on to KeyGuard.
>
> This is still a significant improvement compared to the security posture/attack surface in standard OS.

## Security Properties

This section outlines some of KeyGuard's security promises and non-promises.

### Security Promises

- KeyGuard protects keys from **key exfiltration** and guarantees the non-exportability of keys in plain-text from a single machine. Admin and kernel level malware penetrating VTL0 cannot access keys in VTL1 because of the security boundary created through Virtual Secure Mode. This encompasses scenarios where attackers extract private keys and send it to the attacker machine and mount the attack from there. 

- KeyGuard is compatible with attestation, meaning a service like Managed HSM can verify the integrity of the KeyGuard enclave and release keys encrypted to that enclave, so no clear-text copies of the keys ever exist outside of KeyGuard and the HSM.  

- KeyGuard is also compatible with MAA (Microsoft Azure Attestation) as a back-end service to ensure a key is in KeyGuard. 

### Non-Promises

- Even though KeyGuard protects against exfiltration attacks, an adversary with access to VTL0 will still be able to use Key Guard keys for any operation such as signing and decryption. This is referred to as "oracle-access" and is the same promise as other hardware based key isolation environments.

- KeyGuard's security is dependent on the TPM that its master key is provisioned from, and any degradation of TPM security and reliability will pass onto KeyGuard.

## Diagram

The following diagram details KeyGuard architecture.

:::image type="content" source="images/architecture.png" alt-text="Diagram of the Key guard architecture." lightbox="images/architecture.png" border="false":::

| Diagram Component | Description |
|-|-|
|VTL0: *Normal-mode* | The memory space where NTOS, drivers and regular processes run|  
|VTL1: *Secure-mode*| The memory space where the Secure Kernel and isolated user mode processes run|
| *Client.exe* | Sample client process, runs in VTL0<br>- *NCrypt.dll*: Linked by Client.exe<br>- *NCryptProv.dll*: Loaded at run time by NCrypt.dll. Forwards calls to LsaSs.exe|  
|*LsaSs.exe*|System process where our VTL0 Key Guard component runs<br>- *NCrypt.dll*: Linked by LsaSs.exe<br>- *NCryptProv.dll*: Loaded at run time by NCrypt.dll<br>- *BCryptIso.lib*: VTL0 client interface to Key Guard, linked by NCryptProv.dll. Forwards calls to LsaIso.exe|  
|*LsaIso.exe*| Secure process where our VTL1 Key Guard component runs<br>-*BCryptIum.lib*: VTL1 server part of Key Guard, linked by LsaIso|
|Hypervisor| Hyper-V or Windows Hypervisor, establishes the security boundary between VTL0 and VTL1 by introducing a Second Layer Address Translation (SLAT)|
|TPM|Trusted platform module, encrypts key material at rest|

## Terminology and Concepts

This page provides short descriptions of terms you may encounter while learning about or using KeyGuard. It does not provide detailed documentation about the features. Use the provided links to learn more. 

| Term | Definition |
|-----------|-----------|
| **Attestation** | A process used to verify the integrity of a system, component, or key, such as the KeyGuard enclave. |
| ***BCryptIso*** | normal-mode client library that interfaces with the trustlet via RPC |
| ***BCryptIum*** | secure-mode Key Guard library that runs in VTL1  |
| **CNG (Cryptography API: Next Generation)** | The public pluggable cryptographic library supported on Windows. CNG is designed to be extensible at many levels and is cryptography-agnostic in behavior |
| **Enclave** | Code that is running in an isolated/secure space |
| **IUM (Isolated User Mode)** | security feature to protect against kernel driver exploits, provides an execution environment for trustlets to run in an isolated process  |
| **Key exfiltration** | When sensitive data is extracted off the device and continually used to authenticate resources from outside  |
| **Key isolation** | hosting and performing crypto operations on key material in a separate high security environment so that the key material is never exposed to the calling app or other apps on the same system |
| ***LsaSs*** | Normal-mode secure process in VTL0 that hosts KeyGuard's KeyIso service and NCryptProv with BCryptIso client library |
| ***LsaIso*** | Secure-mode trustlet in VTL1 that hosts BCryptIum library |
| **MHSM (Managed Hardware Security Module)** | An Azure Key Vault resource type that act as single-tenant, fully managed, highly available, load balanced instances backed by 3 HSMs isolated to one single tenant |
| **RPC (Remote Procedure Call)** | Standard that enables one process to make calls to functions executed in another process on the same or different computer, can be used in all client/server applications based in Windows OS |
| **SK (Secure Kernel)** | Manages the operations of VTL1 |
| **TPM (Trusted Platform Module)** | A hardware chip on the device that provides a secure storage area for cryptographic keys and other sensitive data.  |
| **Trustlet** | A program that runs as an IUM process |
| **VBS (Virtualization Based Security)** | A security feature in Windows that uses virtualization to create a secure region of memory to isolate critical system processes from the normal operating system.  |
| **VSM (Virtual Secure Mode)** | Technology that sets up the security boundary between different Virtual Trust Levels (VTLs) created by VBS on Windows. Such separation ensures that malicious host kernel, user mode, and host admin level malware penetrates VTL0, it cannot access secrets in VTL1. A VSM-backed key is also known as a KeyGuard key. |
| **VTL (Virtual Trust Level)** | Security boundaries set up by VBS/VSM that act as CPU protection rings |

