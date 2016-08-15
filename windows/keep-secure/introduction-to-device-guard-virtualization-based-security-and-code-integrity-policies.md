---
title: Introduction to Device Guard - virtualization-based security and code integrity policies (Windows 10)
description: Microsoft Device Guard is a feature set that consists of both hardware and software system integrity hardening features that revolutionize the Windows operating system’s security.
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
localizationpriority: high
author: brianlic-msft
---

# Introduction to Device Guard: virtualization-based security and code integrity policies

**Applies to**
-   Windows 10
-   Windows Server 2016

With thousands of new malicious files created every day, using traditional methods like antivirus solutions—signature-based detection to fight against malware—provides an inadequate defense against new attacks. Device Guard on Windows 10 Enterprise changes from a mode where apps are trusted unless blocked by an antivirus or other security solution, to a mode where the operating system trusts only apps authorized by your enterprise. You designate these trusted apps by creating *code integrity policies*.

Like the operating system, code integrity contains two primary components: kernel mode code integrity (KMCI) and user mode code integrity (UMCI). KMCI has been available in previous versions of the Windows operating system, and protects the kernel mode from running unsigned drivers. In Windows 10 and Windows Server 2016, UMCI is also available, to help protect against viruses and malware.

To increase the security level offered by code integrity policies, Device Guard can leverage advanced hardware features on hardware that supports them. These features include CPU virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT). In addition, hardware that includes input/output memory management units (IOMMUs) provides even stronger protections. When you enable the features associated with CPU virtualization extensions and SLAT, the Code Integrity service can run alongside the kernel in a Windows hypervisor-protected container. The following table provides more information about how Device Guard and these hardware features can help protect against various threats.

For an overview of the process of deploying Device Guard features, see [Planning and getting started on the Device Guard deployment process](planning-and-getting-started-on-the-device-guard-deployment-process.md).

## How Device Guard features help protect against threats

The following table lists security threats and describes the corresponding Device Guard features:

