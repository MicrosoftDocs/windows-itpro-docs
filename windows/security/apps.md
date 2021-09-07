---
title: Windows application security
description: 
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dansimp
---

# Windows application security

Cybercriminals regularly gain access to valuable data by hacking poorly secured applications. Common security failures include “code injection” attacks, in which attackers insert malicious code that can tamper with data, or even destroy it. An application may have its security misconfigured, leaving open doors for hackers. Or vital customer and corporate information may leave sensitive data exposed. Windows 11 protects your valuable data with layers of application security. A rich application platform, isolation, and code integrity enables developers to build-in security from the ground up to protect against breaches and malware.

The following table summarizes the Windows security features and capabilities for apps:<br/><br/>

| Security Measures | Features & Capabilities |
|:---|:---|
| Application Security |[Application Control for Windows](/threat-protection/windows-defender-application-control/windows-defender-application-control.md)<br>[Microsoft Defender Application Guard](/threat-protection/microsoft-defender-application-guard/md-app-guard-overview.md)<br>[Email security for Windows](/identity-protection/configure-s-mime.md)<br>[Microsoft Defender SmartScreen ](/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) |
| Privacy Controls |[Windows privacy and compliance](/windows/privacy/windows-10-and-privacy-compliance)<br>[Windows privacy controls and transparency](/privacy/changes-to-windows-diagnostic-data-collection.md)<br>|



## TEST

| Security Measures | Features & Capabilities |
|:---|:---|
| Windows Defender Application Control | Application control is one of the most effective security controls to prevent unwanted or malicious code from running. It moves away from an application trust model where all code is assumed trustworthy to one where apps must earn trust to run. Learn more: [Application Control for Windows](/threat-protection/windows-defender-application-control/windows-defender-application-control.md) |
| Microsoft Defender Application Guard | Application Guard leverages chip based hardware isolation to isolate untrusted websites and untrusted Office files, seamlessly running these in an isolated Hyper-V based container, separate from the desktop operating system, and making sure that anything that happens within the container remains isolated from the desktop. Learn more [Microsoft Defender Application Guard overview](/threat-protection/microsoft-defender-application-guard/md-app-guard-overview.md). |
| Email Security |  With Windows S/MIME email security, users can encrypt outgoing messages and attachments, so only intended recipients with digital identification (ID)—also called a certificate—can read them. Users can digitally sign a message, which verifies the identity of the sender and ensures the message has not been tampered with.[Configure S/MIME for Windows 10](/identity-protection/configure-s-mime.md) |
| Microsoft Defender SmartScreen |  Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files. Learn more: [Microsoft Defender SmartScreen overview](/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) | 
| Isolating UWP apps |  TBD |
| Developer security | TBD |