---
title: Keep Windows 10 secure (Windows 10)
description: Learn about keeping Windows 10 and Windows 10 Mobile secure.
ms.assetid: EA559BA8-734F-41DB-A74A-D8DBF36BE920
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---
# Keep Windows 10 secure

Learn about keeping Windows 10 and Windows 10 Mobile secure.

## In this section

| Topic | Description |
| - | - |
| [Block untrusted fonts in an enterprise](block-untrusted-fonts-in-enterprise.md) | To help protect your company from attacks which may originate from untrusted or attacker controlled font files, we’ve created the Blocking Untrusted Fonts feature. Using this feature, you can turn on a global setting that stops your employees from loading untrusted fonts processed using the Graphics Device Interface (GDI) onto your network. Untrusted fonts are any font installed outside of the %windir%/Fonts directory. Blocking untrusted fonts helps prevent both remote (web-based or email-based) and local EOP attacks that can happen during the font file-parsing process. |
| [Device Guard certification and compliance](device-guard-certification-and-compliance.md) | Device Guard is a combination of hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications. If the app isn’t trusted it can’t run, period. It also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code after the computer restarts because of how decisions are made about what can run and when. |
| [Manage identity verification using Windows Hello for Business](hello-manage-identity-verification.md) | In Windows 10, Windows Hello replaces passwords with strong two-factor authentication on PCs and mobile devices. This authentication consists of a new type of user credential that is tied to a device and a biometric or PIN. |
| [Configure S/MIME for Windows 10 and Windows 10 Mobile](configure-s-mime.md) | In Windows 10, S/MIME lets users encrypt outgoing messages and attachments so that only intended recipients who have a digital identification (ID), also known as a certificate, can read them. Users can digitally sign a message, which provides the recipients with a way to verify the identity of the sender and that the message hasn't been tampered with. |
| [Install digital certificates on Windows 10 Mobile](installing-digital-certificates-on-windows-10-mobile.md) | Digital certificates bind the identity of a user or computer to a pair of keys that can be used to encrypt and sign digital information. Certificates are issued by a certification authority (CA) that vouches for the identity of the certificate holder, and they enable secure client communications with websites and services. |
| [Protect derived domain credentials with Credential Guard](credential-guard.md) | Introduced in Windows 10 Enterprise, Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks, such as Pass-the-Hash or Pass-The-Ticket. Credential Guard prevents these attacks by protecting NTLM password hashes and Kerberos Ticket Granting Tickets. |
| [Protect Remote Desktop credentials with Remote Credential Guard](remote-credential-guard.md) | Remote Credential Guard helps you protect your credentials over a Remote Desktop connection by redirecting the Kerberos requests back to the device that's requesting the connection. |
| [Protect your enterprise data using Windows Information Protection (WIP)](protect-enterprise-data-using-wip.md) | With the increase of employee-owned devices in the enterprise, there’s also an increasing risk of accidental data leak through apps and services, like email, social media, and the public cloud, which are outside of the enterprise’s control. For example, when an employee sends the latest engineering pictures from their personal email account, copies and pastes product info into a tweet, or saves an in-progress sales report to their public cloud storage. |
| [Use Windows Event Forwarding to help with intrusion detection](use-windows-event-forwarding-to-assist-in-instrusion-detection.md) | Learn about an approach to collect events from devices in your organization. This article talks about events in both normal operations and when an intrusion is suspected. |
|[Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md) |Use Group Policy to override individual **Process Mitigation Options** settings and help to enforce specific app-related security policies. |
| [VPN profile options](vpn-profile-options.md) | Virtual private networks (VPN) let you give your users secure remote access to your company network. Windows 10 adds useful new VPN profile options to help you manage how users connect. |
| [Windows security baselines](windows-security-baselines.md) | Learn why you should use security baselines in your organization. |
| [Security technologies](security-technologies.md) | Learn more about the different security technologies that are available in Windows 10 and Windows 10 Mobile. |
| [Enterprise security guides](windows-10-enterprise-security-guides.md) | Get proven guidance to help you better secure and protect your enterprise by using technologies such as Credential Guard and Device Guard. This section offers technology overviews and step-by-step guides. |
| [Change history for Keep Windows 10 secure](change-history-for-keep-windows-10-secure.md) | This topic lists new and updated topics in the Keep Windows 10 secure documentation for [Windows 10 and Windows 10 Mobile](../index.md). |
 
## Related topics

[Windows 10 and Windows 10 Mobile](../index.md)
 
 
