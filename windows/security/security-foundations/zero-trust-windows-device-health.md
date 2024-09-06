---
title: Zero Trust and Windows device health
description: Describes the process of Windows device health attestation
ms.topic: concept-article
manager: aaroncz
ms.author: paoloma
author: paolomatarazzo
ms.date: 09/06/2024
---

# Zero Trust and Windows device health

Organizations need a security model that more effectively adapts to the complexity of the modern work environment. IT admins need to embrace the hybrid workplace, while protecting people, devices, apps, and data wherever they're located. Implementing a Zero Trust model for security helps address today's complex environments.

The [Zero Trust](https://www.microsoft.com/security/business/zero-trust) principles are:

- **Verify explicitly**. Always authenticate and authorize based on all available data points, including user identity, location, device health, service or workload, data classification, and monitor anomalies
- **Use least-privileged access**. Limit user access with just-in-time and just-enough-access, risk-based adaptive policies, and data protection to help secure data and maintain productivity
- **Assume breach**. Prevent attackers from obtaining access to minimize potential damage to data and systems. Protect privileged roles, verify end-to-end encryption, use analytics to get visibility, and drive threat detection to improve defenses

The Zero Trust concept of **verify explicitly** applies to the risks introduced by both devices and users. Windows enables **device health attestation** and **conditional access** capabilities, which are used to grant access to corporate resources.

[Conditional access](/azure/active-directory/conditional-access/overview) evaluates identity signals to confirm that users are who they say they are before they're granted access to corporate resources.

Windows 11 supports device health attestation, helping to confirm that devices are in a good state and haven't been tampered with. This capability helps users access corporate resources whether they're in the office, at home, or when they're traveling.

Attestation helps verify the identity and status of essential components and that the device, firmware, and boot process haven't been altered. Information about the firmware, boot process, and software, is used to validate the security state of the device. This information is cryptographically stored in the security co-processor Trusted Platform Module (TPM). Once the device is attested, it can be granted access to resources.

## Device health attestation on Windows

 Many security risks can emerge during the boot process as this process can be the most privileged component of the whole system. The verification process uses remote attestation as the secure channel to determine and present the device's health. Remote attestation determines:

- If the device can be trusted
- If the operating system booted correctly
- If the OS has the right set of security features enabled

These determinations are made with the help of a secure root of trust using the Trusted Platform Module (TPM). Devices can attest that the TPM is enabled, and that the device hasn't been tampered with.

Windows includes many security features to help protect users from malware and attacks. However, trusting the Windows security components can only be achieved if the platform boots as expected and wasn't tampered with. Windows relies on Unified Extensible Firmware Interface (UEFI) Secure Boot, Early-launch antimalware (ELAM), Dynamic Root of Trust for Measurement (DRTM), Trusted Boot, and other low-level hardware and firmware security features. When you power on your PC until your anti-malware starts, Windows is backed with the appropriate hardware configuration to help keep you safe. [Measured and Trusted boot](../operating-system-security/system-security/secure-the-windows-10-boot-process.md), implemented by bootloaders and BIOS, verifies and cryptographically records each step of the boot in a chained manner. These events are bound to a security coprocessor (TPM) that acts as the Root of Trust. Remote Attestation is the mechanism by which these events are read and verified by a service to provide a verifiable, unbiased, and tamper resilient report. Remote attestation is the trusted auditor of your system's boot, allowing specific entities to trust the device.

A summary of the steps involved in attestation and Zero Trust on the device side are as follows:

1. During each step of the boot process, such as a file load, update of special variables, and more, information such as file hashes and signature are measured in the TPM PCRs. The measurements are bound by a [Trusted Computing Group specification](https://trustedcomputinggroup.org/resource/pc-client-platform-tpm-profile-ptp-specification/) (TCG) that dictates what events can be recorded and the format of each event
1. Once Windows has booted, the attestor/verifier requests the TPM to fetch the measurements stored in its Platform Configuration Register (PCR) alongside a TCG log. The measurements in both these components together form the attestation evidence that is then sent to the attestation service
1. The TPM is verified by using the keys/cryptographic material available on the chipset with an [Azure Certificate Service](/windows-server/identity/ad-ds/manage/component-updates/tpm-key-attestation)
1. This information is then sent to the attestation service in the cloud to verify that the device is safe. Microsoft Endpoint Manger integrates with Microsoft Azure Attestation to review device health comprehensively and connect this information with Microsoft Entra Conditional Access. This integration is key for Zero Trust solutions that help bind trust to an untrusted device
1. The attestation service does the following tasks:

    - Verify the integrity of the evidence. This verification is done by validating the PCRs that match the values recomputed by replaying the TCG log
    - Verify that the TPM has a valid Attestation Identity Key issued by the authenticated TPM
    - Verify that the security features are in the expected states

1. The attestation service returns an attestation report that contains information about the security features based on the policy configured in the attestation service
1. The device then sends the report to the Microsoft Intune cloud to assess the trustworthiness of the platform according to the admin-configured device compliance rules
1. Conditional access, along with device-compliance state then decides to allow or deny access

## Other Resources

Learn more about Microsoft Zero Trust solutions in the [Zero Trust Guidance Center](/security/zero-trust/).