| Security threat in the enterprise | How a Device Guard feature helps protect against the threat |
| --------------------------------- | ----------------------------------------------------------- |
| **Exposure to new malware**, for which the "signature" is not yet known | **Code integrity policies**:&nbsp;&nbsp;You can maintain a whitelist of software that is allowed to run (a configurable code integrity policy), rather than trying to stay ahead of attackers by maintaining a constantly-updated list of "signatures" of software that should be blocked. This approach uses the trust-nothing model well known in mobile device operating systems.<br>Only code that is verified by Code Integrity, usually through the digital signature that you have identified as being from a trusted signer, is allowed to run. This allows full control over allowed code in both kernel and user mode.<br><br>**Specialized hardware required?** No security-related hardware features are required, although code integrity policies are strengthened by such features, as described in the last three rows of this table. |
| **Exposure to unsigned code** (most malware is unsigned) | **Code integrity policies, plus catalog files as needed**:&nbsp;&nbsp;Because most malware is unsigned, using a code integrity policy (which in most cases requires signed code) can immediately help protect against a large number of threats. However, many organizations use unsigned line-of-business (LOB) applications, for which the process of signing might be difficult. This has changed in Windows 10, because you can use a tool called Package Inspector to create a *catalog* of all deployed and executed binary files for your trusted applications. After you sign and distribute the catalog, your trusted applications can be handled by code integrity policies in the same way as any other signed application. With this foundation, you can more easily block all unsigned applications, allowing only signed applications to run.<br><br>**Specialized hardware required?** No security-related hardware features are required for creating and using code integrity policies and catalogs. However, code integrity policies and catalogs are strengthened by the hardware features, as described in later rows of this table. |
| **Malware that gains access to the kernel** and then, from within the kernel, captures sensitive information or damages the system | **Virtualization-based security (VBS)**:&nbsp;&nbsp;This is protection that uses the hypervisor to help protect the kernel and other parts of the operating system. When VBS is enabled, it strengthens either the default kernel-mode code integrity policy (which protects against bad drivers or system files), or the configurable code integrity policy that you deploy.<br>With VBS, even if malware gains access to the kernel, the effects can be severely limited, because the hypervisor can prevent the malware from executing code. The hypervisor, the most privileged level of system software, enforces R/W/X permissions across system memory.  Code integrity checks are performed in a secure environment which is resistant to attack from kernel mode software, and page permissions for kernel mode are set and maintained by the hypervisor. Even if there are vulnerabilities that allow memory modification, like a buffer overflow, the modified memory cannot be executed.<br><br>**Specialized hardware required?** Yes, VBS requires at least CPU virtualization extensions and SLAT, as described in [Hardware, firmware, and software requirements for Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md#hardware-firmware-and-software-requirements-for-device-guard). |
| **DMA-based attacks**, for example, attacks launched from a malicious device that reads secrets from memory, making the enterprise more vulnerable to attack | **Virtualization-based security (VBS) using IOMMUs**:&nbsp;&nbsp;With this type of VBS protection, when the DMA-based attack makes a memory request, input/output memory management units (IOMMUs) will evaluate the request and deny access.<br><br>**Specialized hardware required?** Yes, IOMMUs are a hardware feature that supports the hypervisor, and if you choose hardware that includes them, they can help protect against malicious attempts to access memory. |
| **Exposure to boot kits or to a physically present attacker at boot time** | **Universal Extensible Firmware Interface (UEFI) Secure Boot**:&nbsp;&nbsp; Secure Boot and related methods protect the boot process and firmware from tampering. This tampering can come from a physically present attacker or from forms of malware that run early in the boot process or in kernel after startup. UEFI is locked down (Boot order, Boot entries, Secure Boot, Virtualization extensions, IOMMU, Microsoft UEFI CA), so the settings in UEFI cannot be changed to compromise Device Guard security.<br><br>**Specialized hardware required?** With UEFI Secure Boot, the requirements are firmware requirements. For more information, see [Hardware, firmware, and software requirements for Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md#hardware-firmware-and-software-requirements-for-device-guard).  | 

In this guide, you learn about the individual features found within Device Guard as well as how to plan for, configure, and deploy them. Device Guard with configurable code integrity is intended for deployment alongside additional threat-mitigating Windows features such as [Credential Guard](credential-guard.md) and [AppLocker](applocker-overview.md).

## Tools for managing Device Guard features

You can easily manage Device Guard features by using familiar enterprise and client-management tools that IT pros use every day:

<!-- The item about "Intune" below could be updated at some point, when more information and a link are available. -->

-   **Group Policy**. Windows 10 provides an administrative template to configure and deploy the configurable code integrity policies for your organization. This template also allows you to specify which hardware-based security features you would like to enable and deploy. You can manage these settings along with your existing Group Policy Objects (GPOs), which makes it simpler to implement Device Guard features. In addition to these code integrity and hardware-based security features, you can use Group Policy to help you manage your catalog files.

    - For a description of catalog files, see the table row describing **Exposure to unsigned code** in [How Device Guard features help protect against threats](#how-device-guard-features-help-protect-against-threats), earlier in this topic.
    - For information about using Group Policy as a deployment tool, see:<br>[Deploy catalog files with Group Policy](deploy-catalog-files-to-support-code-integrity-policies.md#deploy-catalog-files-with-group-policy)<br>[Deploy and manage code integrity policies with Group Policy](deploy-code-integrity-policies-steps.md#deploy-and-manage-code-integrity-policies-with-group-policy)

-   **Microsoft System Center Configuration Manager**. You can use System Center Configuration Manager to simplify deployment and management of catalog files, code integrity policies, and hardware-based security features, as well as provide version control. For more information, see [Deploy catalog files with System Center Configuration Manager](deploy-catalog-files-to-support-code-integrity-policies.md#deploy-catalog-files-with-system-center-configuration-manager).

- **Microsoft Intune**. In a future release of Microsoft Intune, Microsoft is considering including features that will support the deployment and management of code integrity policies and catalog files.

-   **Windows PowerShell**. You can use Windows PowerShell to create and service code integrity policies. For more information, see [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md) and [Configurable Code Integrity Policy for Windows PowerShell](https://technet.microsoft.com/library/mt634481.aspx).

These options provide the same experience you're used to in order to manage your existing enterprise management solutions. 

For more information about the deployment of Device Guard features, see:
- [Deploy Device Guard: deploy code integrity policies](deploy-device-guard-deploy-code-integrity-policies.md)
- [Deploy Device Guard: enable virtualization-based security](deploy-device-guard-enable-virtualization-based-security.md)

## Other features that relate to Device Guard

### Device Guard with AppLocker

Although [AppLocker](applocker-overview.md) is not considered a new Device Guard feature, it complements Device Guard functionality when enforced code integrity cannot be fully implemented or its functionality does not cover every desired scenario. There are many scenarios in which code integrity policies would be used alongside AppLocker rules. As a best practice, you should enforce code integrity policies at the most restrictive level possible for your organization, and then you can use AppLocker to fine-tune the restrictions to an even lower level.

> **Note**&nbsp;&nbsp;One example of how Device Guard functionality can be enhanced by AppLocker is when you want to limit universal applications. Universal applications have already been validated by Microsoft to be trustworthy to run, but an organization may not want to allow specific universal applications to run in their environment. You can accomplish this enforcement by using an AppLocker rule.

AppLocker and Device Guard should run side-by-side in your organization, which offers the best of both security features at the same time and provides the most comprehensive security to as many devices as possible. In addition to these features, we recommend that you continue to maintain an enterprise antivirus solution for a well-rounded enterprise security portfolio.

### Device Guard with Credential Guard

Another Windows 10 feature that employs VBS is [Credential Guard](credential-guard.md). Credential Guard provides additional protection to Active Directory domain users by storing domain credentials within the same type of VBS virtualization container that hosts code integrity. By isolating these domain credentials from the active user mode and kernel mode, they have a much lower risk of being stolen. For more information about Credential Guard (which is not a feature within Device Guard), see [Protect derived domain credentials with Credential Guard](credential-guard.md).

Credential Guard is targeted at resisting pass-the-hash and pass-the-ticket techniques. By employing multifactor authentication with Credential Guard, organizations can gain additional protection against such threats. 

In addition to the client-side enabling of Credential Guard, organizations can deploy mitigations at both the CA and domain controller level to help prevent credential theft. For more information, see the [Additional mitigations](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/credential-guard#additional-mitigations) section in “Protect derived domain credentials with Credential Guard.”

