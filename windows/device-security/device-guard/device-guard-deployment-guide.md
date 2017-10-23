---
title: Windows Defender Device Guard deployment guide (Windows 10)
description: Microsoft Windows Defender Device Guard is a feature set that consists of both hardware and software system integrity hardening features that revolutionize the Windows operating system’s security.
ms.assetid: 4BA52AA9-64D3-41F3-94B2-B87EC2717486
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: brianlic-msft
ms.date: 10/20/2017
---

# Windows Defender Device Guard deployment guide

**Applies to**
-   Windows 10
-   Windows Server 2016

Windows Defender Device Guard is a combination of enterprise-related hardware and software security features that run on Windows 10 Enterprise edition and Windows Server. When these features are configured together, Windows Defender Device Guard will lock a device down so that it can only run trusted applications that you define in your code integrity policies. If the app isn’t trusted, it can’t run, period. 

> [!NOTE]
> Beginning with Windows 10, version 1709, configurable code integrity policies are known as Windows Defender Application Control.

With hardware that meets basic qualifications, Windows Defender Device Guard can also use virtualization-based security to isolate the Code Integrity service and run it alongside the Windows kernel in a hypervisor-protected container. Even if an attacker manages to get control of the Windows kernel itself, the ability to run malicious executable code is much less likely. 

This guide explores the individual features in Windows Defender Device Guard as well as how to plan for, configure, and deploy them. It includes:

- [Introduction to Windows Defender Device Guard: virtualization-based security and code integrity policies](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md)

- [Requirements and deployment planning guidelines for Windows Defender Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md)

- [Planning and getting started on the Windows Defender Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md)

- [Deploy Windows Defender Device Guard: deploy code integrity policies](deploy-device-guard-deploy-code-integrity-policies.md)

    - [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md)

    - [Deploy code integrity policies: policy rules and file rules](deploy-code-integrity-policies-policy-rules-and-file-rules.md)

    - [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md)

    - [Deploy catalog files to support code integrity policies](deploy-catalog-files-to-support-code-integrity-policies.md)

- [Deploy Windows Defender Device Guard: enable virtualization-based security](deploy-device-guard-enable-virtualization-based-security.md)

## Related topics

[AppLocker overview](/windows/device-security/applocker/applocker-overview)

<!-- The following topic is EIGHT YEARS OLD, but I don't really see anything better out there on Code Integrity that existed before Windows 10. -->

[Code integrity](https://technet.microsoft.com/library/dd348642.aspx)

[Protect derived domain credentials with Windows Defender Credential Guard](/windows/access-protection/credential-guard/credential-guard)

[Driver compatibility with Windows Defender Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10)

[Dropping the Hammer Down on Malware Threats with Windows 10’s Windows Defender Device Guard](https://channel9.msdn.com/Events/Ignite/2015/BRK2336)


