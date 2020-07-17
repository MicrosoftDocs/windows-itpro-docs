---
title: Manage Microsoft Defender ATP using Intune
description: Learn how to manage Microsoft Defender ATP with Intune
keywords: post-migration, manage, operations, maintenance, utilization, intune, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage Microsoft Defender Advanced Threat Protection with Intune

We recommend using Intune to manage threat protection features for the devices (also referred to as endpoints) within your organization. 

## Find your Microsoft Defender ATP settings in Intune

> [!IMPORTANT]
> You must be a global administrator or service administrator in Intune to configure the settings described in this article. To learn more, see [Types of administrators (Intune)](https://docs.microsoft.com/mem/intune/fundamentals/users-add#types-of-administrators).

1. Go to the Azure portal ([https://portal.azure.com](https://portal.azure.com)) and sign in.

2. Under **Azure Services**, choose **Intune**.

3. In the navigation pane on the left, choose **Device configuration**, and then, under **Manage**, choose **Profiles**.

4. Select an existing profile, or create a new one.

> [!TIP]
> Need help? See [Using Microsoft Defender ATP with Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection#example-of-using-microsoft-defender-atp-with-intune).  

## Configure Microsoft Defender ATP with Intune

The following table lists various tasks you can perform to configure Microsoft Defender ATP with Intune.

|Task  |Resources to learn more  |
|---------|---------|
|Manage your organization's devices using Intune     |[Protect devices with Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/device-protect)         |
|Integrate Microsoft Defender ATP with Microsoft Intune as a Mobile Threat Defense solution <br/>(for Android devices and devices running Windows 10 or later)   |[Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection)         |
|Use Conditional Access to control the devices and apps that can connect to your email and company resources |[Configure Conditional Access in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-conditional-access) |
|Configure your Microsoft Defender Antivirus settings using the Policy configuration service provider ([Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider)) |[Device restrictions: Microsoft Defender Antivirus](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus)<br/><br/>[Policy CSP - Microsoft Defender ATP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender)  | 
|If necessary, specify exclusions for Microsoft Defender Antivirus <br/><br/>*Generally, you shouldn't need to apply exclusions. Microsoft Defender Antivirus includes a number of automatic exclusions based on known OS behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios and situations.* |[Virus scanning recommendations for Enterprise computers that are running currently supported versions of Windows](https://support.microsoft.com/help/822158/virus-scanning-recommendations-for-enterprise-computers)<br/><br/>[Device restrictions: Microsoft Defender Antivirus Exclusions for Windows 10 devices](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions) <br/><br/>[Configure Microsoft Defender Antivirus exclusions on Windows Server 2016 or 2019](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-server-exclusions-microsoft-defender-antivirus)|
|Configure your attack surface reduction rules <br/><br/>*TIP: Configure your attack surface reduction rules in [audit mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/audit-windows-defender) at first (for at least one week and up to two months). You can monitor status using Power BI ([get our template](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Attack%20Surface%20Reduction%20rules)), and then set those rules to active mode when you're ready.* |[Audit mode in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/audit-windows-defender)<br/><br/>[Endpoint protection: Attack Surface Reduction](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10?toc=/intune/configuration/toc.json&bc=/intune/configuration/breadcrumb/toc.json#attack-surface-reduction)<br/><br/>[Learn more about attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction) |
|Configure your network filtering (this is also referred to as network protection) <br/><br/>*TIP: Make sure that Windows 10 devices have the latest [antimalware platform updates](https://support.microsoft.com/help/4052623/update-for-microsoft-defender-antimalware-platform) installed.*|[Endpoint protection: Network filtering](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#network-filtering)<br/><br/>[Review network protection events in Windows Event Viewer](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/evaluate-network-protection#review-network-protection-events-in-windows-event-viewer) |
|Configure controlled folder access to protect against ransomware <br/><br/>*Controlled folder access is also referred to as antiransomware protection.*  |[Endpoint protection: Controlled folder access](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#controlled-folder-access) <br/><br/>[Enable controlled folder access in Intune](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/enable-controlled-folders#intune)  |
|Configure exploit protection to protect your organization's devices from malware that uses exploits to spread and infect other devices <br/><br/> *Exploit protection is also referred to as Exploit Guard.* |[Endpoint protection: Microsoft Defender Exploit Guard](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-exploit-guard) <br/><br/>[Enable exploit protection in Intune](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/enable-exploit-protection#intune) |
|Configure Microsoft Defender SmartScreen to protect against malicious sites and files on the internet. <br/><br/> *Microsoft Edge should be installed on your organization's devices. For protection on Google Chrome and FireFox browsers, configure exploit protection.*  |[Microsoft Defender SmartScreen](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) <br/><br/>[Device restrictions: Microsoft Defender SmartScreen](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-smartscreen)<br/><br/>[Policy settings for managing SmartScreen in Intune](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings#mdm-settings)  |
|Configure Microsoft Defender Firewall to block unauthorized network traffic flowing into or out of your organization's devices  |[Endpoint protection: Microsoft Defender Firewall](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-firewall) <br/><br/> [Microsoft Defender Firewall with Advanced Security](https://docs.microsoft.com/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security) |
|Configure encryption and BitLocker to protect information on your organization's devices running Windows |[Endpoint protection: Windows Encryption](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#windows-encryption)<br/><br/>[BitLocker for Windows 10 devices](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) |
|Configure Microsoft Defender Credential Guard to protect against credential theft attacks |For Windows 10, Windows Server 2016, and Windows Server 2019, see [Endpoint protection: Microsoft Defender Credential Guard](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-credential-guard) <br/><br/>For Windows 7 SP1, Windows Server 2008 R2 SP1, Windows 8.1, and Windows Server 2012 R2, see [Mitigating Pass-the-Hash (PtH) Attacks and Other Credential Theft, Version 1 and 2](https://www.microsoft.com/download/details.aspx?id=36036)  |
|Configure your Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture. <br/><br/>You can also configure whether and what features end users can see in the Microsoft Defender Security Center. |[Endpoint protection: Microsoft Defender Security Center](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)<br/><br/>[Overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use) |
|Configure Microsoft Defender Application Control (also referred to as AppLocker) to choose whether to audit or trust apps on your organization's devices |[AppLocker overview](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/applocker/applocker-overview) <br/><br/>[Endpoint protection: MIcrosoft Defender Application Control](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-application-control)<br/><br/>[AppLocker CSP](https://docs.microsoft.com/windows/client-management/mdm/applocker-csp)|
|   |   |


