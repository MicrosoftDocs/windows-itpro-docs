---
title: Introduction to Windows Defender Device Guard - virtualization-based security and code integrity policies (Windows 10)
description: Microsoft Windows Defender Device Guard is a feature set that consists of both hardware and software system integrity hardening features that revolutionize the Windows operating system’s security.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: brianlic-msft
ms.date: 10/20/2017
---

# Introduction to Windows Defender Device Guard: virtualization-based security and code integrity policies

**Applies to**
-   Windows 10
-   Windows Server 2016

With thousands of new malicious files created every day, using traditional methods like antivirus solutions—signature-based detection to fight against malware—provides an inadequate defense against new attacks. Windows Defender Device Guard changes from a mode where apps are trusted unless blocked by an antivirus or other security solution, to a mode where the operating system trusts only apps authorized by your enterprise. You designate these trusted apps by creating *code integrity policies*.

> [!NOTE]
> Beginning with Windows 10, version 1709, configurable code integrity policies are known as Windows Defender Application Control.

On hardware that includes CPU virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT), Windows Defender Device Guard can also use Virtualization Based Security (VBS) to run the Code Integrity service alongside the kernel in a Windows hypervisor-protected container, which increases the security of code integrity policies. On hardware that includes input/output memory management units (IOMMUs), Windows Defender Device Guard can also help protect against DMA attacks. The following table provides more information about how Windows Defender Device Guard and these hardware features can help protect against various threats.

When Windows Defender Application Control and hardware-based security features are combined, Windows Defender Device Guard provides a locked-down configuration for computers. 

## How Windows Defender Device Guard features help protect against threats

The following table lists security threats and describes the corresponding Windows Defender Device Guard features:

