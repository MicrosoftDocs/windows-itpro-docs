---
title: SECCON 5 Enterprise Security
description: This article, and the articles it links to, describe how to use Windows security baselines in your organization
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: appcompatguy
author: appcompatguy
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/05/2018
---

# SECCON 5 security configuration for enterprise security

**Applies to**  

-   Windows 10
-   Windows Server 2016 
-   Office 2016 

## Behaviors

The behaviors recommended in SECCON 5 enforce a reasonable security level while minimizing the impact to users or to applications.

| Feature | Config            | Description |
|---------|-------------------|-------------|
| OS security updates | Deploy Windows Quality Updates within 7 days of release | As the time between the release of a patch and an exploit based on the reverse engineering of that patch continues to shrink, a critical aspect of security hygiene is having an engineering process that quickly validates and deploys Quality Updates that address security vulnerabilities. |

## Controls

The controls enabled in SECCON 5 enforce a reasonable security level while minimizing the impact to users and applications. 

| Feature                           | Config                              | Description        |
|-----------------------------------|-------------------------------------|--------------------|
| [Windows Defender ATP EDR](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-endpoint-detection-response)          | Deployed to all devices             | The Windows Defender ATP endpoint detection and response (EDR) provides actionable and near real-time detection of advanced attacks. EDR helps security analysts , and aggregates alerts with the same attack techniques or attributed to the same attacker into an an entity called an *incident*. An incident helps analysts prioritize alerts, collectively investigate the full scope of a breach, and respond to threats. Windows Defender ATP EDR is not expected to impact users or applications, and it can be deployed to all devices in a single step.      |
| [Windows Defender Credential Guard](https://docs.microsoft.com/windows/security/identity-protection/credential-guard/credential-guard)                 | Enabled for all compatible hardware | Windows Defender Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks, such as Pass-the-Hash or Pass-The-Ticket. Windows Defender Credential Guard prevents these attacks by protecting NTLM password hashes, Kerberos Ticket Granting Tickets (TGTs), and credentials stored by applications as domain credentials. There is a small risk to application compatibility, as [applications will break](https://docs.microsoft.com/windows/security/identity-protection/credential-guard/credential-guard-requirements#application-requirements) if they require NTLMv1, Kerberos DES encryption, Kerberos unconstrained delegation, or extracting the Keberos TGT. As such, Microsoft recommends deploying Credential Guard using the ring methodology.  |   
| [Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/)                    | Default browser                     | Microsoft Edge in Windows 10 provides better security than Internet Explorer 11 (IE11). While you may still need to leverage IE11 for compatibility with some sites, Microsoft recommends configuring Microsoft Edge as the default browser, and building an Enterprise Mode Site List to redirect to IE11 only for those sites that require it. Microsoft recommends leveraging either Windows Analytics or Enterprise Site Discovery to build the initial Enterprise Mode Site List, and then gradually deploying this configuration using the rings methodology.   |
| [Windows Defender Application Guard](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-guard/wd-app-guard-overview) | Enabled on compatible hardware      | Windows Defender Application Guard uses a hardware isolation approach. If an employee goes to an untrusted site through either Microsoft Edge or Internet Explorer, Microsoft Edge opens the site in an isolated container, which is separate from the host operating system and enabled by Hyper-V. If the untrusted site turns out to be malicious, the isolated container protects the host PC, and the attacker can't get to your enterprise data. There is a small risk to application compatibility, as some applications may require interaction with the host PC but may not yet be on the list of trusted web sites for Application Guard. Microsoft recommends leveraging either Windows Analytics or Enterprise Site Discovery to build the initial Network Isolation Settings, and then gradually deploying this configuration using the rings methodology. |    

## Policies