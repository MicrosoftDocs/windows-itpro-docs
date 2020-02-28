---
title: Windows Defender Antivirus compatibility with other security products
description: Windows Defender Antivirus operates in different ways depending on what other security products you have installed, and the operating system you are using.
keywords: windows defender, atp, advanced threat protection, compatibility, passive mode
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 02/25/2020
ms.reviewer: 
manager: dansimp
---

# Windows Defender Antivirus compatibility

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Antivirus is automatically enabled and installed on endpoints and devices that are running Windows 10.

However, on endpoints and devices that are protected with a non-Microsoft antivirus or antimalware app, Windows Defender Antivirus will automatically disable itself.

If you are also using Microsoft Defender Advanced Threat Protection, then Windows Defender Antivirus will enter a passive mode. Important: Real time protection and and threats will not be remediated by Windows Defender Antivirus.

The following matrix illustrates the states that Windows Defender Antivirus will enter when third-party antivirus products or Microsoft Defender ATP are also used. 


|   Windows version   |                  Antimalware protection offered by                  | Organization enrolled in Microsoft Defender ATP |     Windows Defender Antivirus state     |
|---------------------|---------------------------------------------------------------------|-------------------------------------------------|-----------------------------------|
|     Windows 10      | A third-party product that is not offered or developed by Microsoft |                       Yes                       |           Passive mode            |
|     Windows 10      | A third-party product that is not offered or developed by Microsoft |                       No                        |      Automatic disabled mode      |
|     Windows 10      |                         Windows Defender Antivirus                         |                       Yes                       |            Active mode            |
|     Windows 10      |                         Windows Defender Antivirus                         |                       No                        |            Active mode            |
| Windows Server 2016 or 2019 | A third-party product that is not offered or developed by Microsoft |                       Yes                       | Active mode<sup>[[1](#fn1)]</sup> |
| Windows Server 2016 or 2019 | A third-party product that is not offered or developed by Microsoft |                       No                        | Active mode<sup>[[1](#fn1)]<sup>  |
| Windows Server 2016 or 2019 |                         Windows Defender Antivirus                         |                       Yes                       |            Active mode            |
| Windows Server 2016 or 2019 |                         Windows Defender Antivirus                         |                       No                        |            Active mode            |

(<a id="fn1">1</a>)  On Windows Server 2016 or 2019, Windows Defender Antivirus will not enter passive or disabled mode if you have also installed a third-party antivirus product. If you install a third-party antivirus product, you should [consider uninstalling Windows Defender Antivirus on Windows Server 2016 or 2019](windows-defender-antivirus-on-windows-server-2016.md#need-to-uninstall-windows-defender-antivirus) to prevent problems caused by having multiple antivirus products installed on a machine.

If you are Using Windows Server, version 1803 and Windows 2019, you can enable passive mode by setting this registry key: 
- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection` 
- Name: ForceDefenderPassiveMode 
- Value: 1

See [Windows Defender Antivirus on Windows Server 2016 and 2019](windows-defender-antivirus-on-windows-server-2016.md) for key differences and management options for Windows Server installations.


>[!IMPORTANT]
>Windows Defender Antivirus is only available on endpoints running Windows 10, Windows Server 2016, and Windows Server 2019.  
>  
>In Windows 8.1 and Windows Server 2012, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](https://technet.microsoft.com/library/hh508760.aspx), which is managed through Microsoft Endpoint Configuration Manager.  
>  
>Windows Defender is also offered for [consumer devices on Windows 8.1 and Windows Server 2012](https://technet.microsoft.com/library/dn344918#BKMK_WindowsDefender), although it does not provide enterprise-level management (or an interface on Windows Server 2012 Server Core installations). 


This table indicates the functionality and features that are available in each state:

State | Description | [Real-time protection](configure-real-time-protection-windows-defender-antivirus.md) and [cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md) | [Limited periodic scanning availability](limited-periodic-scanning-windows-defender-antivirus.md) | [File scanning and detection information](customize-run-review-remediate-scans-windows-defender-antivirus.md) | [Threat remediation](configure-remediation-windows-defender-antivirus.md) | [Security intelligence updates](manage-updates-baselines-windows-defender-antivirus.md)
:-|:-|:-:|:-:|:-:|:-:|:-:
Passive mode | Windows Defender Antivirus will not be used as the antivirus app, and threats will not be remediated by Windows Defender Antivirus. Files will be scanned and reports will be provided for threat detections which are shared with the Microsoft Defender ATP service.  | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark yes](images/svg/check-yes.svg)] | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark yes](images/svg/check-yes.svg)]
Automatic disabled mode | Windows Defender Antivirus will not be used as the antivirus app. Files will not be scanned and threats will not be remediated. | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark yes](images/svg/check-yes.svg)] | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark no](images/svg/check-no.svg)] 
Active mode | Windows Defender Antivirus is used as the antivirus app on the machine. All configuration made with Configuration Manager, Group Policy, Intune, or other management products will apply. Files will be scanned and threats remediated, and detection information will be reported in your configuration tool (such as Configuration Manager or the Windows Defender Antivirus app on the machine itself). | [!include[Check mark yes](images/svg/check-yes.svg)] | [!include[Check mark no](images/svg/check-no.svg)] | [!include[Check mark yes](images/svg/check-yes.svg)] | [!include[Check mark yes](images/svg/check-yes.svg)] | [!include[Check mark yes](images/svg/check-yes.svg)]

If you are enrolled in Microsoft Defender ATP and you are using a third party antimalware product then passive mode is enabled because [the service requires common information sharing from the Windows Defender Antivirus service](../microsoft-defender-atp/defender-compatibility.md) in order to properly monitor your devices and network for intrusion attempts and attacks. 

Automatic disabled mode is enabled so that if the protection offered by a third-party antivirus product expires or otherwise stops providing real-time protection from viruses, malware or other threats, Windows Defender Antivirus will automatically enable itself to ensure antivirus protection is maintained on the endpoint. It also allows you to enable [limited periodic scanning](limited-periodic-scanning-windows-defender-antivirus.md), which uses the Windows Defender Antivirus engine to periodically check for threats in addition to your main antivirus app.
    
In passive and automatic disabled mode, you can still [manage updates for Windows Defender Antivirus](manage-updates-baselines-windows-defender-antivirus.md), however you can't move Windows Defender Antivirus into the normal active mode if your endpoints have an up-to-date third-party product providing real-time protection from malware.

 If you uninstall the other product, and choose to use Windows Defender Antivirus to provide protection to your endpoints, Windows Defender Antivirus will automatically return to its normal active mode.

>[!WARNING]
>You should not attempt to disable, stop, or modify any of the associated services used by Windows Defender Antivirus, Microsoft Defender ATP, or the Windows Security app.
>  
>This includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and process. Manually modifying these services can cause severe instability on your endpoints and open your network to infections and attacks.
>
>It can also cause problems when using third-party antivirus apps and how their information is displayed in the [Windows Security app](windows-defender-security-center-antivirus.md).
    

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Windows Defender Antivirus on Windows Server 2016 and 2019](windows-defender-antivirus-on-windows-server-2016.md)
