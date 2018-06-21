---
title: Onboard machines to the Windows Defender ATP service
description: Onboard Windows 10 machines, servers, non-Windows machines and learn how to run a detection test.
keywords: onboarding, windows defender advanced threat protection onboarding, windows atp onboarding, sccm, group policy, mdm, local script, detection test
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 06/19/2018
---

# Onboard machines to the Windows Defender ATP service

**Applies to:**

- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Enterprise
- Windows 8.1 Pro
- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Server 2012 R2
- Windows Server 2016
- macOS
- Linux
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

You need to onboard to Windows Defender ATP before you can use the service.

For more information, see [Onboard your Windows 10 machines to Windows Defender ATP](https://www.youtube.com/watch?v=JT7VGYfeRlA&feature=youtu.be).

## Licensing requirements
Windows Defender Advanced Threat Protection requires one of the following Microsoft Volume Licensing offers:

  -	Windows 10 Enterprise E5
  -	Windows 10 Education E5
  - Microsoft 365 Enterprise E5 which includes Windows 10 Enterprise E5

For more information, see [Windows 10 Licensing](https://www.microsoft.com/en-us/Licensing/product-licensing/windows10.aspx#tab=2).

## Hardware and software requirements
### Supported Windows versions
- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Enterprise
- Windows 8.1 Pro
- Windows 10
  - Windows 10 Enterprise
  - Windows 10 Education
  - Windows 10 Pro
  - Windows 10 Pro Education
- Windows server
  - Windows Server 2012 R2
  - Windows Server 2016
  - Windows Server, version 1803

Machines on your network must be running one of these editions.

The hardware requirements for Windows Defender ATP on machines is the same as those for the supported editions.

> [!NOTE]
> Machines that are running mobile versions of Windows are not supported.


### Other supported operating systems
>[!NOTE]
>You'll need to know the exact Linux distros and macOS X versions that are compatible with Windows Defender ATP for the integration to work. 

-  macOS X
-  Linux


## Windows Defender Antivirus configuration requirement
The Windows Defender ATP agent depends on the ability of Windows Defender Antivirus to scan files and provide information about them. 

You must configure the signature updates on the Windows Defender ATP machines whether Windows Defender Antivirus is the active antimalware or not. For more information, see [Manage Windows Defender Antivirus updates and apply baselines](../windows-defender-antivirus/manage-updates-baselines-windows-defender-antivirus.md).

When Windows Defender Antivirus is not the active antimalware in your organization and you use the Windows Defender ATP service, Windows Defender Antivirus goes on passive mode. If your organization has disabled Windows Defender Antivirus through group policy or other methods, machines that are onboarded to Windows Defender ATP must be excluded from this group policy.

If you are onboarding servers and Windows Defender Antivirus is not the active antimalware on your servers, you shouldn't uninstall Windows Defender Antivirus. You'll need to configure it to run on passive mode. For more information, see [Onboard servers](configure-server-endpoints-windows-defender-advanced-threat-protection.md).


For more information, see [Windows Defender Antivirus compatibility](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md).


## In this section
Topic | Description
:---|:---
[Onboard Windows 10 machines](configure-endpoints-windows-defender-advanced-threat-protection.md) | You'll need to onboard machines for it to report to the Windows Defender ATP service. Learn about the tools and methods you can use to configure machines in your enterprise.
[Onboard previous versions of Windows](onboard-downlevel-windows-defender-advanced-threat-protection.md)| Onboard Windows 7 and Windows 8.1 machines to Windows Defender ATP. 
[Onboard servers](configure-server-endpoints-windows-defender-advanced-threat-protection.md) |  Onboard Windows Server 2012 R2 and Windows Server 2016 to Windows Defender ATP. 
[Onboard non-Windows machines](configure-endpoints-non-windows-windows-defender-advanced-threat-protection.md) | Windows Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in the Windows Defender ATP portal and better protect your organization's network. This experience leverages on a third-party security products' sensor data. 
[Run a detection test on a newly onboarded machine](run-detection-test-windows-defender-advanced-threat-protection.md) | Run a script on a newly onboarded machine to verify that it is properly reporting to the Windows Defender ATP service.
[Configure proxy and Internet settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md)| Enable communication with the Windows Defender ATP cloud service by configuring the proxy and Internet connectivity settings.
[Troubleshoot onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md) | Learn about resolving issues that might arise during onboarding.

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-belowfoldlink)