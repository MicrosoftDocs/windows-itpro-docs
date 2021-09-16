---
title: Windows operating system security
description: Securing the operating system includes system security, encryption, network security, and threat protection.
ms.reviewer: 
ms.topic: article
manager: dansimp
ms.author: deniseb
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: denisebmsft
ms.collection: M365-security-compliance
ms.prod: m365-security
ms.technology: windows-sec
---

# Windows operating system security

Security and privacy depend on an operating system that guards your system and information from the moment it starts up, providing fundamental chip-to-cloud protection. Windows 11 is the most secure Windows yet with extensive security measures designed to help keep you safe. These measures include built-in advanced encryption and data protection, robust network and system security, and intelligent safeguards against ever-evolving threats. 

Use the links in the following table to learn more about the operating system security features and capabilities in Windows 11:<br/><br/>

| Security Measures | Features & Capabilities |
|:---|:---|
| Secure Boot and Trusted Boot | Secure Boot and Trusted Boot help prevent malware and corrupted components from loading when a Windows device is starting. Secure Boot starts with initial boot-up protection, and then Trusted Boot picks up the process. Together, Secure Boot and Trusted Boot help to ensure your Windows system boots up safely and securely.<br><br/> Learn more [Secure Boot and Trusted Boot](trusted-boot.md). <br/>||
Cryptography and certificate management|Cryptography uses code to convert data so that only a specific recipient can read it by using a key. Cryptography enforces privacy to prevent anyone except the intended recipient from reading data, integrity to ensure data is free of tampering, and authentication that verifies identity to ensure that communication is secure. <br><br/> Learn more about [Cryptography and certificate management](cryptography-certificate-mgmt.md). <br/><br/>|
Windows Security app | The Windows built-in security application found in setitngs provides an at-a-glance view of the security status and health of your device. These insights help you identify issues and take action to make sure you’re protected. You can quickly see the status of your virus and threat protection, firewall and network security, device security controls, and more. <br><br/> Learn more about the [Windows Security app](threat-protection/windows-defender-security-center/windows-defender-security-center.md).|
| Encryption and data protection | Wherever confidential data is stored, it must be protected against unauthorized access, whether through physical device theft or from malicious applications. Windows provides strong at-rest data-protection solutions that guard against nefarious attackers. <br/><br/> Learn more about [Encryption](encryption-data-protection.md). 
| BitLocker | BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers. BitLocker provides the most protection when used with a Trusted Platform Module (TPM) version 1.2 or later. <br/> <br/> Learn more about [BitLocker](information-protection/bitlocker/bitlocker-overview.md). |
| Encrypted Hard Drive | <br/><br/>Encrypted Hard Drive uses the rapid encryption that is provided by BitLocker Drive Encryption to enhance data security and management. <br> By offloading the cryptographic operations to hardware, Encrypted Hard Drives increase BitLocker performance and reduce CPU usage and power consumption. Because Encrypted Hard Drives encrypt data quickly, enterprise devices can expand BitLocker deployment with minimal impact on productivity. <br/><br/> Learn more about [Encrypted Hard Drives](information-protection/encrypted-hard-drive.md). <br><br/> |
| Virtual Private Network | Virtual private networks (VPNs) are point-to-point connections across a private or public network, such as the Internet. A VPN client uses special TCP/IP or UDP-based protocols, called tunneling protocols, to make a virtual call to a virtual port on a VPN server. <br><br/>Learn more about [Virtual Private Networks](identity-protection/vpn/vpn-guide.md) (VPNs).<br/><br/>|
| Windows Defender Firewall | Windows Defender Firewall is a stateful host firewall that helps secure the device by allowing you to create rules that determine which network traffic is permitted to enter the device from the network and which network traffic the device is allowed to send to the network. Windows Defender Firewall also supports Internet Protocol security (IPsec), which you can use to require authentication from any device that is attempting to communicate with your device. <br><br/> Learn more about [Windows Defender Firewall with advanced security](threat-protection/windows-firewall/windows-firewall-with-advanced-security.md).<br/><br/>
| Antivirus & antimalware protection | Microsoft Defender Antivirus is included in all versions of Windows 10, Windows Server 2016 and later, and Windows 11. <br/><br/>From the moment you boot Windows, Microsoft Defender Antivirus continually monitors for malware, viruses, and security threats. Updates are downloaded automatically to help protect your device from threats.  Microsoft Defender Antivirus continually scans for malware and threats, and also detects and blocks potentially unwanted applications (applications that can negatively impact your device even though they are not considered malware).<br/><br/>If you have another antivirus app installed and turned on, Microsoft Defender Antivirus will turn off automatically. If you uninstall the other app, Microsoft Defender Antivirus will turn back on. <br/><br/>Microsoft Defender Antivirus integrates with cloud-delivered protection, which helps ensure near-instant detection and blocking of new and emerging threats.<br/><br/>Learn more about [next-generation protection and Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows).| 
| Attack surface reduction rules | Your attack surfaces are the places and ways you are vulnerable to a cyber attack. Attack surface reduction rules are built into Windows and Windows Server. These rules block certain behaviors that are often abused to compromise your device or network. Such behaviors can include launching scripts or executables that attempt to download or run other files, running suspicious scripts, or performing other behaviors that apps don't typically initiate during normal work. You can configure rules to protect against risky behaviors.<br/><br/> Learn more about [Attack surface reduction rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction) |
| Anti-tampering protection | Learn more about [Tamper protection](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection). | 
| Network protection | Learn more about [Network protection](/microsoft-365/security/defender-endpoint/network-protection). |
| Controlled folder access | Learn more about [Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders). |
| Exploit protection | Learn more about [Exploit protection](/microsoft-365/security/defender-endpoint/exploit-protection). | 
| Microsoft Defender for Endpoint | Learn more about [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint). |

