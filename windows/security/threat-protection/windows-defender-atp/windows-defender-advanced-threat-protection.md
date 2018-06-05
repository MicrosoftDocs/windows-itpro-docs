---
title: Windows Defender Advanced Threat Protection 
description: Windows Defender Advanced Threat Protection is an enterprise security service that helps detect and respond to possible cybersecurity threats related to advanced persistent threats.
keywords: introduction to Windows Defender Advanced Threat Protection, introduction to Windows Defender ATP, cybersecurity, advanced persistent threat, enterprise security, machine behavioral sensor, cloud security, analytics, threat intelligence
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/24/2018
---

# Windows Defender Advanced Threat Protection

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-main-abovefoldlink)
>
>For more info about Windows 10 Enterprise Edition features and functionality, see [Windows 10 Enterprise edition](https://www.microsoft.com/WindowsForBusiness/buy).


---

# Windows Defender Advanced Threat Protection

Windows Defender Advanced Threat Protection (Windows Defender ATP) is a unified endpoint security platform using built-in security technologies working together and powered by the cloud.

![Windows Defender ATP service components](images/WDATP-components.png)

Windows Defender ATP offers a comprehensive approach in securing enterprise networks by offerring an end-to-end stack of security capabilities. 


The attack surface reduction set of capabilities provide the first line of defense in the stack. By ensuring configuration settings are properly set and exploit mitigation techniques are applied, these set of capabilities resist attacks and exploitations. 

To further reinforce the security perimeter of your network, Windows Defender ATP uses next generation protection designed to catch all types of emerging threats.

Endpoint detection and response capabilities are put in place to detect, investigate, and respond to advanced threats that may have made it past the first two security security pillars. 

In conjunction with being able to quickly respond to advanced attacks, Windows Defender ATP offers automatic investigation and remediation capabilities that help reduce the volume of alerts in minutes at scale. 

Windows Defender ATP also provides a security posture capability to help you dynamically assess the security state of your enterprise network, identify unprotected systems, and take recommended actions to improve the overall security state of your network.


The following table can help you better understand how capabilities align within the Windows Defender ATP offering:


 Attack surface reduction | Next generation protection | Endpoint detection and response | Auto investigation and remediation | Security posture 
:---|:---|:---|:---|:---
[Windows Defender SmartScreen](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-overview) OTHER PRODUCTS?? <br> OR <br> Hardware based isolation<br><br> Application control<br><br> Exploit protection<br><br> Network protection<br><br> Controlled folder access | [Windows Defender Antivirus](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) <br> OR <br> Web protection <br><br> Machine learning <br><br> Script and memory attack protection <br><br> Antivirus <br><br> Runtime emulator<br><br> Threat intelligence<br><br> URL/IP reputation <br><br> Sandbox service | Deep operating system recording sensor <br><br> Machine learning, behavioral and anomaly detection <br><br> Response containment <br><br> Realtime and historical threat hunting <br><br> Threat intelligence and custom detections | Forensic collection <br><br> Response orchestration <br><br> Historical endpoint data <br><br> Artificial intelligence reponse playbooks | Asset inventory <br> Operating system baseline compliance <br><br> Recommended improvement actions<br> <br> Secure score <br><br> Threat analytics <br><br> Reporting and trends

These capabilities are available across multiple products that make up the Windows Defender ATP platform. For more information on how to leverage all the Windows Defender ATP capabilities, see [Threat protection](https://docs.microsoft.com/en-us/windows/security/threat-protection/index).







======================================================================

Windows Defender Advanced Threat Protection (Windows Defender ATP) is a security service that enables enterprise customers to detect, investigate, and respond to advanced threats on their networks.

Get a quick, but in-depth overview of Windows Defender ATP for Windows 10 and the new capabilities in Windows 10, version 1703 see [Windows Defender ATP for Windows 10 Creators Update](https://technet.microsoft.com/en-au/windows/mt782787).

Windows Defender ATP uses the following combination of technology built into Windows 10 and Microsoft's robust cloud service:

-   **Endpoint behavioral sensors**: Embedded in Windows 10, these sensors
    collect and process behavioral signals from the operating system
    (for example, process, registry, file, and network communications)
    and sends this sensor data to your private, isolated, cloud instance of Windows Defender ATP.


-   **Cloud security analytics**: Leveraging big-data, machine-learning, and
    unique Microsoft optics across the Windows ecosystem (such as the
    [Microsoft Malicious Software Removal Tool](https://www.microsoft.com/en-au/download/malicious-software-removal-tool-details.aspx),
    enterprise cloud products (such as Office 365), and online assets
    (such as Bing and SmartScreen URL reputation), behavioral signals
    are translated into insights, detections, and recommended responses
    to advanced threats.

-   **Threat intelligence**: Generated by Microsoft hunters, security teams,
    and augmented by threat intelligence provided by partners, threat
    intelligence enables Windows Defender ATP to identify attacker
    tools, techniques, and procedures, and generate alerts when these
    are observed in collected sensor data.

    ![Windows Defender ATP service component](images/components.png)

Machine investigation capabilities in this service let you drill down
into security alerts and understand the scope and nature of a potential
breach. You can submit files for deep analysis and receive the results
without leaving the [Windows Defender ATP portal](https://securitycenter.windows.com). The automated investigation and remediation capability reduces the volume of alerts by leveraging various inspection algorithms to resolve breaches.

Windows Defender ATP works with existing Windows security technologies
on machines, such as Windows Defender Antivirus, AppLocker, and Windows Defender Device Guard. It
can also work side-by-side with third-party security solutions and
antimalware products.

Windows Defender ATP leverages Microsoft technology and expertise to
detect sophisticated cyber-attacks, providing:

- Behavior-based, cloud-powered, advanced attack detection

    Finds the attacks that made it past all other defenses (post breach detection), provides actionable, correlated alerts for known and unknown adversaries trying to hide their activities on machines.

- Rich timeline for forensic investigation and mitigation

    Easily investigate the scope of breach or suspected behaviours on any machine through a rich machine timeline. File, URLs, and network connection inventory across the network. Gain additional insight using deep collection and analysis (“detonation”) for any file or URLs.

- Built in unique threat intelligence knowledge base

    Unparalleled threat optics provides actor details and intent context for every threat intel-based detection – combining first and third-party intelligence sources.

- Automated investigation and remediation

    Significantly reduces alert volume by leveraging inspection algorithms used by analysts to examine alerts and take remediation action. 

## In this section

Topic | Description
:---|:---
Get started  |  Learn about the minimum requirements, validate licensing and complete setup, know about preview features, understand data storage and privacy, and how to assign user access to the portal.
[Onboard machines](onboard-configure-windows-defender-advanced-threat-protection.md) | Learn about onboarding client, server, and non-Windows machines. Learn how to run a detection test, configure proxy and Internet connectivity settings, and how to troubleshoot potential onboarding issues.
[Understand the Windows Defender ATP portal](use-windows-defender-advanced-threat-protection.md) | Understand the Security operations, Secure Score, and Threat analytics dashboards as well as how to navigate the portal.
Investigate and remediate threats | Investigate alerts, machines, and take response actions to remediate threats.
API and SIEM support | Use the supported APIs to pull and create custom alerts, or automate workflows. Use the supported SIEM tools to pull alerts from the Windows Defender ATP portal.
Reporting | Create and build Power BI reports using Windows Defender ATP data.
Check service health and sensor state | Verify that the service is running and check the sensor state on machines.
[Configure Windows Defender settings](preferences-setup-windows-defender-advanced-threat-protection.md) | Configure general settings, turn on the preview experience, notifications, and enable other features.
[Access the Windows Defender ATP Community Center](community-windows-defender-advanced-threat-protection.md) | Access the Windows Defender ATP Community Center to learn, collaborate, and share experiences about the product.
[Troubleshoot Windows Defender ATP](troubleshoot-windows-defender-advanced-threat-protection.md) | This section addresses issues that might arise as you use the Windows Defender Advanced Threat service.
[Windows Defender Antivirus compatibility with Windows Defender ATP](defender-compatibility-windows-defender-advanced-threat-protection.md) | Understand how Windows Defender Antivirus integrates with Windows Defender ATP. 


## Related topic
[Windows Defender ATP helps detect sophisticated threats](https://www.microsoft.com/itshowcase/Article/Content/854/Windows-Defender-ATP-helps-detect-sophisticated-threats)