| Security threat in the enterprise | How a Windows Defender Device Guard feature helps protect against the threat |
| --------------------------------- | ----------------------------------------------------------- |
| **Exposure to new malware**, for which the "signature" is not yet known | **Windows Defender Application Control**:&nbsp;&nbsp;You can maintain a whitelist of software that is allowed to run (a configurable code integrity policy), rather than constantly update a list of "signatures" of software that should be blocked. This approach uses the trust-nothing model well known in mobile device operating systems.<br>Only code that is verified by Windows Defender Application Control (AC), usually through the digital signature that you have identified as being from a trusted signer, is allowed to run. This allows full control over allowed code in both kernel and user mode.<br><br>**Specialized hardware required?** No security-related hardware features are required, but Windows Defender AC is strengthened by such features, as described in the next rows. |
| **Exposure to unsigned code** (most malware is unsigned) | **Windows Defender AC plus catalog files as needed**:&nbsp;&nbsp;Because most malware is unsigned, Windows Defender AC (which in most cases requires signed code) can immediately help protect against a large number of threats. For organizations that use unsigned line-of-business (LOB) applications, you can use a tool called Package Inspector to create a *catalog* of all deployed and executed binary files for your trusted applications. After you sign and distribute the catalog, your trusted applications can be handled by Windows Defender AC in the same way as any other signed application. With this foundation, you can more easily block all unsigned applications, allowing only signed applications to run.<br><br>**Specialized hardware required?** No, but Windows Defender AC and catalogs are strengthened by the hardware features, as described in the next rows. |
| **Malware that gains access to the kernel** and then, from within the kernel, captures sensitive information or damages the system | **Virtualization-based security (VBS)**:&nbsp;&nbsp;This is protection that uses the hypervisor to help protect the kernel and other parts of the operating system. When VBS is enabled, it strengthens either the default kernel-mode code integrity policy (which protects against bad drivers or system files), or the configurable code integrity policy that you deploy.<br>With VBS, even if malware gains access to the kernel, the effects can be severely limited because the hypervisor can prevent the malware from executing code. The hypervisor, the most privileged level of system software, enforces R/W/X permissions across system memory.  Code integrity checks are performed in a secure environment which is resistant to attack from kernel mode software, and page permissions for kernel mode are set and maintained by the hypervisor. Even if there are vulnerabilities that allow memory modification, like a buffer overflow, the modified memory cannot be executed.<br><br>**Specialized hardware required?** Yes, VBS requires at least CPU virtualization extensions and SLAT, as described in [Hardware, firmware, and software requirements for Windows Defender Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md#hardware-firmware-and-software-requirements-for-windows-defender-device-guard). |
| **DMA-based attacks**, for example, attacks launched from a malicious device that reads secrets from memory, making the enterprise more vulnerable to attack | **Virtualization-based security (VBS) using IOMMUs**:&nbsp;&nbsp;With this type of VBS protection, when the DMA-based attack makes a memory request, IOMMUs will evaluate the request and deny access.<br><br>**Specialized hardware required?** Yes, IOMMUs are a hardware feature that supports the hypervisor, and if you choose hardware that includes them, they can help protect against malicious attempts to access memory. |
| **Exposure to boot kits or to a physically present attacker at boot time** | **Universal Extensible Firmware Interface (UEFI) Secure Boot**:&nbsp;&nbsp; Secure Boot and related methods protect the boot process and firmware from tampering. This tampering can come from a physically present attacker or from forms of malware that run early in the boot process or in the kernel after startup. UEFI is locked down (Boot order, Boot entries, Secure Boot, Virtualization extensions, IOMMU, Microsoft UEFI CA), so the settings in UEFI cannot be changed to compromise Windows Defender Device Guard security.<br><br>**Specialized hardware required?** UEFI Secure Boot has firmware requirements. For more information, see [Hardware, firmware, and software requirements for Windows Defender Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md#hardware-firmware-and-software-requirements-for-windows-defender-device-guard).  | 

In this guide, you learn about the individual features found within Windows Defender Device Guard as well as how to plan for, configure, and deploy them. Windows Defender Device Guard with configurable code integrity is intended for deployment alongside additional threat-mitigating Windows features such as [Windows Defender Credential Guard](/windows/access-protection/credential-guard/credential-guard) and [AppLocker](/windows/device-security/applocker/applocker-overview).

## New and changed functionality

Beginning with Windows 10, version 1709, configurable code integrity policies are known as Windows Defender Application Control. 

Beginning with Windows 10, version 1703, you can use code integrity policies not only to control applications, but also to control whether specific plug-ins, add-ins, and modules can run from specific apps (such as a line-of-business application or a browser). For more information, see [Use a code integrity policy to control specific plug-ins, add-ins, and modules](deploy-code-integrity-policies-steps.md#plug-ins).

## Tools for managing Windows Defender Device Guard features

You can easily manage Windows Defender Device Guard features by using familiar enterprise and client-management tools that IT pros use every day:

<!-- The item about "Intune" below could be updated at some point, when more information and a link are available. -->

-   **Group Policy**. Windows 10 provides an administrative template to configure and deploy the configurable code integrity policies for your organization. This template also allows you to specify which hardware-based security features you would like to enable and deploy. You can manage these settings along with your existing Group Policy Objects (GPOs), which makes it simpler to implement Windows Defender Device Guard features. In addition to these code integrity and hardware-based security features, you can use Group Policy to help you manage your catalog files.

    - For a description of catalog files, see the table row describing **Exposure to unsigned code** in [How Windows Defender Device Guard features help protect against threats](#how-windows-defender-device-guard-features-help-protect-against-threats), earlier in this topic.
    - For information about using Group Policy as a deployment tool, see:<br>[Deploy catalog files with Group Policy](deploy-catalog-files-to-support-code-integrity-policies.md#deploy-catalog-files-with-group-policy)<br>[Deploy and manage code integrity policies with Group Policy](deploy-code-integrity-policies-steps.md#deploy-and-manage-code-integrity-policies-with-group-policy)

-   **Microsoft System Center Configuration Manager**. You can use System Center Configuration Manager to simplify deployment and management of catalog files, code integrity policies, and hardware-based security features, as well as provide version control. For more information, see [Deploy catalog files with System Center Configuration Manager](deploy-catalog-files-to-support-code-integrity-policies.md#deploy-catalog-files-with-system-center-configuration-manager).

- **Microsoft Intune**. In a future release of Microsoft Intune, Microsoft is considering including features that will support the deployment and management of code integrity policies and catalog files.

-   **Windows PowerShell**. You can use Windows PowerShell to create and service code integrity policies. For more information, see [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md) and [Configurable Code Integrity Policy for Windows PowerShell](https://technet.microsoft.com/library/mt634481.aspx).

These options provide the same experience you're used to in order to manage your existing enterprise management solutions. 

For more information about the deployment of Windows Defender Device Guard features, see:
- [Deploy Windows Defender Device Guard: deploy code integrity policies](deploy-device-guard-deploy-code-integrity-policies.md)
- [Deploy Windows Defender Device Guard: enable virtualization-based security](deploy-device-guard-enable-virtualization-based-security.md)

## Other features that relate to Windows Defender Device Guard

### Windows Defender Device Guard with AppLocker

Although [AppLocker](/windows/device-security/applocker/applocker-overview) is not considered a new Windows Defender Device Guard feature, it complements Windows Defender Device Guard functionality when enforced code integrity cannot be fully implemented or its functionality does not cover every desired scenario. There are many scenarios in which code integrity policies would be used alongside AppLocker rules. As a best practice, you should enforce code integrity policies at the most restrictive level possible for your organization, and then you can use AppLocker to fine-tune the restrictions to an even lower level.

> **Note**&nbsp;&nbsp;One example of how Windows Defender Device Guard functionality can be enhanced by AppLocker is when you want to limit universal applications. Universal applications have already been validated by Microsoft to be trustworthy to run, but an organization may not want to allow specific universal applications to run in their environment. You can accomplish this enforcement by using an AppLocker rule.

AppLocker and Windows Defender Device Guard should run side-by-side in your organization, which offers the best of both security features at the same time and provides the most comprehensive security to as many devices as possible. In addition to these features, we recommend that you continue to maintain an enterprise antivirus solution for a well-rounded enterprise security portfolio.

### Windows Defender Device Guard with Windows Defender Credential Guard

Another Windows 10 feature that employs VBS is [Windows Defender Credential Guard](/windows/access-protection/credential-guard/credential-guard). Windows Defender Credential Guard provides additional protection to Active Directory domain users by storing domain credentials within the same type of VBS virtualization container that hosts code integrity. By isolating these domain credentials from the active user mode and kernel mode, they have a much lower risk of being stolen. For more information about Windows Defender Credential Guard (which is not a feature within Windows Defender Device Guard), see [Protect derived domain credentials with Windows Defender Credential Guard](/windows/access-protection/credential-guard/credential-guard).

Windows Defender Credential Guard is targeted at resisting pass-the-hash and pass-the-ticket techniques. By employing multifactor authentication with Windows Defender Credential Guard, organizations can gain additional protection against such threats. 



