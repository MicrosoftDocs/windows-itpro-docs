---
title: What's new in Microsoft Defender ATP
description: See what features are generally available (GA) in the latest release of Microsoft Defender ATP, as well as security features in Windows 10 and Windows Server.
keywords: what's new in microsoft defender atp, ga, generally available, capabilities, available, new
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# What's new in Microsoft Defender ATP

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The following features are generally available (GA) in the latest release of Microsoft Defender ATP as well as security features in Windows 10 and Windows Server.

For more information preview features, see [Preview features](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/preview-windows-defender-advanced-threat-protection).


> [!TIP]
> RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader: 
> 
> ```https
> https://docs.microsoft.com/api/search/rss?search=%22Microsoft+Defender+ATP+as+well+as+security+features+in+Windows+10+and+Windows+Server.%22&locale=en-us
> ```

## September 2020
- [Microsoft Defender ATP for Android](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-android) <br> Microsoft Defender ATP now adds support for Android. Learn how to install, configure, update, and use Microsoft Defender ATP for Android.

## July 2020
- [Create indicators for certificates](manage-indicators.md) <br> Create indicators to allow or block certificates. 

## June 2020
- [Microsoft Defender ATP for Linux](microsoft-defender-atp-linux.md) <br> Microsoft Defender ATP now adds support for Linux. Learn how to install, configure, update, and use Microsoft Defender ATP for Linux.

