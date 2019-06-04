---
title: Identity and access management (Windows 10)
description: Learn more about identity and access protection technologies in Windows 10 and Windows 10 Mobile.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: danihalfin
ms.author: daniha
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 02/05/2018
---

# Identity and access management

Learn more about identity annd access management technologies in Windows 10 and Windows 10 Mobile.

| Section | Description |
|-|-|
| [Access control](access-control/access-control.md) | Describes access control in Windows, which is the process of authorizing users, groups, and computers to access objects on the network or computer. Key concepts that make up access control are permissions, ownership of objects, inheritance of permissions, user rights, and object auditing. |
| [Configure S/MIME for Windows 10 and Windows 10 Mobile](configure-s-mime.md) | In Windows 10, S/MIME lets users encrypt outgoing messages and attachments so that only intended recipients who have a digital identification (ID), also known as a certificate, can read them. Users can digitally sign a message, which provides the recipients with a way to verify the identity of the sender and that the message hasn't been tampered with. |
| [Install digital certificates on Windows 10 Mobile](installing-digital-certificates-on-windows-10-mobile.md) | Digital certificates bind the identity of a user or computer to a pair of keys that can be used to encrypt and sign digital information. Certificates are issued by a certification authority (CA) that vouches for the identity of the certificate holder, and they enable secure client communications with websites and services. |
| [Protect derived domain credentials with Credential Guard](credential-guard/credential-guard.md) | Introduced in Windows 10 Enterprise, Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks, such as Pass-the-Hash or Pass-The-Ticket. Credential Guard helps prevent these attacks by protecting NTLM password hashes and Kerberos Ticket Granting Tickets. |
| [Protect Remote Desktop credentials with Remote Credential Guard](remote-credential-guard.md) | Remote Credential Guard helps you protect your credentials over a Remote Desktop connection by redirecting the Kerberos requests back to the device that's requesting the connection. |
| [User Account Control](user-account-control/user-account-control-overview.md)| Provides information about User Account Control (UAC), which helps prevent malware from damaging a PC and helps organizations deploy a better-managed desktop. UAC can help block the automatic installation of unauthorized apps and prevent inadvertent changes to system settings.|
| [Virtual Smart Cards](virtual-smart-cards/virtual-smart-card-overview.md) | Provides information about deploying and managing virtual smart cards, which are functionally similar to physical smart cards and appear in Windows as smart cards that are always-inserted. Virtual smart cards use the Trusted Platform Module (TPM) chip that is available on computers in many organizations, rather than requiring the use of a separate physical smart card and reader. |
| [VPN technical guide](vpn/vpn-guide.md) | Virtual private networks (VPN) let you give your users secure remote access to your company network. Windows 10 adds useful new VPN profile options to help you manage how users connect. |
| [Smart Cards](smart-cards/smart-card-windows-smart-card-technical-reference.md) | Provides a collection of references topics about smart cards, which are tamper-resistant portable storage devices that can enhance the security of tasks such as authenticating clients, signing code, securing e-mail, and signing in with a Windows domain account. |
| [Windows Hello for Business](hello-for-business/hello-identity-verification.md) | In Windows 10, Windows Hello replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and a biometric or PIN. |
| [Windows 10 Credential Theft Mitigation Guide Abstract](windows-credential-theft-mitigation-guide-abstract.md) | Learn more about credential theft mitigation in Windows 10. |
