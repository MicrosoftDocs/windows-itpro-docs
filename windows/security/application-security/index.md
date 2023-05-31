---
title: Windows application security
description: Get an overview of application security in Windows
ms.reviewer:
manager: aaroncz
ms.author: paoloma
author: paolomatarazzo
ms.prod: windows-client
ms.technology: itpro-security
ms.date: 03/09/2023
ms.topic: article
---

# Windows application security

Cyber-criminals regularly gain access to valuable data by hacking applications. This can include *code injection* attacks, in which attackers insert malicious code that can tamper with data, or even destroy it. An application may have its security misconfigured, leaving open doors for hackers. Or vital customer and corporate information may leave sensitive data exposed. Windows protects your valuable data with layers of application security.

The following table summarizes the Windows security features and capabilities for apps:

| Security Measures | Features & Capabilities |
|:---|:---|
| Windows Defender Application Control | Application control is one of the most effective security controls to prevent unwanted or malicious code from running. It moves away from an application trust model where all code is assumed trustworthy to one where apps must earn trust to run. Learn more: [Application Control for Windows](../threat-protection/windows-defender-application-control/windows-defender-application-control.md) |
| Microsoft Defender Application Guard | Application Guard uses chip-based hardware isolation to isolate untrusted websites and untrusted Office files, seamlessly running untrusted websites and files in an isolated Hyper-V-based container, separate from the desktop operating system, and making sure that anything that happens within the container remains isolated from the desktop. Learn more [Microsoft Defender Application Guard overview](../threat-protection/microsoft-defender-application-guard/md-app-guard-overview.md). |
| Windows Sandbox | Windows Sandbox provides a lightweight desktop environment to safely run applications in isolation. Software installed inside the Windows Sandbox environment remains "sandboxed" and runs separately from the host machine. A sandbox is temporary. When it's closed, all the software and files and the state are deleted. You get a brand-new instance of the sandbox every time you open the application. Learn more: [Windows Sandbox](../application-security/application-isolation/windows-sandbox/windows-sandbox-overview.md) |