- [Attack simulators in the evaluation lab](evaluation-lab.md#threat-simulator-scenarios) <br> Microsoft Defender ATP has partnered with various threat simulation platforms to give you convenient access to test the capabilities of the platform right from the within the portal.


## April 2020

- [Threat & Vulnerability Management API support](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/exposed-apis-list) <BR>Run Threat & Vulnerability Management-related API calls such as get your organization's threat exposure score or device secure score, software and device vulnerability inventory, software version distribution, device vulnerability information, security recommendation information. Learn more from this [Microsoft Tech Community blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/threat-amp-vulnerability-management-apis-are-now-generally/ba-p/1304615).

## November-December 2019

- [Microsoft Defender ATP for Mac](microsoft-defender-atp-mac.md) <BR> Microsoft Defender ATP for Mac brings the next-generation protection to Mac devices. Core components of the unified endpoint security platform will now be available for Mac devices, including [endpoint detection and response](endpoint-detection-response-mac-preview.md).
 
- [Threat & Vulnerability Management application and application version end-of-life information](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation) <BR>Applications and application versions which have reached their end-of-life are tagged or labeled as such so you are aware that they will no longer be supported, and can take action to either uninstall or replace. Doing so will help lessen the risks related to various vulnerability exposures due to unpatched applications.

- [Threat & Vulnerability Management Advanced Hunting Schemas](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-schema-reference) <BR>Use the Threat & Vulnerability Management tables in the Advanced hunting schema to query about software inventory, vulnerability knowledgebase, security configuration assessment, and security configuration knowledgebase. 
 
 - [Threat & Vulnerability Management role-based access controls](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group) <BR>Use the new permissions to allow maximum flexibility to create SecOps-oriented roles, Threat & Vulnerability Management-oriented roles, or hybrid roles so only authorized users are accessing specific data to do their task. You can also achieve even further granularity by specifying whether a Threat & Vulnerability Management role can only view vulnerability-related data, or can create and manage remediation and exceptions.

## October 2019

- [Indicators for IP addresses, URLs/Domains](manage-indicators.md) <BR> You can now allow or block URLs/domains using your own threat intelligence. 


- [Microsoft Threat Experts - Experts on Demand](microsoft-threat-experts.md) <BR> You now have the option to consult with Microsoft Threat Experts from several places in the portal to help you in the context of your investigation.   
 
- [Connected Azure AD applications](connected-applications.md)<br> The Connected applications page provides information about the Azure AD applications connected to Microsoft Defender ATP in your organization. 

- [API Explorer](api-explorer.md)<br> The API explorer makes it easy to construct and perform API queries, test and send requests for any available Microsoft Defender ATP API endpoint.


## September 2019

- [Tamper Protection settings using Intune](../microsoft-defender-antivirus/prevent-changes-to-security-settings-with-tamper-protection.md#turn-tamper-protection-on-or-off-for-your-organization-using-intune)<br/>You can now turn Tamper Protection on (or off) for your organization in the Microsoft 365 Device Management Portal (Intune).

- [Live response](live-response.md)<BR> Get instantaneous access to a device using a remote shell connection. Do in-depth investigative work and take immediate response actions to promptly contain identified threats - real-time.

- [Evaluation lab](evaluation-lab.md) <BR> The Microsoft Defender ATP evaluation lab is designed to eliminate the complexities of device and environment configuration so that you can
 focus on evaluating the capabilities of the platform, running simulations, and seeing the prevention, detection, and remediation features in action.

- [Windows Server 2008 R2 SP1](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-server-endpoints#windows-server-2008-r2-sp1--windows-server-2012-r2-and-windows-server-2016) <BR> You can now onboard Windows Server 2008 R2 SP1.


## June 2019

- [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) <BR> A new built-in capability that uses a risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.
  
- [Device health and compliance report](machine-reports.md)  The device health and compliance report provides high-level information about the devices in your organization.

## May 2019

- [Threat protection reports](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-protection-reports-windows-defender-advanced-threat-protection)<BR>The threat protection report provides high-level information about alerts generated in your organization. 


- [Microsoft Threat Experts](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/microsoft-threat-experts)<BR> Microsoft Threat Experts is the new managed threat hunting service in Microsoft Defender ATP that provides proactive hunting, prioritization, and additional context and insights that further empower security operations centers (SOCs) to identify and respond to threats quickly and accurately. It provides additional layer of expertise and optics that Microsoft customers can utilize to augment security operation capabilities as part of Microsoft 365.  

- [Indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/ti-indicator) <BR> APIs for indicators are now generally available. 


- [Interoperability](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/partner-applications) <BR> Microsoft Defender ATP supports third-party applications to help enhance the detection, investigation, and threat intelligence capabilities of the platform.


## April 2019
- [Microsoft Threat Experts Targeted Attack Notification capability](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts#targeted-attack-notification) <BR> Microsoft Threat Experts' Targeted Attack Notification alerts are tailored to organizations to provide as much information as can be quickly delivered thus bringing attention to critical threats in their network, including the timeline, scope of breach, and the methods of intrusion.

- [Microsoft Defender ATP API](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/apis-intro) <BR> Microsoft Defender ATP exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Microsoft Defender ATP capabilities. 



## February 2019
- [Incidents](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/incidents-queue) <BR> Incident is a new entity in Microsoft Defender ATP that brings together all relevant alerts and related entities to narrate the broader attack story, giving analysts better perspective on the purview of complex threats. 

- [Onboard previous versions of Windows](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/onboard-downlevel-windows-defender-advanced-threat-protection)<BR> Onboard supported versions of Windows devices so that they can send sensor data to the Microsoft Defender ATP sensor.


## October 2018
- [Attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)<BR>All Attack surface reduction rules are now supported on Windows Server 2019.

- [Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard)<BR> Controlled folder access is now supported on Windows Server 2019.

- [Custom detection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-custom-detections)<BR>With custom detections, you can create custom queries to monitor events for any kind of behavior such as suspicious or emerging threats. This can be done by leveraging the power of advanced hunting through the creation of custom detection rules. 

- [Integration with Azure Security Center](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-server-endpoints-windows-defender-advanced-threat-protection#integration-with-azure-security-center)<BR> Microsoft Defender ATP integrates with Azure Security Center to provide a comprehensive server protection solution. With this integration Azure Security Center can leverage the power of Microsoft Defender ATP to provide improved threat detection for Windows Servers.

- [Managed security service provider (MSSP) support](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/mssp-support-windows-defender-advanced-threat-protection)<BR> Microsoft Defender ATP adds support for this scenario by providing MSSP integration. The integration will allow MSSPs to take the following actions: Get access to MSSP customer's Microsoft Defender Security Center portal, fetch email notifications, and fetch alerts through security information and event management (SIEM) tools.

- [Removable device control](https://cloudblogs.microsoft.com/microsoftsecure/2018/12/19/windows-defender-atp-has-protections-for-usb-and-removable-devices/)<BR>Microsoft Defender ATP provides multiple monitoring and control features to help prevent threats from removable devices, including new settings to allow or block specific hardware IDs.

- [Support for iOS and Android devices](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-endpoints-non-windows-windows-defender-advanced-threat-protection#turn-on-third-party-integration)<BR> iOS and Android devices are now supported and can be onboarded to the service.

- [Threat analytics](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-analytics)<BR>
Threat Analytics is a set of interactive reports published by the Microsoft Defender ATP research team as soon as emerging threats and outbreaks are identified. The reports help security operations teams assess impact on their environment and provides recommended actions to contain, increase organizational resilience, and prevent specific threats.

- New in Windows 10 version 1809, there are two new attack surface reduction rules: 
  - Block Adobe Reader from creating child processes
  - Block Office communication application from creating child processes.
  
- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)
    - Antimalware Scan Interface (AMSI) was extended to cover Office VBA macros as well. [Office VBA + AMSI: Parting the veil on malicious macros](https://cloudblogs.microsoft.com/microsoftsecure/2018/09/12/office-vba-amsi-parting-the-veil-on-malicious-macros/).
    - Microsoft Defender Antivirus, new in Windows 10 version 1809, can now [run within a sandbox](https://www.microsoft.com/security/blog/2018/10/26/windows-defender-antivirus-can-now-run-in-a-sandbox) (preview), increasing its security.
    - [Configure CPU priority settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-advanced-scan-types-microsoft-defender-antivirus) for Microsoft Defender Antivirus scans.


  
## March 2018
- [Advanced Hunting](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection) <BR>
Query data using advanced hunting in Microsoft Defender ATP.

- [Attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)<BR>
    New attack surface reduction rules: 
  - Use advanced protection against ransomware
  - Block credential stealing from the Windows local security authority subsystem (lsass.exe)
  - Block process creations originating from PSExec and WMI commands
  - Block untrusted and unsigned processes that run from USB
  - Block executable content from email client and webmail

- [Automated investigation and remediation](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)<BR> Use Automated investigations to investigate and remediate threats.

    >[!NOTE]
    >Available from Windows 10, version 1803 or later.

- [Conditional Access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection) <br> Enable conditional access to better protect users, devices, and data.

- [Microsoft Defender ATP Community center](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/community-windows-defender-advanced-threat-protection)<BR> 
    The Microsoft Defender ATP Community Center is a place where community members can learn, collaborate, and share experiences about the product. 

- [Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/enable-controlled-folders-exploit-guard)<BR>
You can now block untrusted processes from writing to disk sectors using Controlled Folder Access.

- [Onboard non-Windows devices](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-endpoints-non-windows-windows-defender-advanced-threat-protection)<BR>
    Microsoft Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft Defender Security Center and better protect your organization's network.

- [Role-based access control (RBAC)](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)<BR>
    Using role-based access control (RBAC), you can create roles and groups within your security operations team to grant appropriate access to the portal.


- [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10)<BR>
Microsoft Defender Antivirus now shares detection status between M365 services and interoperates with Microsoft Defender ATP. For more information, see [Use next-gen technologies in Microsoft Defender Antivirus through cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus).

    Block at first sight can now block non-portable executable files (such as JS, VBS, or macros) as well as executable files. For more information, see [Enable block at first sight](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus).


