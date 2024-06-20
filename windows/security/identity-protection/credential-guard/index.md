---
ms.date: 06/20/2024
title: Credential Guard overview
description: Learn about Credential Guard and how it isolates secrets so that only privileged system software can access them.
ms.topic: overview
---

# Credential Guard overview

Credential Guard prevents credential theft attacks by protecting NTLM password hashes, Kerberos Ticket Granting Tickets (TGTs), and credentials stored by applications as domain credentials.

Credential Guard uses [Virtualization-based security (VBS)](/windows-hardware/design/device-experiences/oem-vbs) to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks like *pass the hash* and *pass the ticket*.

When enabled, Credential Guard provides the following benefits:

- **Hardware security**: NTLM, Kerberos, and Credential Manager take advantage of platform security features, including Secure Boot and virtualization, to protect credentials
- **Virtualization-based security**: NTLM, Kerberos derived credentials, and other secrets run in a protected environment that is isolated from the running operating system
- **Protection against advanced persistent threats**: when credentials are protected using VBS, the credential theft attack techniques and tools used in many targeted attacks are blocked. Malware running in the operating system with administrative privileges can't extract secrets that are protected by VBS

> [!NOTE]
> While Credential Guard is a powerful mitigation, persistent threat attacks will likely shift to new attack techniques, and you should also incorporate other security strategies and architectures.

## Default enablement

> [!IMPORTANT]
> Windows Server 2025 is in preview. This information relates to a prerelease product that may be substantially modified before it's released. Microsoft makes no warranties, expressed or implied, with respect to the information provided here.

Starting in **Windows 11, 22H2** and **Windows Server 2025 (preview)**, VBS and Credential Guard are enabled by default on devices that meet the requirements.

The default enablement is **without UEFI Lock**, thus allowing administrators to disable Credential Guard remotely if needed.

When Credential Guard is enabled, [VBS](#system-requirements) is automatically enabled too.

> [!NOTE]
> If Credential Guard is explicitly [disabled](configure.md#disable-credential-guard) *before* a device is updated to Windows 11, version 22H2 / Windows Server 2025 (preview) or later, default enablement does not overwrite the existing settings. That device will continue to have Credential Guard disabled even after updating to a version of Windows that enables Credential Guard by default.

### Default enablement on Windows

Devices running Windows 11, 22H2 or later have Credential Guard enabled by default if they:

- Meet the [license requirements](#windows-edition-and-licensing-requirements)
- Meet the [hardware and software requirements](#system-requirements)
- Aren't [explicitly configured to disable Credential Guard](configure.md#default-enablement)

> [!NOTE]
> Devices running Windows 11 Pro/Pro Edu 22H2 or later may have Virtualization-based Security (VBS) and/or Credential Guard automatically enabled if they meet the other requirements for default enablement, and have previously run Credential Guard. For example if Credential Guard was enabled on an Enterprise device that later downgraded to Pro.
>
> To determine whether the Pro device is in this state, check if the following registry key exists: `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0\IsolatedCredentialsRootSecret`. In this scenario, if you wish to disable VBS and Credential Guard, follow the instructions to [disable Virtualization-based Security](configure.md#disable-virtualization-based-security). If you wish to disable Credential Guard only, without disabling VBS, use the procedures to [disable Credential Guard](configure.md#disable-credential-guard).

### Default enablement on Windows Server

Devices running Windows Server 2025 (preview) or later have Credential Guard enabled by default if they:

- Meet the [license requirements](#windows-edition-and-licensing-requirements)
- Meet the [hardware and software requirements](#system-requirements)
- Aren't [explicitly configured to disable Credential Guard](configure.md#default-enablement)
- Are joined to a domain
- Aren't a Domain Controller

> [!IMPORTANT]
> For information about known issues related to default enablement, see [Credential Guard: known issues](considerations-known-issues.md#known-issues).

## System requirements

For Credential Guard to provide protection, the device must meet certain hardware, firmware, and software requirements.

Devices that exceed the minimum hardware and firmware qualifications receive additional protections and are more hardened against certain threats.

### Hardware and software requirements

Credential Guard requires the features:

- Virtualization-based security (VBS)
  > [!NOTE]
  > VBS has different requirements to enable it on different hardware platforms. For more information, see [Virtualization-based Security requirements](/windows-hardware/design/device-experiences/oem-vbs)
- [Secure Boot](../../operating-system-security/system-security/secure-the-windows-10-boot-process.md#secure-boot)

While not required, the following features are recommended to provide additional protections:

- Trusted Platform Module (TPM), as it provides binding to hardware. TPM versions 1.2 and 2.0 are supported, either discrete or firmware
- UEFI lock, as it prevents attackers from disabling Credential Guard with a registry key change

For detailed information on protections for improved security that are associated with hardware and firmware options, see [additional security qualifications](additional-mitigations.md#additional-security-qualifications).

#### Credential Guard in virtual machines

Credential Guard can protect secrets in Hyper-V virtual machines, just as it would on a physical machine. When Credential Guard is enabled on a VM, secrets are protected from attacks *inside* the VM. Credential Guard doesn't provide protection from privileged system attacks originating from the host.

The requirements to run Credential Guard in Hyper-V virtual machines are:

- The Hyper-V host must have an IOMMU
- The Hyper-V virtual machine must be generation 2

> [!NOTE]
> Credential Guard is not supported on Hyper-V or Azure generation 1 VMs. Credential Guard is available on generation 2 VMs only.

[!INCLUDE [credential-guard](../../../../includes/licensing/credential-guard.md)]

## Application requirements

When Credential Guard is enabled, certain authentication capabilities are blocked. Applications that require such capabilities break. We refer to these requirements as *application requirements*.

Applications should be tested before deployment to ensure compatibility with the reduced functionality.

> [!WARNING]
> Enabling Credential Guard on domain controllers isn't recommended.
> Credential Guard doesn't provide any added security to domain controllers, and can cause application compatibility issues on domain controllers.

> [!NOTE]
> Credential Guard doesn't provide protections for the Active Directory database or the Security Accounts Manager (SAM). The credentials protected by Kerberos and NTLM when Credential Guard is enabled are also in the Active Directory database (on domain controllers) and the SAM (for local accounts).

Applications break if they require:

- Kerberos DES encryption support
- Kerberos unconstrained delegation
- Kerberos TGT extraction
- NTLMv1

Applications ask and expose credentials to risk if they require:

- Digest authentication
- Credential delegation
- MS-CHAPv2
- CredSSP

Applications might cause performance issues when they attempt to hook the isolated Credential Guard process `LSAIso.exe`.

Services or protocols that rely on Kerberos, such as file shares or remote desktop, continue to work and aren't affected by Credential Guard.

## Next steps

- Learn [how Credential Guard works](how-it-works.md)
- Learn [how to configure Credential Guard](configure.md)
- Review the advice and sample code for making your environment more secure and robust with Credential Guard in the [Additional mitigations](additional-mitigations.md) article
- Review [considerations and known issues when using Credential Guard](considerations-known-issues.md)
