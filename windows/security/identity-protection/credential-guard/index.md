---
title: Windows Defender Credential Guard overview
description: Learn about Windows Defender Credential Guard and how it isolates secrets so that only privileged system software can access them.
ms.date: 08/08/2023
ms.topic: conceptual
ms.collection: 
  - highpri
  - tier1
---

# Windows Defender Credential Guard overview

Windows Defender Credential Guard prevents credential theft attacks by protecting NTLM password hashes, Kerberos Ticket Granting Tickets (TGTs), and credentials stored by applications as domain credentials.

Windows Defender Credential Guard uses [Virtualization-based security (VBS)](/windows-hardware/design/device-experiences/oem-vbs) to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks like *pass the hash* and *pass the ticket*.

When enabled, Windows Defender Credential Guard provides the following benefits:

- **Hardware security**: NTLM, Kerberos, and Credential Manager take advantage of platform security features, including Secure Boot and virtualization, to protect credentials
- **Virtualization-based security**: NTLM, Kerberos derived credentials and other secrets run in a protected environment that is isolated from the running operating system
- **Protection against advanced persistent threats**: when credentials are protected using VBS, the credential theft attack techniques and tools used in many targeted attacks are blocked. Malware running in the operating system with administrative privileges can't extract secrets that are protected by VBS

> [!NOTE]
> While Windows Defender Credential Guard is a powerful mitigation, persistent threat attacks will likely shift to new attack techniques, and you should also incorporate other security strategies and architectures.

> [!IMPORTANT]
> Starting in Windows 11, version 22H2, VBS and Windows Defender Credential Guard are enabled by default on all devices that meet the system requirements.\
> For information about known issues related to the default enablement of Credential Guard, see [Credential Guard: Known Issues](considerations-known-issues.md).

## System requirements

For Windows Defender Credential Guard to provide protection, the devices must meet certain hardware, firmware, and software requirements.

Devices that meet more hardware and firmware qualifications than the minimum requirements, receive additional protections and are more hardened against certain threats.

### Hardware and software requirements

Windows Defender Credential Guard requires the features:

- Virtualization-based security (VBS)
  >[!NOTE]
  > VBS has different requirements to enable it on different hardware platforms. For more information, see [Virtualization-based Security requirements](/windows-hardware/design/device-experiences/oem-vbs)
- [Secure Boot](../../operating-system-security/system-security/secure-the-windows-10-boot-process.md#secure-boot)

While not required, the following features are recommended to provide additional protections:

- Trusted Platform Module (TPM), as it provides binding to hardware. TPM versions 1.2 and 2.0 are supported, either discrete or firmware
- UEFI lock, as it prevents attackers from disabling Credential Guard with a registry key change

For detailed information on protections for improved security that are associated with hardware and firmware options, see [additional security qualifications](additional-mitigations.md#additional-security-qualifications).

#### Windows Defender Credential Guard in virtual machines

Credential Guard can protect secrets in Hyper-V virtual machines, just as it would on a physical machine. When Credential Guard is enabled on a VM, secrets are protected from attacks *inside* the VM. Credential Guard doesn't provide protection from privileged system attacks originating from the host.

The requirements to run Windows Defender Credential Guard in Hyper-V virtual machines are:

- The Hyper-V host must have an IOMMU
- The Hyper-V virtual machine must be generation 2

> [!NOTE]
> Credential Guard is not supported on Hyper-V or Azure generation 1 VMs. Credential Guard is available on generation 2 VMs only.

[!INCLUDE [windows-defender-credential-guard](../../../../includes/licensing/windows-defender-credential-guard.md)]

## Application requirements

When Windows Defender Credential Guard is enabled, certain authentication capabilities are blocked. Applications that require such capabilities break. We refer to these requirements as *application requirements*.

Applications should be tested prior to deployment to ensure compatibility with the reduced functionality.

> [!WARNING]
> Enabling Windows Defender Credential Guard on domain controllers isn't recommended.
> Windows Defender Credential Guard doesn't provide any added security to domain controllers, and can cause application compatibility issues on domain controllers.

> [!NOTE]
> Windows Defender Credential Guard doesn't provide protections for the Active Directory database or the Security Accounts Manager (SAM). The credentials protected by Kerberos and NTLM when Windows Defender Credential Guard is enabled are also in the Active Directory database (on domain controllers) and the SAM (for local accounts).

Applications break if they require:

- Kerberos DES encryption support
- Kerberos unconstrained delegation
- Extracting the Kerberos TGT
- NTLMv1

Applications prompt and expose credentials to risk if they require:

- Digest authentication
- Credential delegation
- MS-CHAPv2

Applications may cause performance issues when they attempt to hook the isolated Windows Defender Credential Guard process `LSAIso.exe`.

Services or protocols that rely on Kerberos, such as file shares or remote desktop, continue to work and aren't affected by Windows Defender Credential Guard.

## Next steps

- Learn [how Windows Defender Credential Guard works](how-it-works.md)
- Learn [how to configure Windows Defender Credential Guard](configure.md)
- Review the advices and sample code for making your environment more secure and robust with Windows Defender Credential Guard in the [Additional mitigations](additional-mitigations.md) article
- Review [considerations and known issues when using Windows Defender Credential Guard](considerations-known-issues)