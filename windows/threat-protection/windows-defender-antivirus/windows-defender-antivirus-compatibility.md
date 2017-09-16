---
title: Windows Defender Antivirus compatibility with other security products
description: Windows Defender AV operates in different ways depending on what other security products you have installed, and the operating system you are using.
keywords: windows defender, atp, advanced threat protection, compatibility, passive mode
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: iaanw
ms.author: iawilt
ms.date: 09/07/2017
---


# Windows Defender Antivirus compatibility


**Applies to:**

- Windows 10
- Windows Server 2016

**Audience**

- Enterprise security administrators


Windows Defender Antivirus is automatically enabled and installed on endpoints and devices that are running Windows 10.

However, on endpoints and devices that are protected with a non-Microsoft antivirus or antimalware app, Windows Defender AV will automatically disable itself. 

If you are also using Windows Defender Advanced Threat Protection, then Windows Defender AV will enter a passive mode.

On Windows Server 2016, Windows Defender AV will not enter passive or disabled mode if you have also installed a third-party antivirus product. See [Windows Defender Antivirus on Windows Server 2016](windows-defender-antivirus-on-windows-server-2016.md) topic for key differences and management options for Windows Server installations.

The following matrix illustrates how Windows Defender AV operates when third-party antivirus products or Windows Defender ATP are also used. 

Windows version | Antimalware protection offered by | Organization enrolled in Windows Defender ATP | Windows Defender AV state
-|-|-|-
Windows 10 | A third-party product that is not offered or developed by Microsoft | Yes | Passive mode
Windows 10 | A third-party product that is not offered or developed by Microsoft | No | Automatic disabled mode
Windows 10 | Windows Defender AV | Yes | Active mode
Windows 10 | Windows Defender AV | No | Active mode
Windows Server 2016 | A third-party product that is not offered or developed by Microsoft | Yes | Active mode
Windows Server 2016 | A third-party product that is not offered or developed by Microsoft | No | Active mode
Windows Server 2016 | Windows Defender AV | Yes | Active mode
Windows Server 2016 | Windows Defender AV | No | Active mode


>[!IMPORTANT]
>Windows Defender AV is only available on endpoints running Windows 10 or Windows Server 2016.  
>  
>In Windows 8.1 and Windows Server 2012, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](https://technet.microsoft.com/en-us/library/hh508760.aspx), which is managed through System Center Configuration Manager.  
>  
>Windows Defender is also offered for [consumer devices on Windows 8.1 and Windows Server 2012](https://technet.microsoft.com/en-us/library/dn344918#BKMK_WindowsDefender), although it does not provide enterprise-level management (or an interface on Windows Server 2012 Server Core installations). 




In the passive and automatic disabled modes, Windows Defender AV will continue to run (using the *msmpeng.exe* process), and will continue to be updated, however there will be no Windows Defender user interface, scheduled scans won't run, and Windows Defender AV will not provide real-time protection from malware:

1. Passive mode is enabled if you are enrolled in Windows Defender ATP because [the service requires common information sharing from the Windows Defender AV service](../windows-defender-atp/defender-compatibility-windows-defender-advanced-threat-protection.md) in order to properly monitor your devices and network for intrusion attempts and attacks. 
2. Automatic disabled mode is enabled so that if the protection offered by a third-party antivirus product goes out of date, is not updated, or stops providing real-time protection from viruses, malware, and other threats, Windows Defender AV will automatically enable itself to ensure antivirus protection is maintained on the endpoint. 
    
    Therefore, the Windows Defender AV service needs to update itself to ensure it has up-to-date protection coverage in case it needs to automatically enable itself.

    You can still [manage updates for Windows Defender](manage-updates-baselines-windows-defender-antivirus.md), however you can't move Windows Defender AV into the normal active mode if your endpoints have an up-to-date third-party product providing real-time protection from malware.

    If you uninstall the other product, and choose to use Windows Defender AV to provide protection to your endpoints, Windows Defender AV will automatically return to its normal active mode.

>[!WARNING]
>You should not attempt to disable, stop, or modify any of the associated services used by Windows Defender AV, Windows Defender ATP, or the Windows Defender Security Center app.
>  
>This includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and process. Manually modifying these services can cause severe instability on your endpoints and open your network to infections and attacks.
    

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Windows Defender Antivirus on Windows Server 2016](windows-defender-antivirus-on-windows-server-2016.md)