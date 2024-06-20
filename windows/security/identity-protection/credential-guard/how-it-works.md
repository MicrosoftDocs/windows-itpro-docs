---
ms.date: 06/20/2024
title: How Credential Guard works
description: Learn how Credential Guard uses virtualization to protect secrets, so that only privileged system software can access them.
ms.topic: concept-article
---

# How Credential Guard works

Kerberos, NTLM, and Credential Manager isolate secrets by using Virtualization-based security (VBS). Previous versions of Windows stored secrets in its process memory, in the Local Security Authority (LSA) process `lsass.exe`. With Credential Guard enabled, the LSA process in the operating system talks to a component called the *isolated LSA process* that stores and protects those secrets, `LSAIso.exe`. Data stored by the isolated LSA process is protected using VBS and isn't accessible to the rest of the operating system. LSA uses remote procedure calls to communicate with the isolated LSA process.

For security reasons, the isolated LSA process doesn't host any device drivers. Instead, it only hosts a small subset of operating system binaries that are needed for security and nothing else. All the binaries are signed with a certificate that VBS trusts, and the signatures are validated before launching the file in the protected environment.

Here's a high-level overview on how the LSA is isolated by using Virtualization-based security:

:::image type="content" source="images/credguard.png" alt-text="Diagram of the Credential Guard architecture.":::

## Credential Guard protection limits

Some ways to store credentials aren't protected by Credential Guard, including:

- When Credential Guard is enabled, NTLMv1, MS-CHAPv2, Digest, and CredSSP can't use the signed-in credentials. Thus, single sign-on doesn't work with these protocols. However, applications can prompt for credentials or use credentials stored in the Windows Vault, which aren't protected by Credential Guard with any of these protocols
    > [!CAUTION]
    > It's recommended that valuable credentials, such as the sign-in credentials, aren't used with NTLMv1, MS-CHAPv2, Digest, or CredSSP protocols.
- Software that manages credentials outside of Windows feature protection
- Local accounts and Microsoft Accounts
- Credential Guard doesn't protect the Active Directory database running on Windows Server domain controllers. It also doesn't protect credential input pipelines, such as Windows Server running Remote Desktop Gateway. If you're using a Windows Server OS as a client PC, it will get the same protection as it would when running a Windows client OS
- Key loggers
- Physical attacks
- Doesn't prevent an attacker with malware on the PC from using the privileges associated with any credential. We recommend using dedicated PCs for high value accounts, such as IT Pros and users with access to high value assets in your organization
- Non-Microsoft security packages
- Supplied credentials for NTLM authentication aren't protected. If a user is prompted for and enters credentials for NTLM authentication, these credentials are vulnerable to be read from LSASS memory. These same credentials are vulnerable to key loggers as well
- Kerberos service tickets aren't protected by Credential Guard, but the Kerberos Ticket Granting Ticket (TGT) is protected
- When Credential Guard is enabled, Kerberos doesn't allow *unconstrained Kerberos delegation* or *DES encryption*, not only for signed-in credentials, but also prompted or saved credentials
- When Credential Guard is enabled on a VM, it protects secrets from attacks inside the VM. However, it doesn't provide protection from privileged system attacks originating from the host
- Windows logon cached password verifiers (commonly called *cached credentials*) don't qualify as credentials because they can't be presented to another computer for authentication, and can only be used locally to verify credentials. They're stored in the registry on the local computer and provide validation for credentials when a domain-joined computer can't connect to AD DS during user logon. These *cached logons*, or more specifically, *cached domain account information*, can be managed using the security policy setting **Interactive logon: Number of previous logons to cache** if a domain controller isn't available

## Next steps

- Learn [how to configure Credential Guard](configure.md)
- Review the advice and sample code for making your environment more secure and robust with Credential Guard in the [Additional mitigations](additional-mitigations.md) article
- Review [considerations and known issues when using Credential Guard](considerations-known-issues.md)
