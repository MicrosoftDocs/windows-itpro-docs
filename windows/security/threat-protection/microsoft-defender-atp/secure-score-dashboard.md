---
title: Configure the security controls in Secure score
description: Configure the security controls in Secure score
keywords: secure score, dashboard, security recommendations, security control state, security score, score improvement, microsoft secure score, security controls, security control, improvement opportunities, edr, antivirus, av, os security updates
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Configure the security controls in Secure score
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>[!NOTE]
>  Secure score is now part of [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) as [Configuration score](configuration-score.md). The secure score page will be available for a few weeks. View the [Secure score](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-secure-score) page.

Each security control lists recommendations that you can take to increase the security posture of your organization.

### Endpoint detection and response (EDR) optimization
A well-configured machine complies to the minimum baseline configuration setting. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for your Endpoint detection and response tool.

>[!IMPORTANT]
>This feature is available for machines on Windows 10, version  1607 or later.

#### Minimum baseline configuration setting for EDR:
- Microsoft Defender ATP sensor is on
- Data collection is working correctly
- Communication to Microsoft Defender ATP service is not impaired

##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:
- Turn on sensor
- Fix sensor data collection
- Fix impaired communications

For more  information, see [Fix unhealthy sensors](fix-unhealthy-sensors.md). 

### Windows Defender Antivirus (Windows Defender AV) optimization
A well-configured machine complies to the minimum baseline configuration setting. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for Windows Defender AV.

>[!IMPORTANT]
>This feature is available for machines on Windows 10, version  1607 or later. 

#### Minimum baseline configuration setting for Microsoft Defender AV:
A well-configured machine for Windows Defender AV meets the following requirements:

- Windows Defender AV is reporting correctly
- Windows Defender AV is turned on
- Security intelligence is up-to-date
- Real-time protection is on
- Potentially Unwanted Application (PUA) protection is enabled

##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:

>[!NOTE]
> For the Windows Defender Antivirus properties to show,  you'll need to ensure that the Windows Defender Antivirus Cloud-based protection is properly configured on the machine. 

- Fix antivirus reporting
  - This recommendation is displayed when the Windows Defender Antivirus is not properly configured to report its health state. For more information on fixing the reporting, see [Configure and validate network connections](../windows-defender-antivirus/configure-network-connections-windows-defender-antivirus.md).
- Turn on antivirus
- Update antivirus Security intelligence 
- Turn on real-time protection
- Turn on PUA protection

For more information, see [Configure Windows Defender Antivirus](../windows-defender-antivirus/configure-windows-defender-antivirus-features.md).


### OS security updates optimization
This tile shows you the number of machines that require the latest security updates. It also shows machines that are running on the latest Windows Insider preview build and serves as a reminder to ensure that users should run the latest builds.
 
>[!IMPORTANT]
>This feature is available for machines on Windows 10, version  1607 or later.

You can take the following actions to increase the overall security score of your organization:
- Install the latest security updates
- Fix sensor data collection
  - The Microsoft Defender ATP service relies on sensor data collection to determine the security state of a machine. The service will not be able to determine the security state of machines that are not reporting sensor data properly. It's important to ensure that sensor data collection is working properly. For more information, see [Fix unhealthy sensors](fix-unhealthy-sensors.md).

