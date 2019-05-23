---
title: Windows Defender Credential Guard protection limits (Windows 10)
description: Scenarios not protected by Windows Defender Credential Guard in Windows 10.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: danihalfin
ms.author: daniha
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.date: 08/17/2017
---

# Windows Defender Credential Guard protection limits

**Applies to**
-   Windows 10
-   Windows Server 2016

Prefer video? See [Credentials protected by Windows Defender Credential Guard](https://www.linkedin.com/learning/microsoft-cybersecurity-stack-advanced-identity-and-endpoint-protection)
in the Microsoft Cybersecurity Stack: Advanced Identity and Endpoint Protection
 video series.

Some ways to store credentials are not protected by Windows Defender Credential Guard, including:

-   Software that manages credentials outside of Windows feature protection
-   Local accounts and Microsoft Accounts
-   Windows Defender Credential Guard does not protect the Active Directory database running on Windows Server 2016 domain controllers. It also does not protect credential input pipelines, such as Windows Server 2016 servers running Remote Desktop Gateway. If you're using a Windows Server 2016 server as a client PC, it will get the same protection as it would when running Windows 10 Enterprise.
-   Key loggers
-   Physical attacks
-   Does not prevent an attacker with malware on the PC from using the privileges associated with any credential. We recommend using dedicated PCs for high value accounts, such as IT Pros and users with access to high value assets in your organization.
-   Third-party security packages
-   Digest and CredSSP credentials
    -   When Windows Defender Credential Guard is enabled, neither Digest nor CredSSP have access to users' logon credentials. This implies no Single Sign-On use for these protocols.
-   Supplied credentials for NTLM authentication are not protected. If a user is prompted for and enters credentials for NTLM authentication, these credentials are vulnerable to be read from LSASS memory. Note that these same credentials are vulnerable to key loggers as well.- 
-  Kerberos service tickets are not protected by Credential Guard, but the Kerberos Ticket Granting Ticket (TGT) is.
-  When Windows Defender Credential Guard is deployed on a VM, Windows Defender Credential Guard protects secrets from attacks inside the VM. However, it does not provide additional protection from privileged system attacks originating from the host.
-  Windows logon cached password verifiers (commonly called "cached credentials")
do not qualify as credentials because they cannot be presented to another computer for authentication, and can only be used locally to verify credentials. They are stored in the registry on the local computer and provide validation for credentials when a domain-joined computer cannot connect to AD DS during user logon. These “cached logons”, or more specifically, cached domain account information, can be managed using the security policy setting **Interactive logon: Number of previous logons to cache** if a domain controller is not available.

## See also

**Deep Dive into Windows Defender Credential Guard: Related videos**

[Protecting privileged users with Windows Defender Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=JNbjYMJyC_8104300474)
