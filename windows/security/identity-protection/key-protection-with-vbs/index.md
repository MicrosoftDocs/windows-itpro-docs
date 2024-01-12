---
title:  Key protection with VBS
description: Learn about Key protection with VBS and how ...
ms.date: 01/11/2024
ms.topic: overview
appliesto:
- "✅ <a href=\"https://learn.microsoft.com/windows-insider/\" target=\"_blank\">Windows Insider Preview</a>"
---

# Key protection with VBS overview

[!INCLUDE [insider-note](../../includes/insider-note.md)]

## Overview

> "KeyGuard" is an internal name only. For all 3P services and public documentation and applications, this feature is referred to as "VBS Key Isolation."

VBS Key Isolation is a Windows security feature that isolates the private material of cryptographic keys from the normal operating system, enhancing protection against malware and malicious attacks. Across Azure, first party services can leverage this feature and migrate high value and high blast radius keys to prevent key exfiltration attacks.

KeyGuard leverages a master key from an on-device TPM (Trusted Platform Module) to encrypt its data, while also making use of [Virtualization Based Security (VBS)](https://www.osgwiki.com/wiki/Virtualization_Based_Security) to isolate keys and execute on the main CPU.
Through this combination, KeyGuard offers strong security against exfiltration attacks by admin and kernel-level malware, as well as strong performance and reliability by leveraging the power of the device's CPU. This makes KeyGuard an ideal solution for applications that have high performance, reliability, and security requirements.

## Supported Scenarios

- APPKI Certs: KeyGuard is available for self-service for 1P customers using APPKI-backed certs on Pilot Fish Control Plane (Windows Server 22+) and Azure Host 2023. 
  - See [Auto Pilot and Pilot Fish](https://eng.ms/docs/products/autopilot/autopilot/keyguard) for pre-requisites and onboarding instructions.
  - Customers using non-APPKI backed certificates should check with their secret manager for support.

- eSTS and MSA: KeyGuard offers protection of eSTS and MSA token signing keys on EAP VMs (Windows Server 22+).
  - KeyGuard supports PKCS11 unwrapping on EAP VMs (Windows Server 22+).
  - KeyGuard supports attestation of KeyGuard keys on EAP VMs (Windows Server 22+).

## Upcoming Scenarios and Environments

- Generic support on Windows Server 22+
- Generic support on Windows Client 11+
- Azure Host 2024

## Hardware Requirements

Although you may have the appropriate OS installed on your machine, the following hardware requirements must be met to leverage KeyGuard:

- VBS enabled
- TPM enabled
  - For bare-metal environments, TPM 2.0 is required.
  - For VM environments, [vTPM](https://microsoft.sharepoint.com/sites/knowledgecenter/_layouts/15/TopicPagePreview.aspx?topicId=AL_nR48woHhIZkP7o9MB44Yvg&topicName=Virtual%20Trusted%20Platform%20Module&lang=en-us&ls=Ans_Bing) (Virtual TPM) is supported.
- BIOS should be upgraded to UEFI with SecureBoot profile

See also:

- VBS has several hardware requirements to run, including Hyper-V (Windows hypervisor), 64 bit architecture, and IOMMU support. The full list of VBS hardware requirements can be found [here](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-vbs 
).
- Microsoft requirements for a highly secure device can be found [here]( https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-highly-secure).

## FAQ

### What is KeyGuard?

KeyGuard is a key isolation feature based on Virtualization Based Security (VBS) that provides a strong guarantee that even kernel level malware or malicious admin users can't extract private key bits. KeyGuard stores and performs crypto operations on keys and secrets in a VBS trustlet, an isolated process that's separate from other applications running on the same machine. KeyGuard leverages a master key from the Trusted Platform Module (TPM) chip on the host to encrypt its data, binding the contents of KeyGuard to the device.  

Trusted Platform Modules (TPMs) can be used to combat security attacks that involve exporting keys or secrets from a device as well. However, TPMs have low performance. Key Guard on the other hand leverages VBS and executes on the main CPU which leads to much stronger performance & reliability metrics.

Leveraging KeyGuard offers the security of TPM by making keys resilient to admin level malware and exfiltration attacks, while simultaneously maintaining strong performance and reliability by leveraging the power of the device CPU. Key Guard protects the certificate private key using virtualization-based security so that administrative or kernel-mode code can interact with the certificate but not access the private key directly. This forces the intruder to remain on the server in order to use the certificate, giving us an extended period for detection and response. Using Key Guard is advantageous for applications with high performance, reliability, and security requirements.  

Disclaimer: KeyGuard is not as secure as the TPM because operations are not HW isolated and VBS offers a much larger attack surface than TPM. Furthermore, KeyGuard is only as secure as the TPM that its master key is provisioned from. Therefore, if TPM reliability or security is degraded, it will pass on to KeyGuard. This is still a significant improvement compared to the security posture/attack surface in standard OS.  

### What is Attestation?  

Host Attestation cryptographically verifies that a given machine is running a securely configured stack - HW root-of-trust, firmware, bootloaders, and OS. Today, attestation is enforced during node bootstrap when the node reaches out to APCA (Autopilot Cert. Authority) for a machine cert. Every node requires a machine cert (AP PKI cert) to talk to other Azure services and to eventually host customer workloads and the provisioning of this cert by APCA is gated by whether the machine passed Host Attestation service checks. In the near future, HAS will switch to periodic enforcement - entire fleet will be re-attested every 24-48 hours and each node will receive a host health token that can serve as its evidence of being trusted and healthy.
