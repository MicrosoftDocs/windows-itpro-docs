---
title: Identity and access management
description: Learn more about identity and access protection technologies in Windows.
ms.topic: article
ms.date: 05/31/2023
---

# Identity and access management

Learn more about identity and access management technologies in Windows.

[!INCLUDE [virtual-smart-card-deprecation-notice](../includes/virtual-smart-card-deprecation-notice.md)]

| Section | Description |
|-|-|
| [Windows Hello for Business](hello-for-business/index.yml) | Windows Hello replaces passwords with strong two-factor authentication on client devices. The authentication consists of a type of user credential that is tied to a device and a biometric or PIN. |
| [Windows Local Administrator Password Solution (LAPS)](/windows-server/identity/laps/laps-overview) | Windows Local Administrator Password Solution (Windows LAPS) is a Windows feature that automatically manages and backs up the password of a local administrator account on your Azure Active Directory-joined or Windows Server Active Directory-joined devices.
| [Technical support policy for lost or forgotten passwords](password-support-policy.md)| Outlines the ways in which Microsoft can help you reset a lost or forgotten password, and provides links to instructions for doing so. |
| [Access control](access-control/access-control.md) | Describes access control in Windows, which is the process of authorizing users, groups, and computers to access objects on the network or computer. Key concepts that make up access control are permissions, ownership of objects, inheritance of permissions, user rights, and object auditing. |
| [Protect derived domain credentials with Credential Guard](credential-guard/credential-guard.md) | Credential Guard uses Virtualization-based security (VBS) to isolate secrets so that only privileged system software can access them. Unauthorized access to the secrets can lead to credential theft attacks, such as *pass the hash* or *pass the ticket*. Credential Guard helps prevent such attacks by protecting NTLM password hashes and Kerberos Ticket Granting Tickets. |
| [Protect Remote Desktop credentials with Remote Credential Guard](remote-credential-guard.md) | Remote Credential Guard helps you protect your credentials over a Remote Desktop connection by redirecting the Kerberos requests back to the device that's requesting the connection. |
| [User Account Control](../application-security/application-control/user-account-control/index.md)| Provides information about User Account Control (UAC), which helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop. UAC can help block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.|
| [Smart Cards](smart-cards/smart-card-windows-smart-card-technical-reference.md) | Provides a collection of references articles about smart cards, which are tamper-resistant portable storage devices that can enhance the security of tasks such as authenticating clients, signing code, securing e-mail, and signing in with a Windows domain account. |
| [Windows Credential Theft Mitigation Guide Abstract](windows-credential-theft-mitigation-guide-abstract.md) | Learn more about credential theft mitigation in Windows. |
| [Virtual Smart Cards](virtual-smart-cards/virtual-smart-card-overview.md) | Provides information about deploying and managing virtual smart cards. Virtual smart cards use the Trusted Platform Module (TPM) chip that is available on computers in many organizations, rather than requiring the use of a separate physical smart card and reader. |
| Microsoft Defender SmartScreen |  Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files. Learn more: [Microsoft Defender SmartScreen overview](../threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) |
