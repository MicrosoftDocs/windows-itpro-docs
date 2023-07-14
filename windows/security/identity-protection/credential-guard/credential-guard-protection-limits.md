---
title: Windows Defender Credential Guard protection limits 
description: Some ways to store credentials are not protected by Windows Defender Credential Guard in Windows. Learn more with this guide.
ms.date: 08/17/2017
ms.topic: article
---
# Windows Defender Credential Guard protection limits

Some ways to store credentials are not protected by Windows Defender Credential Guard, including:

- Software that manages credentials outside of Windows feature protection
- Local accounts and Microsoft Accounts
- Windows Defender Credential Guard doesn't protect the Active Directory database running on Windows Server domain controllers. It also doesn't protect credential input pipelines, such as Windows Server running Remote Desktop Gateway. If you're using a Windows Server OS as a client PC, it will get the same protection as it would when running a Windows client OS.
- Key loggers
- Physical attacks
- Doesn't prevent an attacker with malware on the PC from using the privileges associated with any credential. We recommend using dedicated PCs for high value accounts, such as IT Pros and users with access to high value assets in your organization.
- Third-party security packages
- Digest and CredSSP credentials
  - When Windows Defender Credential Guard is enabled, neither Digest nor CredSSP have access to users' logon credentials. This implies no Single Sign-On use for these protocols.
- Supplied credentials for NTLM authentication aren't protected. If a user is prompted for and enters credentials for NTLM authentication, these credentials are vulnerable to be read from LSASS memory. These same credentials are vulnerable to key loggers as well.- 
- Kerberos service tickets aren't protected by Credential Guard, but the Kerberos Ticket Granting Ticket (TGT) is.
- When Windows Defender Credential Guard is deployed on a VM, Windows Defender Credential Guard protects secrets from attacks inside the VM. However, it doesn't provide additional protection from privileged system attacks originating from the host.
- Windows logon cached password verifiers (commonly called "cached credentials")
don't qualify as credentials because they can't be presented to another computer for authentication, and can only be used locally to verify credentials. They're stored in the registry on the local computer and provide validation for credentials when a domain-joined computer can't connect to AD DS during user logon. These *cached logons*, or more specifically, *cached domain account information*, can be managed using the security policy setting **Interactive logon: Number of previous logons to cache** if a domain controller isn't available.

## See also

**Deep Dive into Windows Defender Credential Guard: Related videos**

[Microsoft Cybersecurity Stack: Advanced Identity and Endpoint Protection: Manage Credential Guard](https://www.linkedin.com/learning/microsoft-cybersecurity-stack-advanced-identity-and-endpoint-protection/manage-credential-guard?u=3322)
> [!NOTE]
> - Note: Requires [LinkedIn Learning subscription](https://www.linkedin.com/learning/subscription/products) to view the full video
