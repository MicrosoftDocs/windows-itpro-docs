---
title: Mitigate threats by using Windows 10 security features (Windows 10)
description: This topic provides an overview of software and firmware threats faced in the current security landscape, and the mitigations that Windows 10 offers in response to these threats. 
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.date: 10/13/2017
ms.reviewer: 
manager: dansimp
ms.author: dolmont
---

# Mitigate threats by using Windows 10 security features

**Applies to:**
- Windows 10

This topic provides an overview of some of the software and firmware threats faced in the current security landscape, and the mitigations that Windows 10 offers in response to these threats. For information about related types of protection offered by Microsoft, see [Related topics](#related-topics).

| **Section**  | **Contents** |
|--------------|-------------------------|
| [The security threat landscape](#threat-landscape) | Describes the current nature of the security threat landscape, and outlines how Windows 10 is designed to mitigate software exploits and similar threats.  |
| [Windows 10 mitigations that you can configure](#windows-10-mitigations-that-you-can-configure) | Provides tables of configurable threat mitigations with links to more information. Product features such as Device Guard appear in [Table 1](#windows-10-mitigations-that-you-can-configure), and memory protection options such as Data Execution Prevention appear in [Table 2](#table-2). |
| [Mitigations that are built in to Windows 10](#mitigations-that-are-built-in-to-windows-10) | Provides descriptions of Windows 10 mitigations that require no configuration—they are built into the operating system. For example, heap protections and kernel pool protections are built into Windows 10. |
| [Understanding Windows 10 in relation to the Enhanced Mitigation Experience Toolkit](#understanding-windows-10-in-relation-to-the-enhanced-mitigation-experience-toolkit) | Describes how mitigations in the [Enhanced Mitigation Experience Toolkit (EMET)](https://support.microsoft.com/kb/2458544) correspond to features built into Windows 10 and how to convert EMET settings into mitigation policies for Windows 10. |

<a href="" id="threat-landscape"></a>This topic focuses on pre-breach mitigations aimed at device protection and threat resistance. These protections work with other security defenses in Windows 10, as shown in the following illustration:

<img src="images/threat-mitigations-pre-breach-post-breach-conceptual.png" alt="Types of defenses in Windows 10" />

*Figure 1.&nbsp;&nbsp;Device protection and threat resistance as part of the Windows 10 security defenses*

## The security threat landscape

Today’s security threat landscape is one of aggressive and tenacious threats. In previous years, malicious attackers mostly focused on gaining community recognition through their attacks or the thrill of temporarily taking a system offline. Since then, attacker’s motives have shifted toward making money, including holding devices and data hostage until the owner pays the demanded ransom. Modern attacks increasingly focus on large-scale intellectual property theft; targeted system degradation that can result in financial loss; and now even cyberterrorism that threatens the security of individuals, businesses, and national interests all over the world. These attackers are typically highly trained individuals and security experts, some of whom are in the employ of nation states that have large budgets and seemingly unlimited human resources. Threats like these require an approach that can meet this challenge.

In recognition of this landscape, Windows 10 Creator's Update (Windows 10, version 1703) includes multiple security features that were created to make it difficult (and costly) to find and exploit many software vulnerabilities. These features are designed to:

-   Eliminate entire classes of vulnerabilities

-   Break exploitation techniques

-   Contain the damage and prevent persistence

-   Limit the window of opportunity to exploit

The following sections provide more detail about security mitigations in Windows 10, version 1703.

## Windows 10 mitigations that you can configure

Windows 10 mitigations that you can configure are listed in the following two tables. The first table covers a wide array of protections for devices and users across the enterprise and the second table drills down into specific memory protections such as Data Execution Prevention. Memory protection options provide specific mitigations against malware that attempts to manipulate memory in order to gain control of a system.

**Table 1  Windows 10 mitigations that you can configure**

| Mitigation and corresponding threat | Description and links |
|---|---|
| **Windows Defender SmartScreen**<br> helps prevent<br>malicious applications<br>from being downloaded | Windows Defender SmartScreen can check the reputation of a downloaded application by using a service that Microsoft maintains. The first time a user runs an app that originates from the Internet (even if the user copied it from another PC), SmartScreen checks to see if the app lacks a reputation or is known to be malicious, and responds accordingly.<br><br>**More information**: [Windows Defender SmartScreen](#windows-defender-smartscreen), later in this topic |
| **Credential Guard**<br> helps keep attackers<br>from gaining access through<br>Pass-the-Hash or<br>Pass-the-Ticket attacks | Credential Guard uses virtualization-based security to isolate secrets, such as NTLM password hashes and Kerberos Ticket Granting Tickets, so that only privileged system software can access them.<br>Credential Guard is included in Windows 10 Enterprise and Windows Server 2016.<br><br>**More information**: [Protect derived domain credentials with Credential Guard](/windows/access-protection/credential-guard/credential-guard) |
| **Enterprise certificate pinning**<br> helps prevent <br>man-in-the-middle attacks<br>that leverage PKI | Enterprise certificate pinning enables you to protect your internal domain names from chaining to unwanted certificates or to fraudulently issued certificates. With enterprise certificate pinning, you can “pin” (associate) an X.509 certificate and its public key to its Certification Authority, either root or leaf. <br><br>**More information**: [Enterprise Certificate Pinning](/windows/access-protection/enterprise-certificate-pinning) |
| **Device Guard**<br> helps keep a device<br>from running malware or<br>other untrusted apps | Device Guard includes a Code Integrity policy that you create; a whitelist of trusted apps—the only apps allowed to run in your organization. Device Guard also includes a powerful system mitigation called hypervisor-protected code integrity (HVCI), which leverages virtualization-based security (VBS) to protect Windows’ kernel-mode code integrity validation process. HVCI has specific hardware requirements, and works with Code Integrity policies to help stop attacks even if they gain access to the kernel.<br>Device Guard is included in Windows 10 Enterprise and Windows Server 2016.<br><br>**More information**: [Introduction to Device Guard](/windows/device-security/device-guard/introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies) |
| **Windows Defender Antivirus**,<br>which helps keep devices<br>free of viruses and other<br>malware | Windows 10 includes Windows Defender Antivirus, a robust inbox antimalware solution. Windows Defender Antivirus has been significantly improved since it was introduced in Windows 8.<br><br>**More information**: [Windows Defender Antivirus](#windows-defender-antivirus), later in this topic |
| **Blocking of untrusted fonts**<br> helps prevent fonts<br>from being used in<br>elevation-of-privilege attacks | Block Untrusted Fonts is a setting that allows you to prevent users from loading fonts that are "untrusted" onto your network, which can mitigate elevation-of-privilege attacks associated with the parsing of font files. However, as of Windows 10, version 1703, this mitigation is less important, because font parsing is isolated in an [AppContainer sandbox](https://msdn.microsoft.com/library/windows/desktop/mt595898(v=vs.85).aspx) (for a list describing this and other kernel pool protections, see [Kernel pool protections](#kernel-pool-protections), later in this topic).<br><br>**More information**: [Block untrusted fonts in an enterprise](/windows/threat-protection/block-untrusted-fonts-in-enterprise) |
| **Memory protections**<br> help prevent malware<br>from using memory manipulation<br>techniques such as buffer<br>overruns | These mitigations, listed in [Table 2](#table-2), help to protect against memory-based attacks, where malware or other code manipulates memory to gain control of a system (for example, malware that attempts to use buffer overruns to inject malicious executable code into memory. Note:<br>A subset of apps will not be able to run if some of these mitigations are set to their most restrictive settings. Testing can help you maximize protection while still allowing these apps to run.<br><br>**More information**: [Table 2](#table-2), later in this topic |
| **UEFI Secure Boot**<br> helps protect<br>the platform from<br>bootkits and rootkits | Unified Extensible Firmware Interface (UEFI) Secure Boot is a security standard for firmware built in to PCs by manufacturers beginning with Windows 8. It helps to protect the boot process and firmware against tampering, such as from a physically present attacker or from forms of malware that run early in the boot process or in kernel after startup.<br><br>**More information**: [UEFI and Secure Boot](/windows/device-security/bitlocker/bitlocker-countermeasures#uefi-and-secure-boot)</a> |
| **Early Launch Antimalware (ELAM)**<br> helps protect<br>the platform from<br>rootkits disguised as drivers | Early Launch Antimalware (ELAM) is designed to enable the antimalware solution to start before all non-Microsoft drivers and apps. If malware modifies a boot-related driver, ELAM will detect the change, and Windows will prevent the driver from starting, thus blocking driver-based rootkits.<br><br>**More information**: [Early Launch Antimalware](/windows/device-security/bitlocker/bitlocker-countermeasures#protection-during-startup) |
| **Device Health Attestation**<br> helps prevent<br>compromised devices from<br>accessing an organization’s<br>assets | Device Health Attestation (DHA) provides a way to confirm that devices attempting to connect to an organization's network are in a healthy state, not compromised with malware. When DHA has been configured, a device’s actual boot data measurements can be checked against the expected "healthy" boot data. If the check indicates a device is unhealthy, the device can be prevented from accessing the network.<br><br>**More information**: [Control the health of Windows 10-based devices](/windows/device-security/protect-high-value-assets-by-controlling-the-health-of-windows-10-based-devices) and [Device Health Attestation](https://technet.microsoft.com/windows-server-docs/security/device-health-attestation) |

Configurable Windows 10 mitigations designed to help protect against memory manipulation require in-depth understanding of these threats and mitigations and knowledge about how the operating system and applications handle memory. The standard process for maximizing these types of mitigations is to work in a test lab to discover whether a given setting interferes with any applications that you use so that you can deploy settings that maximize protection while still allowing apps to run correctly.

As an IT professional, you can ask application developers and software vendors to deliver applications that include an additional protection called Control Flow Guard (CFG). No configuration is needed in the operating system—the protection is compiled into applications. More information can be found in [Control Flow Guard](#control-flow-guard).

### <span id="table-2" class="anchor"></span>Table 2&nbsp;&nbsp;Configurable Windows 10 mitigations designed to help protect against memory exploits

| Mitigation and corresponding threat | Description |
|---|---|
| **Data Execution Prevention (DEP)**<br> helps prevent<br>exploitation of buffer overruns | **Data Execution Prevention (DEP)** is a system-level memory protection feature available in Windows operating systems. DEP enables the operating system to mark one or more pages of memory as non-executable, which prevents code from being run from that region of memory, to help prevent exploitation of buffer overruns.<br>DEP helps prevent code from being run from data pages such as the default heap, stacks, and memory pools. Although some applications have compatibility problems with DEP, the vast majority of applications do not.<br>**More information**: [Data Execution Prevention](#data-execution-prevention), later in this topic.<br><br>**Group Policy settings**: DEP is on by default for 64-bit applications, but you can configure additional DEP protections by using the Group Policy settings described in [Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md). |
| **SEHOP**<br> helps prevent<br>overwrites of the<br>Structured Exception Handler | **Structured Exception Handling Overwrite Protection (SEHOP)** is designed to help block exploits that use the Structured Exception Handler (SEH) overwrite technique. Because this protection mechanism is provided at run-time, it helps to protect apps regardless of whether they have been compiled with the latest improvements. A few applications have compatibility problems with SEHOP, so be sure to test for your environment.<br>**More information**: [Structured Exception Handling Overwrite Protection](#structured-exception-handling-overwrite-protection), later in this topic.<br><br>**Group Policy setting**: SEHOP is on by default for 64-bit applications, but you can configure additional SEHOP protections by using the Group Policy setting described in [Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md). |
| **ASLR**<br> helps mitigate malware<br>attacks based on<br>expected memory locations | **Address Space Layout Randomization (ASLR)** loads DLLs into random memory addresses at boot time. This helps mitigate malware that's designed to attack specific memory locations, where specific DLLs are expected to be loaded.<br>**More information**: [Address Space Layout Randomization](#address-space-layout-randomization), later in this topic.<br><br>**Group Policy settings**: ASLR is on by default for 64-bit applications, but you can configure additional ASLR protections by using the Group Policy settings described in [Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md). |

### Windows Defender SmartScreen

Windows Defender SmartScreen notifies users if they click on reported phishing and malware websites, and helps protect them against unsafe downloads or make informed decisions about downloads.

For Windows 10, Microsoft improved SmartScreen (now called Windows Defender SmartScreen) protection capability by integrating its app reputation abilities into the operating system itself, which allows SmartScreen to check the reputation of files downloaded from the Internet and warn users when they’re about to run a high-risk downloaded file. The first time a user runs an app that originates from the Internet, SmartScreen checks the reputation of the application by using digital signatures and other factors against a service that Microsoft maintains. If the app lacks a reputation or is known to be malicious, SmartScreen warns the user or blocks execution entirely, depending on how the administrator has configured Microsoft Intune or Group Policy settings.

For more information, see [Windows Defender SmartScreen overview](windows-defender-smartscreen/windows-defender-smartscreen-overview.md).

### Windows Defender Antivirus

Windows Defender Antivirus in Windows 10 uses a multi-pronged approach to improve antimalware:

-   **Cloud-delivered protection** helps detect and block new malware within seconds, even if the malware has never been seen before. The service, available as of Windows 10, version 1703, uses distributed resources and machine learning to deliver protection to endpoints at a rate that is far faster than traditional signature updates.

-   **Rich local context** improves how malware is identified. Windows 10 informs Windows Defender Antivirus not only about content like files and processes but also where the content came from, where it has been stored, and more. The information about source and history enables Windows Defender Antivirus to apply different levels of scrutiny to different content.

-   **Extensive global sensors** help keep Windows Defender Antivirus current and aware of even the newest malware. This is accomplished in two ways: by collecting the rich local context data from end points and by centrally analyzing that data.

-   **Tamper proofing** helps guard Windows Defender Antivirus itself against malware attacks. For example, Windows Defender Antivirus uses Protected Processes, which prevents untrusted processes from attempting to tamper with Windows Defender Antivirus components, its registry keys, and so on. ([Protected Processes](#protected-processes) is described later in this topic.)

-   **Enterprise-level features** give IT pros the tools and configuration options necessary to make Windows Defender Antivirus an enterprise-class antimalware solution.

<!-- Watch the link text for the following links - try to keep it in sync with the actual topic. -->

For more information, see [Windows Defender in Windows 10](windows-defender-antivirus/windows-defender-antivirus-in-windows-10.md) and [Windows Defender Overview for Windows Server](https://technet.microsoft.com/windows-server-docs/security/windows-defender/windows-defender-overview-windows-server).

For information about Microsoft Defender Advanced Threat Protection, a service that helps enterprises to detect, investigate, and respond to advanced and targeted attacks on their networks, see [Microsoft Defender Advanced Threat Protection (ATP)](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp) (resources) and [Microsoft Defender Advanced Threat Protection (ATP)](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) (documentation).

### Data Execution Prevention

Malware depends on its ability to insert a malicious payload into memory with the hope that it will be executed later. Wouldn’t it be great if you could prevent malware from running if it wrote to an area that has been allocated solely for the storage of information?

Data Execution Prevention (DEP) does exactly that, by substantially reducing the range of memory that malicious code can use for its benefit. DEP uses the No eXecute bit on modern CPUs to mark blocks of memory as read-only so that those blocks can’t be used to execute malicious code that may be inserted by means of a vulnerability exploit.

**To use Task Manager to see apps that use DEP**

1.  Open Task Manager: Press Ctrl+Alt+Del and select **Task Manager**, or search the Start screen.

2.  Click **More Details** (if necessary), and then click the **Details** tab.

3.  Right-click any column heading, and then click **Select Columns**.

4.  In the **Select Columns** dialog box, select the last **Data Execution Prevention** check box.

5.  Click **OK**.

You can now see which processes have DEP enabled. 

<!-- This might be a good place to mention the cmdlet that lets you see the same kind of output. -->

![Processes with DEP enabled in Windows 10](images/security-fig5-dep.png)

*Figure 2.&nbsp;&nbsp;Processes on which DEP has been enabled in Windows 10*

You can use Control Panel to view or change DEP settings.

#### To use Control Panel to view or change DEP settings on an individual PC

1.  Open Control Panel, System: click Start, type **Control Panel System**, and press ENTER.

2.  Click **Advanced system settings**, and then click the **Advanced** tab.

3.  In the **Performance** box, click **Settings**.

4.  In **Performance Options**, click the **Data Execution Prevention** tab.

5.  Select an option:

    -   **Turn on DEP for essential Windows programs and services only**

    -   **Turn on DEP for all programs and services except those I select**. If you choose this option, use the **Add** and **Remove** buttons to create the list of exceptions for which DEP will not be turned on.

#### To use Group Policy to control DEP settings

You can use the Group Policy setting called **Process Mitigation Options** to control DEP settings. A few applications have compatibility problems with DEP, so be sure to test for your environment. To use the Group Policy setting, see [Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md).

### Structured Exception Handling Overwrite Protection

Structured Exception Handling Overwrite Protection (SEHOP) helps prevent attackers from being able to use malicious code to exploit the [Structured Exception Handler](https://msdn.microsoft.com/library/windows/desktop/ms680657(v=vs.85).aspx) (SEH), which is integral to the system and allows (non-malicious) apps to handle exceptions appropriately. Because this protection mechanism is provided at run-time, it helps to protect applications regardless of whether they have been compiled with the latest improvements.

You can use the Group Policy setting called **Process Mitigation Options** to control the SEHOP setting. A few applications have compatibility problems with SEHOP, so be sure to test for your environment. To use the Group Policy setting, see [Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md).

### Address Space Layout Randomization

One of the most common techniques used to gain access to a system is to find a vulnerability in a privileged process that is already running, guess or find a location in memory where important system code and data have been placed, and then overwrite that information with a malicious payload. Any malware that could write directly to the system memory could simply overwrite it in well-known and predictable locations.

Address Space Layout Randomization (ASLR) makes that type of attack much more difficult because it randomizes how and where important data is stored in memory. With ASLR, it is more difficult for malware to find the specific location it needs to attack. Figure 3 illustrates how ASLR works by showing how the locations of different critical Windows components can change in memory between restarts.

![ASLR at work](images/security-fig4-aslr.png)

**Figure 3.&nbsp;&nbsp;ASLR at work**

Windows 10 applies ASLR holistically across the system and increases the level of entropy many times compared with previous versions of Windows to combat sophisticated attacks such as heap spraying. 64-bit system and application processes can take advantage of a vastly increased memory space, which makes it even more difficult for malware to predict where Windows 10 stores vital data. When used on systems that have TPMs, ASLR memory randomization will be increasingly unique across devices, which makes it even more difficult for a successful exploit that works on one system to work reliably on another.

You can use the Group Policy setting called **Process Mitigation Options** to control ASLR settings (“Force ASLR” and “Bottom-up ASLR”), as described in [Override Process Mitigation Options to help enforce app-related security policies](override-mitigation-options-for-app-related-security-policies.md).

## Mitigations that are built in to Windows 10

Windows 10 provides many threat mitigations to protect against exploits that are built into the operating system and need no configuration within the operating system. The table that follows describes some of these mitigations.

Control Flow Guard (CFG) is a mitigation that does not need configuration within the operating system, but does require that an application developer configure the mitigation into the application when it’s compiled. CFG is built into Microsoft Edge, IE11, and other areas in Windows 10, and can be built into many other applications when they are compiled.

### Table 3   Windows 10 mitigations to protect against memory exploits – no configuration needed

| Mitigation and corresponding threat | Description |
|---|---|
| **SMB hardening for SYSVOL and NETLOGON shares**<br>helps mitigate<br>man-in-the-middle attacks | Client connections to the Active Directory Domain Services default SYSVOL and NETLOGON shares on domain controllers now require SMB signing and mutual authentication (such as Kerberos).<br><br>**More information**: [SMB hardening improvements for SYSVOL and NETLOGON shares](#smb-hardening-improvements-for-sysvol-and-netlogon-shares), later in this topic. |
| **Protected Processes**<br>help prevent one process<br>from tampering with another<br>process | With the Protected Processes feature, Windows 10 prevents untrusted processes from interacting or tampering with those that have been specially signed.<br><br>**More information**: [Protected Processes](#protected-processes), later in this topic. |
| **Universal Windows apps protections**<br>screen downloadable<br>apps and run them in<br>an AppContainer sandbox | Universal Windows apps are carefully screened before being made available, and they run in an AppContainer sandbox with limited privileges and capabilities.<br><br>**More information**: [Universal Windows apps protections](#universal-windows-apps-protections), later in this topic. |
| **Heap protections**<br>help prevent<br>exploitation of the heap | Windows 10 includes protections for the heap, such as the use of internal data structures which help protect against corruption of memory used by the heap.<br><br>**More information**: [Windows heap protections](#windows-heap-protections), later in this topic. |
| **Kernel pool protections**<br>help prevent<br>exploitation of pool memory<br>used by the kernel | Windows 10 includes protections for the pool of memory used by the kernel. For example, safe unlinking protects against pool overruns that are combined with unlinking operations that can be used to create an attack.<br><br>**More information**: [Kernel pool protections](#kernel-pool-protections), later in this topic. |
| **Control Flow Guard**<br>helps mitigate exploits<br>that are based on<br>flow between code locations<br>in memory | Control Flow Guard (CFG) is a mitigation that requires no configuration within the operating system, but instead is built into software when it’s compiled. It is built into Microsoft Edge, IE11, and other areas in Windows 10. CFG can be built into applications written in C or C++, or applications compiled using Visual Studio 2015.<br>For such an application, CFG can detect an attacker’s attempt to change the intended flow of code. If this occurs, CFG terminates the application. You can request software vendors to deliver Windows applications compiled with CFG enabled.<br><br>**More information**: [Control Flow Guard](#control-flow-guard), later in this topic. |
| **Protections built into Microsoft Edge** (the browser)<br>helps mitigate multiple<br>threats | Windows 10 includes an entirely new browser, Microsoft Edge, designed with multiple security improvements.<br><br>**More information**: [Microsoft Edge and Internet Explorer 11](#microsoft-edge-and-internet-explorer-11), later in this topic. |

### SMB hardening improvements for SYSVOL and NETLOGON shares

In Windows 10 and Windows Server 2016, client connections to the Active Directory Domain Services default SYSVOL and NETLOGON shares on domain controllers require Server Message Block (SMB) signing and mutual authentication (such as Kerberos). This reduces the likelihood of man-in-the-middle attacks. If SMB signing and mutual authentication are unavailable, a computer running Windows 10 or Windows Server 2016 won’t process domain-based Group Policy and scripts.

> [!NOTE]
> The registry values for these settings aren’t present by default, but the hardening rules still apply until overridden by Group Policy or other registry values. For more information on these security improvements, (also referred to as UNC hardening), see  [Microsoft Knowledge Base article 3000483](https://support.microsoft.com/help/3000483/ms15-011-vulnerability-in-group-policy-could-allow-remote-code-execution-february-10,-2015) and [MS15-011 & MS15-014: Hardening Group Policy](https://blogs.technet.microsoft.com/srd/2015/02/10/ms15-011-ms15-014-hardening-group-policy/).

### Protected Processes

Most security controls are designed to prevent the initial infection point. However, despite all the best preventative controls, malware might eventually find a way to infect the system. So, some protections are built to place limits on malware that gets on the device. Protected Processes creates limits of this type.

With Protected Processes, Windows 10 prevents untrusted processes from interacting or tampering with those that have been specially signed. Protected Processes defines levels of trust for processes. Less trusted processes are prevented from interacting with and therefore attacking more trusted processes. Windows 10 uses Protected Processes more broadly across the operating system, and as in Windows 8.1, implements them in a way that can be used by 3rd party anti-malware vendors, as described in [Protecting Anti-Malware Services](https://msdn.microsoft.com/library/windows/desktop/dn313124(v=vs.85).aspx). This helps make the system and antimalware solutions less susceptible to tampering by malware that does manage to get on the system.

### Universal Windows apps protections

When users download Universal Windows apps from the Microsoft Store, it’s unlikely that they will encounter malware because all apps go through a careful screening process before being made available in the store. Apps that organizations build and distribute through sideloading processes will need to be reviewed internally to ensure that they meet organizational security requirements.

Regardless of how users acquire Universal Windows apps, they can use them with increased confidence. Universal Windows apps run in an AppContainer sandbox with limited privileges and capabilities. For example, Universal Windows apps have no system-level access, have tightly controlled interactions with other apps, and have no access to data unless the user explicitly grants the application permission.

In addition, all Universal Windows apps follow the security principle of least privilege. Apps receive only the minimum privileges they need to perform their legitimate tasks, so even if an attacker exploits an app, the damage the exploit can do is severely limited and should be contained within the sandbox. The Microsoft Store displays the exact capabilities the app requires (for example, access to the camera), along with the app’s age rating and publisher.

### Windows heap protections

The *heap* is a location in memory that Windows uses to store dynamic application data. Windows 10 continues to improve on earlier Windows heap designs by further mitigating the risk of heap exploits that could be used as part of an attack.

Windows 10 has several important improvements to the security of the heap:

-   **Heap metadata hardening** for internal data structures that the heap uses, to improve protections against memory corruption.

-   **Heap allocation randomization**, that is, the use of randomized locations and sizes for heap memory allocations, which makes it more difficult for an attacker to predict the location of critical memory to overwrite. Specifically, Windows 10 adds a random offset to the address of a newly allocated heap, which makes the allocation much less predictable.

-   **Heap guard pages** before and after blocks of memory, which work as tripwires. If an attacker attempts to write past a block of memory (a common technique known as a buffer overflow), the attacker will have to overwrite a guard page. Any attempt to modify a guard page is considered a memory corruption, and Windows 10 responds by instantly terminating the app.

### Kernel pool protections

The operating system kernel in Windows sets aside two pools of memory, one that remains in physical memory (“nonpaged pool”) and one that can be paged in and out of physical memory (“paged pool”). There are many types of attacks that have been attempted against these pools, such as process quota pointer encoding; lookaside, delay free, and pool page cookies; and PoolIndex bounds checks. Windows 10 has multiple “pool hardening” protections, such as integrity checks, that help protect the kernel pool against such attacks.

In addition to pool hardening, Windows 10 includes other kernel hardening features:

-   **Kernel DEP** and **Kernel ASLR**: Follow the same principles as [Data Execution Prevention](#data-execution-prevention) and [Address Space Layout Randomization](#address-space-layout-randomization), described earlier in this topic.

-   **Font parsing in AppContainer:** Isolates font parsing in an [AppContainer sandbox](https://msdn.microsoft.com/library/windows/desktop/mt595898(v=vs.85).aspx).

-   **Disabling of NT Virtual DOS Machine (NTVDM)**: The old NTVDM kernel module (for running 16-bit applications) is disabled by default, which neutralizes the associated vulnerabilities. (Enabling NTVDM decreases protection against Null dereference and other exploits.)

-   **Supervisor Mode Execution Prevention (SMEP)**: Helps prevent the kernel (the “supervisor”) from executing code in user pages, a common technique used by attackers for local kernel elevation of privilege (EOP). This requires processor support found in Intel Ivy Bridge or later processors, or ARM with PXN support.

-   **Safe unlinking:** Helps protect against pool overruns that are combined with unlinking operations to create an attack. Windows 10 includes global safe unlinking, which extends heap and kernel pool safe unlinking to all usage of LIST\_ENTRY and includes the “FastFail” mechanism to enable rapid and safe process termination.

-   **Memory reservations**: The lowest 64 KB of process memory is reserved for the system. Apps are not allowed to allocate that portion of the memory. This makes it more difficult for malware to use techniques such as “NULL dereference” to overwrite critical system data structures in memory.

### Control Flow Guard

When applications are loaded into memory, they are allocated space based on the size of the code, requested memory, and other factors. When an application begins to execute code, it calls additional code located in other memory addresses. The relationships between the code locations are well known—they are written in the code itself—but previous to Windows 10, the flow between these locations was not enforced, which gave attackers the opportunity to change the flow to meet their needs.

This kind of threat is mitigated in Windows 10 through the Control Flow Guard (CFG) feature. When a trusted application that was compiled to use CFG calls code, CFG verifies that the code location called is trusted for execution. If the location is not trusted, the application is immediately terminated as a potential security risk.

An administrator cannot configure CFG; rather, an application developer can take advantage of CFG by configuring it when the application is compiled. Consider asking application developers and software vendors to deliver trustworthy Windows applications compiled with CFG enabled. For example, it can be enabled for applications written in C or C++, or applications compiled using Visual Studio 2015. For information about enabling CFG for a Visual Studio 2015 project, see [Control Flow Guard](https://msdn.microsoft.com/library/windows/desktop/mt637065(v=vs.85).aspx).

Of course, browsers are a key entry point for attacks, so Microsoft Edge, IE, and other Windows features take full advantage of CFG.

### Microsoft Edge and Internet Explorer 11

Browser security is a critical component of any security strategy, and for good reason: the browser is the user’s interface to the Internet, an environment with many malicious sites and content waiting to attack. Most users cannot perform at least part of their job without a browser, and many users are completely reliant on one. This reality has made the browser the common pathway from which malicious hackers initiate their attacks.

All browsers enable some amount of extensibility to do things beyond the original scope of the browser. Two common examples of this are Flash and Java extensions that enable their respective applications to run inside a browser. Keeping Windows 10 secure for web browsing and applications, especially for these two content types, is a priority.

Windows 10 includes an entirely new browser, Microsoft Edge. Microsoft Edge is more secure in multiple ways, especially:

-   **Smaller attack surface; no support for non-Microsoft binary extensions**. Multiple browser components with vulnerable attack surfaces have been removed from Microsoft Edge. Components that have been removed include legacy document modes and script engines, Browser Helper Objects (BHOs), ActiveX controls, and Java. However, Microsoft Edge supports Flash content and PDF viewing by default through built-in extensions.

-   **Runs 64-bit processes.** A 64-bit PC running an older version of Windows often runs in 32-bit compatibility mode to support older and less secure extensions. When Microsoft Edge runs on a 64-bit PC, it runs only 64-bit processes, which are much more secure against exploits.

-   **Includes Memory Garbage Collection (MemGC)**. This helps protect against use-after-free (UAF) issues.

-   **Designed as a Universal Windows app.** Microsoft Edge is inherently compartmentalized and runs in an AppContainer that sandboxes the browser from the system, data, and other apps. IE11 on Windows 10 can also take advantage of the same AppContainer technology through Enhanced Protect Mode. However, because IE11 can run ActiveX and BHOs, the browser and sandbox are susceptible to a much broader range of attacks than Microsoft Edge.

-   **Simplifies security configuration tasks.** Because Microsoft Edge uses a simplified application structure and a single sandbox configuration, there are fewer required security settings. In addition, Microsoft Edge default settings align with security best practices, which makes it more secure by default.

In addition to Microsoft Edge, Microsoft includes IE11 in Windows 10, primarily for backwards-compatibility with websites and with binary extensions that do not work with Microsoft Edge. It should not be configured as the primary browser but rather as an optional or automatic switchover. We recommend using Microsoft Edge as the primary web browser because it provides compatibility with the modern web and the best possible security.

For sites that require IE11 compatibility, including those that require binary extensions and plug ins, enable Enterprise mode and use the Enterprise Mode Site List to define which sites have the dependency. With this configuration, when Microsoft Edge identifies a site that requires IE11, users will automatically be switched to IE11.

### Functions that software vendors can use to build mitigations into apps

Some of the protections available in Windows 10 are provided through functions that can be called from apps or other software. Such software is less likely to provide openings for exploits. If you are working with a software vendor, you can request that they include these security-oriented functions in the application. The following table lists some types of mitigations and the corresponding security-oriented functions that can be used in apps.

> [!NOTE]
> Control Flow Guard (CFG) is also an important mitigation that a developer can include in software when it is compiled. For more information, see [Control Flow Guard](#control-flow-guard), earlier in this topic.

### Table 4   Functions available to developers for building mitigations into apps

| Mitigation  | Function  |
|-------------|-----------|
| LoadLib image loading restrictions  | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROCESS\_CREATION\_MITIGATION\_POLICY\_IMAGE\_LOAD\_NO\_REMOTE\_ALWAYS\_ON\] |
| MemProt dynamic code restriction    | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROCESS\_CREATION\_MITIGATION\_POLICY\_PROHIBIT\_DYNAMIC\_CODE\_ALWAYS\_ON\] |
| Child Process Restriction to restrict the ability to create child processes      | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROC\_THREAD\_ATTRIBUTE\_CHILD\_PROCESS\_POLICY\] |
| Code Integrity Restriction to restrict image loading                             | [SetProcessMitigationPolicy function](https://msdn.microsoft.com/library/windows/desktop/hh769088(v=vs.85).aspx)<br>\[ProcessSignaturePolicy\] |
| Win32k System Call Disable Restriction to restrict ability to use NTUser and GDI | [SetProcessMitigationPolicy function](https://msdn.microsoft.com/library/windows/desktop/hh769088(v=vs.85).aspx)<br>\[ProcessSystemCallDisablePolicy\] |
| High Entropy ASLR for up to 1TB of variance in memory allocations                | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROCESS\_CREATION\_MITIGATION\_POLICY\_HIGH\_ENTROPY\_ASLR\_ALWAYS\_ON\] |
| Strict handle checks to raise immediate exception upon bad handle reference      | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROCESS\_CREATION\_MITIGATION\_POLICY\_STRICT\_HANDLE\_CHECKS\_ALWAYS\_ON\]    |
| Extension point disable to block the use of certain third-party extension points | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROCESS\_CREATION\_MITIGATION\_POLICY\_EXTENSION\_POINT\_DISABLE\_ALWAYS\_ON\] |
| Heap terminate on corruption to protect the system against a corrupted heap      | [UpdateProcThreadAttribute function](https://msdn.microsoft.com/library/windows/desktop/ms686880(v=vs.85).aspx)<br>\[PROCESS\_CREATION\_MITIGATION\_POLICY\_HEAP\_TERMINATE\_ALWAYS\_ON\]  |

## Understanding Windows 10 in relation to the Enhanced Mitigation Experience Toolkit 

You might already be familiar with the [Enhanced Mitigation Experience Toolkit (EMET)](https://support.microsoft.com/kb/2458544), which has since 2009 offered a variety of exploit mitigations, and an interface for configuring those mitigations. You can use this section to understand how EMET mitigations relate to those in Windows 10. Many of EMET’s mitigations have been built into Windows 10, some with additional improvements. However, some EMET mitigations carry high performance cost, or appear to be relatively ineffective against modern threats, and therefore have not been brought into Windows 10.

Because many of EMET’s mitigations and security mechanisms already exist in Windows 10 and have been improved, particularly those assessed to have high effectiveness at mitigating known bypasses, version 5.5*x* has been announced as the final major version release for EMET (see [Enhanced Mitigation Experience Toolkit](https://technet.microsoft.com/security/jj653751)).

The following table lists EMET features in relation to Windows 10 features.

### Table 5   EMET features in relation to Windows 10 features

<table>
<thead>
<tr class="header">
<th><strong>Specific EMET features</strong></th>
<th><strong>How these EMET features map<br />
to Windows 10 features</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ul>
<li><p>DEP</p></li>
<li><p>SEHOP</p></li>
<li><p>ASLR (Force ASLR, Bottom-up ASLR)</p></li>
</ul></td>
<td><p>DEP, SEHOP and ASLR are included in Windows 10 as configurable features. See <a href="#table-2">Table 2</a>, earlier in this topic.</p>
<p>You can install the ProcessMitigations PowerShell module to convert your EMET settings for these features into policies that you can apply to Windows 10.</p></td>
</tr>
<tr class="even">
<td><ul>
<li><p>Load Library Check (LoadLib)</p></li>
<li><p>Memory Protection Check (MemProt)</p></li>
</ul></td>
<td>LoadLib and MemProt are supported in Windows 10, for all applications that are written to use these functions. See <a href="#functions-that-software-vendors-can-use-to-build-mitigations-into-apps">Table 4</a>, earlier in this topic.</td>
</tr>
<tr class="odd">
<td><ul>
<li><p>Null Page</p></li>
</ul></td>
<td>Mitigations for this threat are built into Windows 10, as described in the “Memory reservations” item in <a href="#kernel-pool-protections">Kernel pool protections</a>, earlier in this topic.</td>
</tr>
<tr class="even">
<td><ul>
<li><p>Heap Spray</p></li>
<li><p>EAF</p></li>
<li><p>EAF+</p></li>
</ul></td>
<td>Windows 10 does not include mitigations that map specifically to these EMET features because they have low impact in the current threat landscape, and do not significantly increase the difficulty of exploiting vulnerabilities. Microsoft remains committed to monitoring the security environment as new exploits appear and taking steps to harden the operating system against them.</td>
</tr>
<tr class="odd">
<td><ul>
<li><p>Caller Check</p></li>
<li><p>Simulate Execution Flow</p></li>
<li><p>Stack Pivot</p></li>
<li><p>Deep Hooks (an ROP “Advanced Mitigation”)</p></li>
<li><p>Anti Detours (an ROP “Advanced Mitigation”)</p></li>
<li><p>Banned Functions (an ROP “Advanced Mitigation”)</p></li>
</ul></td>
<td>Mitigated in Windows 10 with applications compiled with Control Flow Guard, as described in <a href="#control-flow-guard">Control Flow Guard</a>, earlier in this topic.</td>
</tr>
</tbody>
</table>

### Converting an EMET XML settings file into Windows 10 mitigation policies

One of EMET’s strengths is that it allows you to import and export configuration settings for EMET mitigations as an XML settings file for straightforward deployment. To generate mitigation policies for Windows 10 from an EMET XML settings file, you can install the ProcessMitigations PowerShell module. In an elevated PowerShell session, run this cmdlet:

```powershell
Install-Module -Name ProcessMitigations
```

The Get-ProcessMitigation cmdlet gets the current mitigation settings from the registry or from a running process, or it can save all settings to an XML file. 

To get the current settings on all running instances of notepad.exe:

```powershell
Get-ProcessMitigation -Name notepad.exe -RunningProcess
```

To get the current settings in the registry for notepad.exe:

```powershell
Get-ProcessMitigation -Name notepad.exe
```

To get the current settings for the running process with pid 1304:

```powershell
Get-ProcessMitigation -Id 1304
```

To get the all process mitigation settings from the registry and save them to the xml file settings.xml:

```powershell
Get-ProcessMitigation -RegistryConfigFilePath settings.xml
```

The Set-ProcessMitigation cmdlet can enable and disable process mitigations or set them in bulk from an XML file.

To get the current process mitigation for "notepad.exe" from the registry and then enable MicrosoftSignedOnly and disable MandatoryASLR:

```powershell
Set-ProcessMitigation -Name Notepad.exe -Enable MicrosoftSignedOnly -Disable MandatoryASLR
```

To set the process mitigations from an XML file (which can be generated from get-ProcessMitigation -RegistryConfigFilePath settings.xml):

```powershell
Set-ProcessMitigation -PolicyFilePath settings.xml
```

To set the system default to be MicrosoftSignedOnly:

```powershell
Set-ProcessMitigation -System -Enable MicrosoftSignedOnly
```

The ConvertTo-ProcessMitigationPolicy cmdlet converts mitigation policy file formats. The syntax is:

```powershell
ConvertTo-ProcessMitigationPolicy -EMETFilePath <String> -OutputFilePath <String> [<CommonParameters>]
```

Examples:

-   **Convert EMET settings to Windows 10 settings**: You can run ConvertTo-ProcessMitigationPolicy and provide an EMET XML settings file as input, which will generate a result file of Windows 10 mitigation settings. For example:
    
    ```powershell
    ConvertTo-ProcessMitigationPolicy -EMETFilePath policy.xml -OutputFilePath result.xml
    ```

-   **Audit and modify the converted settings (the output file)**: Additional cmdlets let you apply, enumerate, enable, disable, and save settings in the output file. For example, this cmdlet enables SEHOP and disables MandatoryASLR and DEPATL registry settings for Notepad:

    ```powershell
    Set-ProcessMitigation -Name notepad.exe -Enable SEHOP -Disable MandatoryASLR,DEPATL
    ```

-   **Convert Attack surface reduction (ASR) settings to a Code Integrity policy file**: If the input file contains any settings for EMET’s Attack surface reduction (ASR) mitigation, the converter will also create a Code Integrity policy file. In this case, you can complete the merging, auditing, and deployment process for the Code Integrity policy, as described in [Deploy Device Guard: deploy code integrity policies](/windows/device-security/device-guard/deploy-device-guard-deploy-code-integrity-policies). This will enable protections on Windows 10 equivalent to EMET’s ASR protections.

-   **Convert Certificate Trust settings to enterprise certificate pinning rules**: If you have an EMET “Certificate Trust” XML file (pinning rules file), you can also use ConvertTo-ProcessMitigationPolicy to convert the pinning rules file into an enterprise certificate pinning rules file. Then you can finish enabling that file as described in [Enterprise Certificate Pinning](/windows/access-protection/enterprise-certificate-pinning). For example:

    ```powershell
    ConvertTo-ProcessMitigationPolicy -EMETfilePath certtrustrules.xml -OutputFilePath enterprisecertpinningrules.xml
    ```

#### EMET-related products

Microsoft Consulting Services (MCS) and Microsoft Support/Premier Field Engineering (PFE) offer a range of options for EMET, support for EMET, and EMET-related reporting and auditing products such as the EMET Enterprise Reporting Service (ERS). For any enterprise customers who use such products today or who are interested in similar capabilities, we recommend evaluating [Microsoft Defender Advanced Threat Protection](microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md) (ATP).

## Related topics

- [Security and Assurance in Windows Server 2016](https://technet.microsoft.com/windows-server-docs/security/security-and-assurance)
- [Microsoft Defender Advanced Threat Protection (ATP) - resources](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp)
- [Microsoft Defender Advanced Threat Protection (ATP) - documentation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection)
- [Exchange Online Advanced Threat Protection Service Description](https://technet.microsoft.com/library/exchange-online-advanced-threat-protection-service-description.aspx)
- [Office 365 Advanced Threat Protection](https://products.office.com/en-us/exchange/online-email-threat-protection)
- [Microsoft Malware Protection Center](https://www.microsoft.com/en-us/security/portal/mmpc/default.aspx)


