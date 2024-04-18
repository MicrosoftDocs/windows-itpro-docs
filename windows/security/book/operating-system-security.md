---
title: Operating System security
description: Windows 11 security book - Operating System security chapter.
ms.topic: overview
ms.date: 04/09/2024
---

# Operating System security

:::image type="content" source="images\operating-system-on.png" alt-text="Diagram of containng a list of security features." lightbox="images\operating-system.png" border="false":::

Windows 11 is the most secure Windows yet with extensive security measures in the operating system designed to help keep devices, identities, and information safe. These measures include built-in advanced encryption and data protection, robust network system security, and intelligent safeguards against ever-evolving viruses and threats.

## System security

:::image type="icon" source="images/go-to-section.svg" border="false"::: **Go to section:**

- [Trusted Boot (Secure Boot + Measured Boot)](#trusted-boot-secure-boot--measured-boot)
- [Cryptography](#cryptography)
- [Certificates](#certificates)
- [Code signing and integrity](#code-signing-and-integrity)
- [Device health attestation](#device-health-attestation)
- [Windows security policy settings and auditing](#windows-security-policy-settings-and-auditing)
- [Assigned Access](#assigned-access)
- [Config Refresh](#config-refresh)
- [Windows security settings](#windows-security-settings)

### Trusted Boot (Secure Boot + Measured Boot)

Windows 11 requires all PCs to use Unified Extensible Firmware Interface (UEFI)'s Secure Boot feature. When a Windows 11 device starts, Secure Boot and Trusted Boot work together to prevent malware and corrupted components from loading. Secure Boot provides initial protection, then Trusted Boot picks up the process.

Secure Boot makes a safe and trusted path from the Unified Extensible Firmware Interface (UEFI) through the Windows kernel's Trusted Boot sequence. Malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes throughout the boot sequence between the UEFI, bootloader, kernel, and application environments.

To reduce the risk of firmware rootkits, the PC verifies that firmware is digitally signed as it begins the boot process. Then Secure Boot checks the OS bootloader's digital signature as well as all code that runs prior to the operating system starting to ensure the signature and code are uncompromised and trusted by the Secure Boot policy.

Trusted Boot picks up the process that begins with Secure Boot. The Windows bootloader verifies the digital signature of the Windows kernel before loading it. The Windows kernel, in turn, verifies every other component of the Windows startup process, including boot drivers, startup files, and any antimalware product's early-launch antimalware (ELAM) driver. If any of these files have been tampered with, the bootloader detects the problem and refuses to load the corrupted component. Often, Windows can automatically repair the corrupted component, restoring the integrity of Windows and allowing the PC to start normally.

Tampering or malware attacks on the Windows boot sequence are blocked by the signature enforcement handshakes between the UEFI, bootloader, kernel, and application environments.

For more information about these features and how they help prevent rootkits and bootkits from loading during the startup process, see [Secure the Windows boot process](../operating-system-security/system-security/secure-the-windows-10-boot-process.md)

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Secure Boot and Trusted Boot](../operating-system-security/system-security/trusted-boot.md)

### Cryptography

Cryptography is designed to protect user and system data. The cryptography stack in Windows 11 extends from the chip to the cloud, enabling Windows, applications, and services to protect system and user secrets. For example, data can be encrypted so that only a specific reader with a unique key can read it. As a basis for data security, cryptography helps prevent anyone except the intended recipient from reading data, performs integrity checks to ensure data is free of tampering, and authenticates identity to ensure that communication is secure. Windows 11 cryptography is certified to meet the Federal Information Processing Standard (FIPS) 140. FIPS 140 certification ensures that US government-approved algorithms are correctly implemented.

Learn more: FIPS 140 validation

Windows cryptographic modules provide low-level primitives such as:

- Random number generators (RNG)
- Support for AES 128/256 with XTS, ECB, CBC, CFB, CCM, and GCM modes of operation; RSA and DSA 2048, 3072, and 4096 key sizes; ECDSA over curves P-256, P-384, P-521
- Hashing (support for SHA1, SHA-256, SHA-384, and SHA-512)
- Signing and verification (padding support for OAEP, PSS, and PKCS1)
- Key agreement and key derivation (support for ECDH over NIST-standard prime curves P-256, P-384, P-521 and HKDF)

Application developers can use these cryptographic modules to perform low-level cryptographic operations (Bcrypt), key storage operations (NCrypt), protect static data (DPAPI), and securely share secrets (DPAPI-NG).

Learn more: Cryptography and certificate management

Developers can access the modules on Windows through the Cryptography Next Generation API (CNG), which is powered by Microsoft's open-source cryptographic library, SymCrypt. SymCrypt supports complete transparency through its open-source code. In addition, SymCrypt offers performance optimization for cryptographic operations by taking advantage of assembly and hardware acceleration when available.

SymCrypt is part of Microsoft's commitment to transparency, which includes the global Microsoft Government Security Program that aims to provide the confidential security information and resources people need to trust Microsoft's products and services. The program offers controlled access to source code, threat and vulnerability information
exchange, opportunities to engage with technical content about Microsoft's products and services, and access to five globally distributed Transparency Centers.

### Certificates

To help safeguard and authenticate information, Windows provides comprehensive support for certificates and certificate management. The built-in certificate management command-line utility (certmgr.exe) or MMC snap-in (certmgr.msc) can be used to view and manage certificates, certificate trust lists (CTLs), and
certificate revocation lists (CRLs). Whenever a certificate is used in Windows, we validate that the leaf certificate and all the certificates in its chain of trust have not been revoked or compromised. The CTLs and CRLs on the machine are used as a reference for PKI trust and are updated monthly by the Microsoft Trusted Root program. If a trusted certificate or root is revoked, all global devices will be updated, meaning users can trust that Windows will automatically protect against vulnerabilities in public key infrastructure. For cloud and enterprise deployments, Windows also offers users the ability to auto-enroll and renew certificates in Active Directory with Group Policy to reduce the risk of potential outages due to certificate expiration or misconfiguration. Additionally, enterprise certificate pinning can be used to help reduce man-in-the-middle attacks by enabling users to protect their internal domain names from chaining to unwanted certificates. A web application's server authentication certificate chain is checked to ensure it matches a restricted set of certificate authorities. Any web application triggering a name mismatch will start event logging and prevent user access from Microsoft Edge.

### Code signing and integrity

To ensure that Windows files have not been tampered with, the Windows Code Integrity process verifies the signature of each file in Windows. Code signing is core to establishing the integrity of firmware, drivers, and software across the Windows platform. Code signing creates a digital signature by encrypting the hash of the file with the private key portion of a code-signing certificate and embedding the signature into the file. The Windows code integrity process verifies the signed file by decrypting the signature to check the integrity of the file and confirm that it is from a reputable publisher, ensuring that the file hasn't been tampered with.

The digital signature is evaluated across the Windows environment on Windows boot code, Windows kernel code, and Windows user mode applications. Secure Boot and Code Integrity verify the signature on bootloaders, Option ROMs, and other boot components to ensure that it is trusted and from a reputable publisher. For drivers not published by Microsoft, Kernel Code Integrity verifies the signature on kernel drivers and requires that drivers be signed by Windows or certified by the Windows Hardware Compatibility Program (WHCP). This program ensures that third-party drivers are compatible with various hardware and Windows and that the drivers are from vetted driver developers.

### Device health attestation

The Windows device health attestation process supports a Zero Trust paradigm that shifts the focus from static, network-based perimeters to users, assets, and resources. The attestation process confirms the device, firmware, and boot process are in a good state and have not been tampered with before they can access corporate resources. These
determinations are made with data stored in the TPM, which provides a secure root-of-trust. The information is sent to an attestation service such as Azure Attestation to verify that the device is in a trusted state. Then a modern device management (MDM) tool like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> reviews device health and connects this information with Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> for conditional access.

Windows includes many security features to help protect users from malware and attacks. However, security components are trustworthy only if the platform boots as expected and is not tampered with. As noted above, Windows relies on Unified Extensible Firmware Interface (UEFI) Secure Boot, ELAM, DRTM, Trusted Boot, and other low-level hardware and firmware security features to protect your PC from attacks. From the moment you power on your PC until your antimalware starts, Windows is backed with the appropriate hardware configurations that help keep you safe. Measured Boot, implemented by bootloaders and BIOS, verifies and cryptographically records each step of the boot in a chained manner. These events are bound to the TPM, that functions as a hardware root-of-trust. Remote attestation is the mechanism by which these events are read and verified by a service to provide a verifiable, unbiased, and tamper-resilient report. Remote attestation is the trusted auditor of your system's boot, allowing reliant parties to bind trust to the device and its security.

A summary of the steps involved in attestation and Zero-Trust on a Windows device are as follows:

- During each step of the boot process - such as a file load, update of special variables, and more - information such as file hashes and signature(s) are measured in the TPM Platform Configuration Register (PCRs). The measurements are bound by a Trusted Computing Group specification that dictates which events can be recorded and the format of each event. The data provides important information about device security from the moment it powers on
- Once Windows has booted, the attestor (or verifier) requests the TPM get the measurements stored in its PCRs alongside the Measured Boot log. Together, these form the attestation evidence that's sent to the Microsoft Azure Attestation Service
- The TPM is verified by using the keys or cryptographic material available on the chipset with an Azure Certificate Service
- The above information is sent to the Azure Attestation Service to verify that the device is in a trusted state.

Learn more: Control the health of Windows devices

### Windows security policy settings and auditing

Security policy settings are a critical part of your overall security strategy. Windows provides a robust set of security setting policies that IT administrators can use to help protect Windows devices and other resources in your organization. Security policies settings are rules you can configure on a device, or multiple devices, to control:

- User authentication to a network or device
- Resources that users are permitted to access
- Whether to record a user or group's actions in the event log
- Membership in a group

Security auditing is one of the most powerful tools that you can use to maintain the integrity of your network and assets. Auditing can help identify attacks, network vulnerabilities, and attacks against high-value targets. You can specify categories of security-related events to create an audit policy tailored to the needs of your organization.

All auditing categories are disabled when Windows is first installed. Before enabling them, follow these steps to create an effective security auditing policy:

1. Identify your most critical resources and activities.
1. Identify the audit settings you need to track them.
1. Assess the advantages and potential costs associated with each resource or setting.
1. Test these settings to validate your choices.
1. Develop plans for deploying and managing your audit policy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

-
- Security policy settings
- Security auditing

### Assigned Access

With Assigned Access, Windows devices restrict functionality to pre-selected applications depending on the user and keep individual identities separate, which is ideal for public-facing or shared devices. Configuring a device in Kiosk Mode is a straightforward process. You can do this locally on the device or remotely using modern device management.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows kiosks and restricted user experiences](/windows/configuration/assigned-access)

### Config Refresh

With traditional Group Policy, policies were refreshed on a PC when a user signed in and every 90 minutes by default. Administrators could adjust that timing to be shorter to ensure that the PC's policies were compliant with the management settings set by IT.

By contrast, with an MDM solution like Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>, policies are refreshed when a user signs in and then at eight-hour intervals by default. But as more available group policies were implemented through MDM, one remaining gap was the longer period between the reapplication of a changed policy.

Config Refresh allows settings in the Policy configuration service provider (CSP) that drift due to misconfiguration, registry edits, or malicious software on a PC to be reset to the value the administrator intended every 90 minutes by default. It is configurable to refresh every 30 minutes if desired. The Policy CSP covers hundreds of settings that were traditionally set with Group Policy and are now set through MDM.

Config Refresh can also be *paused* for a configurable period of time, after which it will be reenabled. This is to support scenarios where a helpdesk technician might need to reconfigure a PC for troubleshooting purposes. It can also be resumed at any time by an administrator.

### Windows security settings

Visibility and awareness of device security and health are key to any action taken. The Windows built-in security settings provide an at-a-glance view of the security status and health of your device. These insights help you identify issues and act to make sure you're protected. You can quickly see the status of your virus and threat protection, firewall and network security, device security controls, and more.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows security settings](https://support.microsoft.com/windows/stay-protected-with-windows-security-2ae0363d-0ada-c064-8b56-6a39afb6a963)
- [Windows Security](../operating-system-security/system-security/windows-defender-security-center/windows-defender-security-center.md)

## Encryption and data protection

:::image type="icon" source="images/go-to-section.svg" border="false"::: **Go to section:**

- [BitLocker](#bitlocker)
- [BitLocker To Go](#bitlocker-to-go)
- [Device Encryption](#device-encryption)
- [Encrypted hard drive](#encrypted-hard-drive)
- [Personal data encryption](#personal-data-encryption)
- [Email encryption](#email-encryption)

When people travel with their PCs, their confidential information travels with them. Wherever confidential data is stored, it must be protected against unauthorized access, whether through physical device theft or from malicious applications.

### BitLocker

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers. BitLocker uses the AES algorithm in XTS or CBC mode of operation with 128-bit or 256-bit key length to encrypt data on the volume. Cloud storage on Microsoft OneDrive or Azure<sup>[\[9\]](conclusion.md#footnote9)</sup> can be used to save recovery key content. BitLocker can be managed by any MDM solution such as Microsoft Intune<sup>[\[6\]](conclusion.md#footnote6)</sup>> using a configuration service provider (CSP)<sup>[\[9\]](conclusion.md#footnote9)</sup>. BitLocker provides encryption for the OS, fixed data, and removable data drives (BitLocker To Go), leveraging technologies like Hardware Security Test Interface (HSTI), Modern Standby, UEFI Secure Boot, and TPM. Windows consistently improves data protection by expanding existing options and providing new strategies.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [BitLocker overview](../operating-system-security/data-protection/bitlocker/index.md)

### BitLocker To Go

BitLocker To Go refers to BitLocker Drive Encryption on removable data drives. BitLocker To Go includes the encryption of USB flash drives, SD cards, and external hard disk drives. Drives can be unlocked using a password, certificate on a smart card, or recovery password.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [BitLocker FAQ](../operating-system-security/data-protection/bitlocker/faq.yml)

### Device Encryption

Device Encryption is consumer-level device encryption that cannot be managed. Device Encryption is turned on by default for devices with the right hardware components (for example, TPM 2.0, UEFI Secure Boot, Hardware Security Test Interface, and Modern Standby). However, for a commercial scenario, it is possible for commercial customers to disable Device Encryption in favor of BitLocker Drive Encryption. BitLocker Drive Encryption is manageable through MDM.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Device encryption](../operating-system-security/data-protection/bitlocker/index.md#device-encryption)

### Encrypted hard drive

Encrypted hard drives are a class of hard drives that are self-encrypted at the hardware level and allow for full-disk hardware encryption while being transparent to the device user. These drives combine the security and management benefits provided by BitLocker Drive Encryption with the power of self-encrypting drives.

By offloading the cryptographic operations to hardware, encrypted hard drives increase BitLocker performance and reduce CPU usage and power consumption. Because encrypted hard drives encrypt data quickly, BitLocker deployment can be expanded across enterprise devices with little to no impact on productivity.

Encrypted hard drives enable:

- Smooth performance: Encryption hardware integrated into the drive controller allows the drive to operate at full data rate without performance degradation
- Strong security based in hardware: Encryption is always "on," and the keys for encryption never leave the hard drive. The drive authenticates the user independently from the operating system before it unlocks
- Ease of use: Encryption is transparent to the user, and the user does not need to enable it. Encrypted hard drives are easily erased using an onboard encryption key. There is no need
to re-encrypt data on the drive
- Lower cost of ownership: There is no need for new infrastructure to manage encryption keys since BitLocker leverages your existing infrastructure to store recovery information. Your device operates more efficiently because processor cycles do not need to be used for the encryption process

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Encrypted hard drive](../operating-system-security/data-protection/encrypted-hard-drive.md)

### Personal data encryption

Personal Data Encryption refers to a new user authenticated encryption mechanism used to protect user content. Windows Hello for Business is the modern user authentication mechanism which is used with PDE. Windows Hello for Business, either with PIN or biometrics (face or fingerprint), is used to protect the container which houses the encryption keys used by Personal Data Encryption (PDE). When the user logs in (either after bootup or unlocking after a lock screen), the container gets authenticated to release the keys in the container to decrypt user content.

With the first release of PDE (Windows 11 22H2), the PDE API was available, which when adopted by applications can protect data under the purview of the applications. With the platform release of the next Windows version, PDE for Folders will be released, this feature would require no updates to any applications and protects the contents in the Known Windows Folders from bootup till first login. This reduces the barrier for entry for customers and they will be able to get PDE security as part of the OS.

PDE requires Microsoft Entra ID.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Personal Data Encryption (PDE)](../operating-system-security/data-protection/personal-data-encryption/index.md)

### Email encryption

Email encryption enables users to encrypt outgoing email messages and attachments so that only intended recipients with a digital identification (ID) - also called a certificate - can read them.10 Users can digitally sign a message, which verifies the identity of the sender and ensures the message has not been tampered with.

These encrypted messages can be sent by a user to people within their organization as well as external contacts who have proper encryption certificates.

However, recipients using Windows 11 Mail app can only read encrypted messages if the message is received on their Exchange account and they have corresponding decryption keys. Encrypted messages can be read only by recipients who have a certificate. If an encrypted message is sent to recipients whose encryption certificates are not available, the app will prompt you to remove these recipients before sending the email.

## Network security

:::image type="icon" source="images/go-to-section.svg" border="false"::: **Go to section:**

- [Transport layer security (TLS)](#transport-layer-security-tls)
- [DNS security](#dns-security)
- [Bluetooth protection](#bluetooth-protection)
- [Securing Wi-Fi connections](#securing-wi-fi-connections)
- [5G and eSIM](#5g-and-esim)[Windows Firewall](#windows-firewall)
- [Virtual private networks (VPN)](#virtual-private-networks-vpn)
- [Server Message Block file services](#server-message-block-file-services)

Windows 11 raises the bar for network security, offering comprehensive protection to help people work with confidence from almost anywhere. To help reduce an organization's attack
surface, network protection in Windows prevents people from accessing dangerous IP addresses and domains that may host phishing scams, exploits, and other malicious content.
Using reputation-based services, network protection blocks access to potentially harmful, low-reputation domains and IP addresses.

New DNS and TLS protocol versions strengthen the end-to-end protections needed for applications, web services, and Zero Trust networking. File access adds an untrusted network scenario with Server Message Block over QUIC, as well as new encryption and signing capabilities. Wi-Fi and Bluetooth advancements also provide greater trust in connections to other devices. In addition, VPN and Windows Firewall (previously called Windows Defender Firewall) platforms offer new ways to easily configure and debug software.

In enterprise environments, network protection works best with Microsoft Defender for Endpoint, which provides detailed reporting on protection events as part of larger investigation scenarios.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [How to protect your network](/security/defender-endpoint/network-protection)

### Transport layer security (TLS)

Transport Layer Security (TLS) is the internet's most deployed security protocol, encrypting data in transit to provide a secure communication channel between two endpoints. Windows defaults to the latest protocol versions and strong cipher suites unless policies are in effect to limit them. There are many extensions available, such as client authentication for enhanced server security and session resumption for improved application performance.

TLS 1.3 is the latest version of the protocol and is enabled by default starting with Windows 11 and Windows Server 2022. TLS 1.3 eliminates obsolete cryptographic algorithms, enhances security over older versions, and encrypts as much of the TLS handshake as possible. The handshake is more performant, with one fewer round trip per connection on average, and supports only five strong cipher suites, which provide perfect forward secrecy and reduced operational risk.

Customers using TLS 1.3 (or Windows components that support it, including HTTP.SYS, WinInet, .NET, MsQuic, and more) will get enhanced privacy and lower latencies for their encrypted online connections. Note that if either the client or server does not support TLS 1.3, Windows will fall back to TLS 1.2.

Legacy protocol versions TLS 1.0 and 1.1 are officially deprecated and will be disabled by default in future OS versions only. This change will come to Windows Insider Preview in September 2023. Organizations and application developers are strongly encouraged to begin to identify and remove code dependencies on TLS 1.0/1.1 if they have not done so already.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [TLS/SSL overview (Schannel SSP)](/windows-server/security/tls/tls-ssl-schannel-ssp-overview)
- [TLS 1.0 and TLS 1.1 soon to be disabled in Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/tls-1-0-and-tls-1-1-soon-to-be-disabled-in-windows/bc-p/3894928/emcs_t/S2h8ZW1haWx8dG9waWNfc3Vic2NyaXB0aW9ufExMM0hCN0VURDk3OU9OfDM4OTQ5Mjh8U1VCU0NSSVBUSU9OU3xoSw#M6180)

### DNS security

In Windows 11, the Windows DNS client supports DNS over HTTPS and DNS over TLS, two encrypted DNS protocols. These allow administrators to ensure their devices protect their
name queries from on-path attackers, whether they are passive observers logging browsing behavior or active attackers trying to redirect clients to malicious sites. In a Zero Trust
model where no trust is placed in a network boundary, having a secure connection to a trusted name resolver is required.

Windows 11 provides Group Policy as well as programmatic controls to configure DNS over HTTPS behavior. As a result, IT administrators can extend existing security to adopt new models such as Zero Trust. IT administrators can mandate DNS over HTTPS protocol, ensuring that devices that use insecure DNS will fail to connect to network resources. IT administrators also have the option not to use DNS over HTTPS or DNS over TLS for legacy deployments where network edge appliances are trusted to inspect plain-text DNS traffic. By default, Windows 11 will defer to the local administrator on which resolvers should use encrypted DNS.

Support for DNS encryption integrates with existing Windows DNS configurations such as the Name Resolution Policy Table (NRPT) and the system Hosts file, as well as resolvers specified per network adapter or network profile. The integration helps Windows 11 ensure that the benefits of greater DNS security do not regress existing DNS control mechanisms.

### Bluetooth protection

The number of Bluetooth devices connected to Windows 11 continues to increase. Windows users connect their Bluetooth headsets, mice, keyboards, and other accessories and improve their day-to-day PC experience by enjoying streaming, productivity, and gaming. Windows supports all standard Bluetooth pairing protocols, including classic and LE Secure connections, secure simple pairing, and classic and LE legacy pairing. Windows also implements host-based LE privacy. Windows updates help users stay current with OS and driver security features in accordance with the Bluetooth Special Interest Group (SIG) and Standard Vulnerability Reports, as well as issues beyond those required by the Bluetooth core industry standards. Microsoft strongly recommends that Bluetooth accessories' firmware and software are kept up to date.

IT-managed environments have a number of [Bluetooth policies](/windows/client-management/mdm/policy-csp-bluetooth) (MDM, Group Policy, and PowerShell) that can be managed through MDM tools such as Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>. You can configure Windows to use Bluetooth technology while supporting the security needs of your organization. For example, you can allow input and audio while blocking file transfer, force encryption standards, limit Windows discoverability, or even disable Bluetooth entirely for the most sensitive environments.

### Securing Wi-Fi connections

Windows Wi-Fi supports industry-standard authentication and encryption methods when connecting to Wi-Fi networks. WPA (Wi-Fi Protected Access) is a security standard defined by the Wi-Fi Alliance (WFA) to provide sophisticated data encryption and better user authentication.

The current security standard for Wi-Fi authentication is WPA3, which provides a more secure and reliable connection method as compared to WPA2 and older security protocols. Windows supports three WPA3 modes - WPA3 Personal, WPA3 Enterprise, and WPA3 Enterprise 192-bit Suite B.

Windows 11 includes WPA3 Personal with the new H2E protocol and WPA3 Enterprise 192-bit Suite B. Windows 11 also supports WPA3 Enterprise, which includes enhanced server certificate validation and TLS 1.3 for authentication using EAP-TLS authentication.

Opportunistic Wireless Encryption (OWE), a technology that allows wireless devices to establish encrypted connections to public Wi-Fi hotspots, is also included.

### 5G and eSIM

5G networks use stronger encryption and better network segmentation compared to previous generations of cellular protocols. Unlike Wi-Fi, 5G access is always mutually authenticated. Access credentials are stored in an EAL4-certified eSIM that is physically embedded in the device, making it much harder for attackers to tamper with. Together, 5G and eSIM provide a strong foundation for security.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [eSIM configuration of a download server](/mem/intune/configuration/esim-device-configuration-download-server)

### Windows Firewall

Windows Firewall with Advanced Security (previously called Windows Defender Firewall) is an important part of a layered security model. It provides host-based, two-way network traffic
filtering, blocking unauthorized traffic flowing into or out of the local device based on the types of networks the device is connected to.

Windows Firewall in Windows 11 offers the following benefits:

- Reduces the risk of network security threats: Windows Firewall reduces the attack surface of a device with rules that restrict or allow traffic by many properties, such as IP addresses,
ports, or program paths. This functionality increases manageability and decreases the likelihood of a successful attack
- Safeguards sensitive data and intellectual property: By integrating with Internet Protocol Security (IPSec), Windows Firewall provides a simple way to enforce authenticated, end-to-end network communications. It provides scalable, tiered access to trusted network resources, helping to enforce integrity of the data, and optionally helping to protect the confidentiality of the data
- Extends the value of existing investments: Because Windows Firewall is a host-based firewall that is included with the operating system, there is no additional hardware or software required. Windows Firewall is also designed to complement existing non-Microsoft network security solutions through a documented application programming interface (API)

Windows 11 makes the Windows Firewall easier to analyze and debug. IPSec behavior has been integrated with Packet Monitor (pktmon), an in-box, cross-component network diagnostic tool for Windows. Additionally, the Windows Firewall event logs have been enhanced to ensure an audit can identify the specific filter that was responsible for any given event. This enables analysis of firewall behavior and rich packet capture without relying on third-party tools.

Admins can now configure additional settings through the Firewall and Firewall Rule policy templates in the Endpoint Security node in Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>, leveraging the platform
support from the Firewall configuration service provider (CSP) and applying these settings to Windows endpoints.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows Firewall overview](../operating-system-security/network-security/windows-firewall/index.md)

### Virtual private networks (VPN)

Organizations have long relied on Windows to provide reliable, secured, and manageable virtual private network (VPN) solutions. The Windows VPN client platform includes built-in VPN
protocols, configuration support, a common VPN user interface, and programming support for custom VPN protocols. VPN apps are available in the Microsoft Store for both enterprise and
consumer VPNs, including apps for the most popular enterprise VPN gateways.

In Windows 11, we've integrated the most commonly used VPN controls right into the Windows 11 Quick Actions pane. From the Quick Actions pane, users can see the status of their VPN, start and stop the VPN tunnels, and with one click, go to the modern Settings app for more control.

The Windows VPN platform connects to Microsoft Entra ID<sup>[\[9\]](conclusion.md#footnote9)</sup> and Conditional Access for single sign-on, including multifactor authentication (MFA) through Microsoft Entra ID. The VPN platform also supports classic domain-joined authentication. It's supported by Microsoft Intune and other modern device management (MDM) providers. The flexible VPN profile supports both built-in protocols and custom protocols. It can configure multiple authentication methods and can be automatically started as needed or manually started by the end user. It also supports split-tunnel VPN and exclusive VPN with exceptions for trusted external sites.

With Universal Windows Platform (UWP) VPN apps, end users never get stuck on an old version of their VPN client. VPN apps from the store will be automatically updated as needed. Naturally, the updates are in the control of your IT admins.

The Windows VPN platform has been tuned and hardened for cloud-based VPN providers like Azure VPN. Features like Microsoft Entra ID authentication, Windows user interface integration, plumbing IKE traffic selectors, and server support are all built into the Windows VPN platform. The integration into the Windows VPN platform leads to a simpler IT admin experience. User authentication is more consistent, and users can easily find and control their VPN.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows VPN technical guide](../operating-system-security/network-security/vpn/vpn-guide.md)

### Server Message Block file services

Server Message Block (SMB) and file services are the most common Windows workloads in the commercial and public sector ecosystem. Users and applications rely on SMB to access the files that run organizations of all sizes. In Windows 11, the SMB protocol has significant security updates to meet today's threats, including AES-256 encryption, accelerated SMB signing, Remote Directory Memory Access (RDMA) network encryption, and an entirely new scenario, SMB over QUIC for untrusted networks.

SMB encryption provides end-to-end encryption of SMB data and protects data from eavesdropping occurrences on internal networks. Windows 11 introduces AES-256-GCM and AES-256-CCM cryptographic suites for SMB 3.1.1 encryption. Windows administrators can mandate the use of this more advanced security or continue to use the more compatible and still-safe AES-128 encryption.

In Windows 11 Enterprise, Education, Pro, and Pro Workstation, SMB Direct now supports encryption. For demanding workloads like video rendering, data science, or extremely large files, you can now operate with the same safety as traditional Transmission Control Protocol (TCP) and the performance of RDMA. Previously, enabling SMB encryption disabled direct data placement, making RDMA as slow as TCP. Now, data is encrypted before placement, leading to relatively minor performance degradation while adding packet privacy with AES-128 and AES-256 protection.

Windows 11 also introduces AES-128-GMAC for SMB signing. Windows will automatically negotiate this better-performing cipher method when connecting to another computer that supports it. Signing prevents common attacks like relay and spoofing, and it is required by default when clients communicate with Active Directory domain controllers.

Finally, Windows 11 introduces SMB over QUIC, an alternative to the TCP network transport that provides secure, reliable connectivity to edge file servers over untrusted networks like the internet, as well as highly secure communications on internal networks. QUIC is an Internet Engineering Task Force (IETF)-standardized protocol with many benefits when compared with TCP, but most importantly, it always requires TLS 1.3 and encryption. SMB over QUIC offers an SMB VPN for telecommuters, mobile device users, and high-security organizations. All SMB traffic, including authentication and authorization within the tunnel, is never exposed to the underlying network. SMB behaves normally within the QUIC tunnel, meaning the user experience doesn't change. SMB over QUIC will be a game-changing feature for Windows 11 accessing Windows file servers and eventually Azure Files and third parties.

Newly installed Windows 11 Home editions that contain the February 2023 cumulative update no longer install the SMB 1.0 client by default, meaning the Home edition now operates like all other editions of Windows 11. SMB 1.0 is an unsafe and deprecated protocol that Microsoft superseded by later versions of SMB starting with Windows Vista. Microsoft began uninstalling SMB 1.0 by  default in certain Windows 10 editions in 2017. No versions of Windows 11 now install SMB 1.0 by default.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [File sharing using the SMB 3 protocol](/windows-server/storage/file-server/file-server-smb-overview)

## Virus and threat protection

:::image type="icon" source="images/go-to-section.svg" border="false"::: **Go to section:**

- [Microsoft Defender SmartScreen](#microsoft-defender-smartscreen)
- [Microsoft Defender Antivirus](#microsoft-defender-antivirus)
- [Attack surface reduction](#attack-surface-reduction)
- [Tamper protection](#tamper-protection)
- [Exploit protection](#exploit-protection)
- [Controlled folder access](#controlled-folder-access)
- [Microsoft Defender for Endpoint](#microsoft-defender-for-endpoint)

Today's threat landscape is more complex than ever. This new world requires a new approach vto threat prevention, detection, and response. Microsoft Defender Antivirus, along with many other features that are built into Windows 11, is at the frontlines, protecting customers against current and emerging threats.

### Microsoft Defender SmartScreen

Microsoft Defender SmartScreen protects against phishing, malware websites and napplications, and the downloading of potentially malicious files.

SmartScreen determines whether a site is potentially malicious by:

- Analyzing visited webpages to find indications of suspicious behavior. If it determines a page is suspicious, it will show a warning page advising caution
- Checking the visited sites against a dynamic list of reported phishing sites and malicious software sites. If it finds a match, SmartScreen warns that the site might be malicious

SmartScreen also determines whether a downloaded app or app installer is potentially malicious by:

- Checking downloaded files against a list of reported malicious software sites and programs known to be unsafe. If it finds a match, SmartScreen warns that the file might be malicious
- Checking downloaded files against a list of well-known files. If the file is of a dangerous type and not well-known, SmartScreen displays a caution alert

With enhanced phishing protection in Windows 11, SmartScreen also alerts people when they are entering their Microsoft credentials into a potentially risky location, regardless of which application or browser is used. IT can customize which notifications appear through Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup>. This protection runs in audit mode by default, giving IT admins full control to make decisions around policy creation and enforcement.

Because Windows 11 comes with these enhancements already built in and enabled, users have extra security from the moment they turn on their device.

The app and browser control section contains information and settings for Microsoft Defender SmartScreen. IT administrators and IT pros can get configuration guidance in the [Microsoft Defender SmartScreen documentation library](/windows/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview).

### Microsoft Defender Antivirus

Microsoft Defender Antivirus is a next-generation protection solution included in all versions of Windows 10 and Windows 11. From the moment you turn on Windows, Microsoft Defender Antivirus continually monitors for malware, viruses, and security threats. In addition to real-time protection, updates are downloaded automatically to help keep your device safe and protect it from threats. If you have another antivirus app installed and turned on, Microsoft Defender Antivirus will turn off automatically. If you uninstall the other app, Microsoft Defender Antivirus will turn back on.

Microsoft Defender Antivirus includes real-time, behavior-based, and heuristic antivirus protection. This combination of always-on content scanning, file and process behavior monitoring, and other heuristics effectively prevents security threats. Microsoft Defender Antivirus continually scans for malware and threats and also detects and blocks potentially unwanted applications (PUA), applications deemed to negatively impact your device but are not considered malware.

Microsoft Defender Antivirus always-on protection is integrated with cloud-delivered protection, which helps ensure near-instant detection and blocking of new and emerging threats. This combination of local and cloud-delivered technologies provides award-winning protection at home and at work.

:::image type="content" source="images/defender-antivirus.png" alt-text="Diagram of the Microsoft Defender Antivirus components." border="false":::

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Next-generation protection with Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows?view=o365-worldwide).

### Attack surface reduction

Attack surface reduction rules help prevent software behaviors that are often abused to compromise devices and networks. By reducing the attack surface, you can reduce the overall vulnerability of your organization. Administrators can configure specific attack surface reduction rules to help block certain behaviors, such as:

- Launching executable files and scripts that attempt to download or run files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

For example, an attacker might try to run an unsigned script from a USB drive or have a macro in an Office document make calls directly to the Win32 API. Attack surface reduction rules can constrain these kinds of risky behaviors and improve the defensive posture of the device. For comprehensive protection, follow steps for enabling hardware-based isolation

for Microsoft Edge and reducing the attack surface across applications, folders, device,
network, and firewall.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Attack surface reduction](/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction?view=o365-worldwide)

### Tamper protection

Attacks like ransomware attempt to disable security features, such as anti-virus protection. Bad actors like to disable security features to get easier access to user's data, to install malware, or otherwise exploit user's data, identity, and devices without fear of being blocked. Tamper protection helps prevent these kinds of activities.

With tamper protection, malware is prevented from taking actions such as:

- Disabling real-time protection
- Turning off behavior monitoring
- Disabling antivirus, such as IOfficeAntivirus (IOAV)
- Disabling cloud-delivered protection
- Removing security intelligence updates

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Tamper protection](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection)

### Exploit protection

Exploit protection automatically applies several exploit mitigation techniques to operating system processes and apps. Exploit protection works best with Microsoft Defender for Endpoint<sup>[\[9\]](conclusion.md#footnote9)</sup>, which gives organizations detailed reporting into exploit protection events and blocks as part of typical alert investigation scenarios. You can enable exploit protection on an individual device and then use Group Policy in Active Directory or Microsoft Intune<sup>[\[9\]](conclusion.md#footnote9)</sup> to distribute the configuration XML file to multiple devices simultaneously.

When a mitigation is encountered on the device, a notification will be displayed from the Action Center. You can customize the notification with your company details and contact information. You can also enable the rules individually to customize which techniques the feature monitors.

You can use audit mode to evaluate how exploit protection would impact your organization if it were enabled.

Windows 11 provides configuration options for exploit protection. You can prevent users from modifying these specific options with Group Policy.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Protecting devices from exploits](/microsoft-365/security/defender-endpoint/enable-exploit-protection)

### Controlled folder access

You can protect your valuable information in specific folders by managing app access tob them. Only trusted apps can access protected folders, which are specified when controlled folder access is configured. Typically, commonly used folders, such as those used for documents, pictures, and downloads, are included in the list of controlled folders.

Controlled folder access works with a list of trusted apps. Apps that are included in the list of trusted software work as expected. Apps that are not included in the trusted list are prevented from making any changes to files inside protected folders.

Controlled folder access helps protect user's valuable data from malicious apps and threats such as ransomware.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders)

### Microsoft Defender for Endpoint

Microsoft Defender for Endpoint<sup>[\[9\]](conclusion.md#footnote9)</sup> is an enterprise endpoint detection and response solution that helps security teams detect, investigate, and respond to advanced threats.

Organizations can use the rich event data and attack insights Defender for Endpoint provides to investigate incidents. Defender for Endpoint brings together the following elements to provide a more complete picture of security incidents:

- Endpoint behavioral sensors: Embedded in Windows, these sensors collect and process behavioral signals from the operating system and send this sensor data to your private, isolated cloud instance of Microsoft Defender for Endpoint
- Cloud security analytics: Behavioral signals are translated into insights, detections, and recommended responses to advanced threats. These analytics leverage big data, device learning, and unique Microsoft optics across the Windows ecosystem, enterprise cloud products such as Microsoft 365<sup>[\[9\]](conclusion.md#footnote9)</sup>, and online assets
- Threat intelligence: Microsoft processes over 43 trillion security signals every 24 hours, yielding a deep and broad view into the evolving threat landscape. Combined with our global team of security experts and cutting-edge artificial intelligence and machine learning, we can see threats that others miss. This threat intelligence helps provide unparalleled protection for our customers. The protections built into our platforms and products blocked
attacks that include 31 billion identity threats and 32 billion email threats
- Rich response capabilities: Defender for Endpoint empowers SecOps teams to isolate, remediate, and remote into machines to further investigate and stop active threats in their environment, as well as block files, network destinations, and create alerts for them. In addition, Automated Investigation and Remediation can help reduce the load on the SOC by automatically performing otherwise manual steps towards remediation and providing
detailed investigation outcomes

Defender for Endpoint is also part of Microsoft 365 Defender, our end-to-end, cloud-native extended detection and response (XDR) solution that combines best-of-breed endpoint, email, and identity security products. It enables organizations to prevent, detect, investigate, and remediate attacks by delivering deep visibility, granular context, and actionable insights generated from raw signals harnessed across the Microsoft 365 environment and other
platforms, all synthesized into a single dashboard. This solution offers tremendous value to organizations of any size, especially those that are looking to break away from the added complexity of multiple point solutions, keeping them protected from sophisticated attacks and saving IT and security teams' time and resources.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Microsoft Defender for Endpoint](/security/defender-endpoint/microsoft-defender-endpoint)
- [Microsoft 365 Defender])(/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide)

> [!div class="nextstepaction"]
> [Chapter 3: Application security >](application-security.md)
