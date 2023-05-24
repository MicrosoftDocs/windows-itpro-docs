---
title: Protect derived domain credentials with Windows Defender Credential Guard 
description: Windows Defender Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them.
ms.date: 11/22/2022
ms.topic: article
ms.collection: 
  - highpri
  - tier2
---

# Protect derived domain credentials with Windows Defender Credential Guard

Windows Defender Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks, such as Pass-the-Hash or Pass-The-Ticket. Windows Defender Credential Guard prevents these attacks by protecting NTLM password hashes, Kerberos Ticket Granting Tickets, and credentials stored by applications as domain credentials.

By enabling Windows Defender Credential Guard, the following features and solutions are provided:

- **Hardware security** NTLM, Kerberos, and Credential Manager take advantage of platform security features, including Secure Boot and virtualization, to protect credentials.
- **Virtualization-based security** Windows NTLM and Kerberos derived credentials and other secrets run in a protected environment that is isolated from the running operating system.
- **Better protection against advanced persistent threats** When Credential Manager domain credentials, NTLM, and Kerberos derived credentials are protected using virtualization-based security, the credential theft attack techniques and tools used in many targeted attacks are blocked. Malware running in the operating system with administrative privileges cannot extract secrets that are protected by virtualization-based security. While Windows Defender Credential Guard is a powerful mitigation, persistent threat attacks will likely shift to new attack techniques and you should also incorporate other security strategies and architectures.

> [!NOTE]
> As of Windows 11, version 22H2, Windows Defender Credential Guard has been enabled by default on all devices which meet the minimum requirements as specified in the [Default Enablement](credential-guard-manage.md#default-enablement) section. For information about known issues related to default enablement, see [Credential Guard: Known Issues](credential-guard-known-issues.md#known-issue-single-sign-on-sso-for-network-services-breaks-after-upgrading-to-windows-11-version-22h2).

## Related topics

- [Protecting network passwords with Windows Defender Credential Guard](https://www.microsoft.com/itshowcase/Article/Content/831/Protecting-network-passwords-with-Windows-10-Credential-Guard)
- [Enabling Strict KDC Validation in Windows Kerberos](https://www.microsoft.com/download/details.aspx?id=6382)
- [What's New in Kerberos Authentication for Windows Server 2012](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831747(v=ws.11))
- [Authentication Mechanism Assurance for AD DS in Windows Server 2008 R2 Step-by-Step Guide](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd378897(v=ws.10))
- [Trusted Platform Module](/windows/device-security/tpm/trusted-platform-module-overview)
- [Mitigating Credential Theft using the Windows 10 Isolated User Mode](/shows/seth-juarez/mitigating-credential-theft-using-windows-10-isolated-user-mode)
- [Isolated User Mode Processes and Features in Windows 10 with Logan Gabriel](/shows/seth-juarez/isolated-user-mode-processes-features-in-windows-10-logan-gabriel)
- [More on Processes and Features in Windows 10 Isolated User Mode with Dave Probert](/shows/seth-juarez/more-on-processes-features-in-windows-10-isolated-user-mode-dave-probert)
- [Isolated User Mode in Windows 10 with Dave Probert](/shows/seth-juarez/isolated-user-mode-in-windows-10-dave-probert)
- [Windows 10 Virtual Secure Mode with David Hepkin](/shows/seth-juarez/windows-10-virtual-secure-mode-david-hepkin)
