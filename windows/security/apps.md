---
title: Windows application security
description: Get an overview of application security in Windows 11
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dansimp
ms.collection: M365-security-compliance
ms.prod: m365-security
ms.technology: windows-sec
---

# Windows application security

Cyber-criminals regularly gain access to valuable data by hacking applications. This can include “code injection” attacks, in which attackers insert malicious code that can tamper with data, or even destroy it. An application may have its security misconfigured, leaving open doors for hackers. Or vital customer and corporate information may leave sensitive data exposed. Windows protects your valuable data with layers of application security.

The following table summarizes the Windows security features and capabilities for apps:<br/><br/>

| Security Measures | Features & Capabilities |
|:---|:---|
| Windows Defender Application Control | Application control is one of the most effective security controls to prevent unwanted or malicious code from running. It moves away from an application trust model where all code is assumed trustworthy to one where apps must earn trust to run. Learn more: [Application Control for Windows](threat-protection/windows-defender-application-control/windows-defender-application-control.md) |
| Microsoft Defender Application Guard | Application Guard uses chip-based hardware isolation to isolate untrusted websites and untrusted Office files, seamlessly running untrusted websites and files in an isolated Hyper-V-based container, separate from the desktop operating system, and making sure that anything that happens within the container remains isolated from the desktop. Learn more [Microsoft Defender Application Guard overview](threat-protection/microsoft-defender-application-guard/md-app-guard-overview.md). |
| Windows Sandbox | Windows Sandbox provides a lightweight desktop environment to safely run applications in isolation. Software installed inside the Windows Sandbox environment remains "sandboxed" and runs separately from the host machine. A sandbox is temporary. When it's closed, all the software and files and the state are deleted. You get a brand-new instance of the sandbox every time you open the application. Learn more: [Windows Sandbox](threat-protection\windows-sandbox\windows-sandbox-overview.md)
| Email Security |  With Windows S/MIME email security, users can encrypt outgoing messages and attachments, so only intended recipients with digital identification (ID)—also called a certificate—can read them. Users can digitally sign a message, which verifies the identity of the sender and ensures the message has not been tampered with.[Configure S/MIME for Windows 10](identity-protection/configure-s-mime.md) |
| Microsoft Defender SmartScreen |  Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files. Learn more: [Microsoft Defender SmartScreen overview](threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview.md) | 
