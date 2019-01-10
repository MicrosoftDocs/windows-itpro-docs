---
title: What's new in Windows Defender ATP
description: Lists the new features and functionality in Windows Defender ATP
keywords: what's new in windows defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 01/07/2019
---

# What's new in Windows Defender ATP
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Here are the new features in the latest release of Windows Defender ATP.

## Windows Defender ATP 1809
- [Controlled folder access](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard)
Controlled folder access is now supported on Windows Server 2019.
 
- [Attack surface reduction rules](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)
Attack surface reduction rules are now supported on Windows Server 2019. There are two new attack surface reduction rules: 
  -	Block Adobe Reader from creating child processes
  -	Block Office communication application from creating child processes. 
 
- [Windows Defender Antivirus](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)
Windows Defender Antivirus can now [run within a sandbox](https://cloudblogs.microsoft.com/microsoftsecure/2018/10/26/windows-defender-antivirus-can-now-run-in-a-sandbox/), increasing its security. You can also [configure CPU priority settings](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-advanced-scan-types-windows-defender-antivirus) for Windows Defender Antivirus scans. Windows Defender Antivirus can now scan macros and other scripts at runtime to check for malicious behavior. For more information, see [Office VBA + AMSI: Parting the veil on malicious macros](https://cloudblogs.microsoft.com/microsoftsecure/2018/09/12/office-vba-amsi-parting-the-veil-on-malicious-macros/).


- [Threat analytics](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-analytics)<br>
Threat Analytics is a set of interactive reports published by the Windows Defender ATP research team as soon as emerging threats and outbreaks are identified. The reports help security operations teams assess impact on their environment and provides recommended actions to contain, increase organizational resilience, and prevent specific threats.

- [Custom detection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-custom-detections)<br>
With custom detections, you can create custom queries to monitor events for any kind of behavior such as suspicious or emerging threats. This can be done by leveraging the power of Advanced hunting through the creation of custom detection rules. 
- [Managed security service provider (MSSP) support](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/mssp-support-windows-defender-advanced-threat-protection)<br> 
Windows Defender ATP adds support for this scenario by providing MSSP integration. The integration will allow MSSPs to take the following actions: Get access to MSSP customer's Windows Defender Security Center portal, fetch email notifications, and fetch alerts through security information and event management (SIEM) tools.
- [Integration with Azure Security Center](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-server-endpoints-windows-defender-advanced-threat-protection#integration-with-azure-security-center)<br> 
Windows Defender ATP integrates with Azure Security Center to provide a comprehensive server protection solution. With this integration Azure Security Center can leverage the power of Windows Defender ATP to provide improved threat detection for Windows Servers.
- [Integration with Microsoft Cloud App Security](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/microsoft-cloud-app-security-integration)<br> 
Microsoft Cloud App Security leverages Windows Defender ATP endpoint signals to allow direct visibility into cloud application usage including the use of unsupported cloud services (shadow IT) from all Windows Defender ATP monitored machines.
- [Onboard Windows Server 2019](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-server-endpoints-windows-defender-advanced-threat-protection#windows-server-version-1803-and-windows-server-2019) <br>
Windows Defender ATP now adds support for Windows Server 2019. You'll be able to onboard Windows Server 2019 in the same method available for Windows 10 client machines. 
- [Onboard previous versions of Windows](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/onboard-downlevel-windows-defender-advanced-threat-protection)<br>
Onboard supported versions of Windows machines so that they can send sensor data to the Windows Defender ATP sensor.
- [Removable device control](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/19/windows-defender-atp-has-protections-for-usb-and-removable-devices/)<br>
Windows Defender ATP provides multiple monitoring and control features to help prevent threats from removable devices, including new settings to allow or block specific hardware IDs.

## Windows Defender ATP 1803
- [Attack surface reduction rules](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)
New attack surface reduction rules: 
  -	Use advanced protection against ransomware
  -	Block credential stealing from the Windows local security authority subsystem (lsass.exe)
  - Block process creations originating from PSExec and WMI commands
  - Block untrusted and unsigned processes that run from USB
  - Block executable content from email client and webmail
- [Controlled folder access](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard)
You can now block untrusted processes from writing to disk sectors.
- [Windows Defender Antivirus](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)
Windows Defender Antivirus now shares detection status between M365 services and interoperates with Windows Defender ATP. For more information, see [Use next-gen technologies in Windows Defender Antivirus through cloud-delivered protection](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus). Block at first sight can now block non-portable executable files (such as JS, VBS, or macros) as well as executable files. For more information, see [Enable block at first sight](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus).
- [Advanced Hunting](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection) <BR>
Query data using Advanced hunting in Windows Defender ATP
- [Automated investigation](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)<br> Use Automated investigations to investigate and remediate threats
- [Conditional access](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection) <br>
Enable conditional access to better protect users, devices, and data