For more information, see [Windows Update Troubleshooter](https://support.microsoft.com/help/4027322/windows-windows-update-troubleshooter).


### Windows Defender Exploit Guard (Windows Defender EG) optimization
A well-configured machine complies to the minimum baseline configuration setting. This tile shows you a list of actions to apply on machines to meet the minimum baseline configuration setting for Windows Defender EG. When endpoints are configured according to the baseline, the Windows Defender EG events shows on the Microsoft Defender ATP Machine timeline. 


>[!IMPORTANT]
>This security control is only applicable for machines with Windows 10, version 1709 or later.

#### Minimum baseline configuration setting for Windows Defender EG:
A well-configured machine for Windows Defender EG meets the following requirements:

- System level protection settings are configured correctly
- Attack Surface Reduction rules are configured correctly
- Controlled Folder Access setting is configured correctly

##### System level protection:
The following system level configuration settings must be set to **On or Force On**:

1. Control Flow Guard 
2. Data Execution Prevention (DEP)
3. Randomize memory allocations (Bottom-up ASLR)
4. Validate exception chains (SEHOP)
5. Validate heap integrity

>[!NOTE]
>The setting **Force randomization for images (Mandatory ASLR)** is currently excluded from the baseline.
>Consider configuring **Force randomization for images (Mandatory ASLR)** to **On or Force On** for better protection.

##### Attack Surface Reduction (ASR) rules:
The following ASR rules must be configured to **Block mode**:

Rule description | GUIDs 
-|-
Block executable content from email client and webmail | BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550
Block Office applications from creating child processes | D4F940AB-401B-4EFC-AADC-AD5F3C50688A
Block Office applications from creating executable content  | 3B576869-A4EC-4529-8536-B80A7769E899
Impede JavaScript and VBScript to launch executables | D3E037E1-3EB8-44C8-A917-57927947596D
Block execution of potentially obfuscated scripts  | 5BEB7EFE-FD9A-4556-801D-275E5FFC04CC
Block Win32 imports from Macro code in Office | 92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B



>[!NOTE]
>The setting **Block Office applications from injecting into other processes** with GUID 75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84 is excluded from the baseline.
>Consider enabling this rule in **Audit** or **Block mode** for better protection.


##### Controlled Folder Access
The Controlled Folder Access setting must be configured to **Audit mode** or **Enabled**.

>[!NOTE]
> Audit mode, allows you to see audit events in the Microsoft Defender ATP Machine timeline however it does not block suspicious applications.
>Consider enabling Controlled Folder Access for better protection.

##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:
- Turn on all system-level Exploit Protection settings
- Set all ASR rules to enabled or audit mode
- Turn on Controlled Folder Access
- Turn on Windows Defender Antivirus on compatible machines

For more information, see [Windows Defender Exploit Guard](../windows-defender-exploit-guard/windows-defender-exploit-guard.md).

### Windows Defender Application Guard (Microsoft Defender AG) optimization
A well-configured machine complies to the minimum baseline configuration setting. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for Windows Defender AG. When endpoints are configured according to the baseline, Microsoft Defender AG events shows on the Microsoft Defender ATP Machine timeline. 

>[!IMPORTANT]
>This security control is only applicable for machines with Windows 10, version 1709 or later.

#### Minimum baseline configuration setting for Windows Defender AG:
A well-configured machine for Windows Defender AG meets the following requirements:

- Hardware and software prerequisites are met
- Windows Defender AG is turned on compatible machines
- Managed mode is turned on

##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:
- Ensure that you meet the hardware and software prerequisites
    
    >[!NOTE]
    >This improvement item does not contribute to the security score in itself because it's not a prerequisite for Windows Defender AG. It gives an indication of a potential reason why Windows Defender AG is not turned on.

- Turn on  Windows Defender AG on compatible machines
- Turn on managed mode


For more information, see [Windows Defender Application Guard overview](../windows-defender-application-guard/wd-app-guard-overview.md).


### Windows Defender SmartScreen optimization
A well-configured machine complies to a minimum baseline configuration setting. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for Windows Defender SmartScreen.

>[!WARNING]
> Data collected by Windows Defender SmartScreen might be stored and processed outside of the storage location you have selected for your Microsoft Defender ATP data.


>[!IMPORTANT]
>This security control is only applicable for machines with Windows 10, version 1709 or later.

#### Minimum baseline configuration setting for Windows Defender SmartScreen:
The following settings must be configured with the following settings:
- Check apps and files: **Warn** or **Block** 
- SmartScreen for Microsoft Edge: **Warn** or **Block**
- SmartScreen for Microsoft store apps: **Warn** or **Off**


You can take the following actions to increase the overall security score of your organization:
- Set **Check app and files** to **Warn** or **Block**
- Set **SmartScreen for Microsoft Edge** to **Warn** or **Block**
- Set **SmartScreen for Microsoft store apps** to **Warn** or **Off**

For more information, see [Windows Defender SmartScreen](../windows-defender-smartscreen/windows-defender-smartscreen-overview.md).



### Windows Defender Firewall optimization
A well-configured machine must have Windows Defender Firewall turned on and enabled for all profiles so that inbound connections are blocked by default. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for Microsoft Defender Firewall. 

>[!IMPORTANT]
>This security control is only applicable for machines with Windows 10, version 1709 or later.

#### Minimum baseline configuration setting for Windows Defender Firewall 

- Windows Defender Firewall is turned on for all network connections
- Secure domain profile by enabling Windows Defender Firewall and ensure that Inbound connections are set to Blocked
- Secure private profile by enabling Windows Defender Firewall and ensure that Inbound connections are set to Blocked
- Secure public profile is configured by enabling Windows Defender Firewall and ensure that Inbound connections are set to Blocked

For more information on Windows Defender Firewall settings, see [Planning settings for a basic firewall policy](https://docs.microsoft.com/windows/security/identity-protection/windows-firewall/planning-settings-for-a-basic-firewall-policy).

>[!NOTE]
> If Windows Defender Firewall is not your primary firewall, consider excluding it from the security score calculations and make sure that your third-party firewall is configured in a securely.


##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:
- Turn on firewall
- Secure domain profile 
- Secure private profile
- Secure public profile
- Verify secure configuration of third-party firewall
- Fix sensor data collection
  - The Microsoft Defender ATP service relies on sensor data collection to determine the security state of a machine. The service will not be able to determine the security state of machines that are not reporting sensor data properly. It's important to ensure that sensor data collection is working properly. For more information, see [Fix unhealthy sensors](fix-unhealthy-sensors.md).

For more information, see [Windows Defender Firewall with Advanced Security](https://docs.microsoft.com/windows/security/identity-protection/windows-firewall/windows-firewall-with-advanced-security).

### BitLocker optimization
A well-configured machine complies to the minimum baseline configuration setting. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for BitLocker. 

>[!IMPORTANT]
>This security control is only applicable for machines with Windows 10, version 1803 or later.

#### Minimum baseline configuration setting for BitLocker
- Ensure all supported drives are encrypted
- Ensure that all suspended protection on drives resume protection 
- Ensure that drives are compatible


##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:
- Encrypt all supported drives
- Resume protection on all drives
- Ensure drive compatibility
- Fix sensor data collection
  - The Microsoft Defender ATP service relies on sensor data collection to determine the security state of a machine. The service will not be able to determine the security state of machines that are not reporting sensor data properly. It's important to ensure that sensor data collection is working properly. For more information, see [Fix unhealthy sensors](fix-unhealthy-sensors.md).

For more information, see [Bitlocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview).

### Windows Defender Credential Guard optimization
A well-configured machine complies to the minimum baseline configuration setting. This tile shows you a list of actions to apply on endpoints to meet the minimum baseline configuration setting for Windows Defender Credential Guard.

>[!IMPORTANT]
>This security control is only applicable for machines with Windows 10, version 1709 or later. 

#### Minimum baseline configuration setting for Windows Defender Credential Guard:
Well-configured machines for Windows Defender Credential Guard meets the following requirements:

- Hardware and software prerequisites are met
- Windows Defender Credential Guard is turned on compatible machines


##### Recommended actions:
You can take the following actions to increase the overall security score of your organization:

- Ensure hardware and software prerequisites are met
- Turn on Credential Guard 
- Fix sensor data collection
  - The Microsoft Defender ATP service relies on sensor data collection to determine the security state of a machine. The service will not be able to determine the security state of machines that are not reporting sensor data properly. It's important to ensure that sensor data collection is working properly. For more information, see [Fix unhealthy sensors](fix-unhealthy-sensors.md).

For more information, see [Manage Windows Defender Credential Guard](https://docs.microsoft.com/windows/security/identity-protection/credential-guard/credential-guard-manage).

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-sadashboard-belowfoldlink) 

## Related topics
- [Overview of Secure score](overview-secure-score.md)
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Configuration score](configuration-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)




