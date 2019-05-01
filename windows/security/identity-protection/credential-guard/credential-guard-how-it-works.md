---
title: How Windows Defender Credential Guard works
description: Using virtualization-based security, Windows Defender Credential Guard features a new component called the isolated LSA process, which stores and protects secrets, isolating them from the rest of the operating system, so that only privileged system software can access them. 
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

# How Windows Defender Credential Guard works

**Applies to**  
- Windows 10  
- Windows Server 2016  


Kerberos, NTLM, and Credential manager isolate secrets by using virtualization-based security. Previous versions of Windows stored secrets in the Local Security Authority (LSA). Prior to Windows 10, the LSA stored secrets used by the operating system in its process memory. With Windows Defender Credential Guard enabled, the LSA process in the operating system talks to a new component called the isolated LSA process that stores and protects those secrets. Data stored by the isolated LSA process is protected using virtualization-based security and is not accessible to the rest of the operating system. LSA uses remote procedure calls to communicate with the isolated LSA process.

For security reasons, the isolated LSA process doesn't host any device drivers. Instead, it only hosts a small subset of operating system binaries that are needed for security and nothing else. All of these binaries are signed with a certificate that is trusted by virtualization-based security and these signatures are validated before launching the file in the protected environment.

When Windows Defender Credential Guard is enabled, NTLMv1, MS-CHAPv2, Digest, and CredSSP cannot use the signed-in credentials. Thus, single sign-on does not work with these protocols. However, applications can prompt for credentials or use credentials stored in the Windows Vault which are not protected by Windows Defender Credential Guard with any of these protocols. It is strongly recommended that valuable credentials, such as the sign-in credentials, not be used with any of these protocols. If these protocols must be used by domain or Azure AD users, secondary credentials should be provisioned for these use cases.

When Windows Defender Credential Guard is enabled, Kerberos does not allow unconstrained Kerberos delegation or DES encryption, not only for signed-in credentials, but also prompted or saved credentials.

Here's a high-level overview on how the LSA is isolated by using virtualization-based security:

![Windows Defender Credential Guard overview](images/credguard.png)  

<br>

## See also

**Deep Dive into Windows Defender Credential Guard: Related videos**

[Credential Theft and Lateral Traversal](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=cfGBPlIyC_9404300474)

[Virtualization-based security](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=1CoELLJyC_6704300474)

[Credentials protected by Windows Defender Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651?l=pdc37LJyC_1204300474)
