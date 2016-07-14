---
title: Device Guard deployment guide (Windows 10)
description: Microsoft Device Guard is a feature set that consists of both hardware and software system integrity hardening features that revolutionize the Windows operating system’s security.
ms.assetid: 4BA52AA9-64D3-41F3-94B2-B87EC2717486
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
author: brianlic-msft
---

# Device Guard deployment guide (Windows 10)

**Applies to**
-   Windows 10
-   Windows Server 2016

Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that you define in your code integrity policies. If the app isn’t trusted it can’t run, period. With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. With appropriate hardware, Device Guard can use the new virtualization-based security in Windows 10 Enterprise to isolate the Code Integrity service from the Microsoft Windows kernel itself. In this case, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.

This guide explores the individual features in Device Guard as well as how to plan for, configure, and deploy them. It includes:

- [Introduction to Device Guard: virtualization-based security and code integrity policies](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md)

- [Requirements and deployment planning guidelines for Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md)

- [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md)

- [Deploy Device Guard: deploy code integrity policies](deploy-device-guard-deploy-code-integrity-policies.md)

    - [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md)

    - [Deploy code integrity policies: policy rules and file rules](deploy-code-integrity-policies-policy-rules-and-file-rules.md)

    - [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md)

    - [Deploy catalog files to support code integrity policies](deploy-catalog-files-to-support-code-integrity-policies.md)

- [Deploy Device Guard: enable virtualization-based security](deploy-device-guard-enable-virtualization-based-security.md)

## Related topics

[AppLocker overview](applocker-overview.md)

<!-- The following topic is EIGHT YEARS OLD, but I don't really see anything better out there on Code Integrity that existed before Windows 10. -->

[Code integrity](https://technet.microsoft.com/library/dd348642.aspx)

[Protect derived domain credentials with Credential Guard](credential-guard.md)

[Driver compatibility with Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10)

[Dropping the Hammer Down on Malware Threats with Windows 10’s Device Guard](https://channel9.msdn.com/Events/Ignite/2015/BRK2336)


