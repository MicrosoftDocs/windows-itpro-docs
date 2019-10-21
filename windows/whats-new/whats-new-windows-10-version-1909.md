---
title: What's new in Windows 10, version 1909
description: New and updated IT Pro content about new features in Windows 10, version 1909 (also known as the Windows 10 November 2019 Update).
keywords: ["What's new in Windows 10", "Windows 10", "November 2019 Update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.author: greglin
manager: laurawi
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, version 1903 IT Pro content

**Applies to**
-   Windows 10, version 1903

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 version 1909, also known as the Windows 10 November 2019 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1903. 

See 
https://blogs.windows.com/windowsexperience/2019/07/15/announcing-windows-10-insider-preview-build-18362-10005-19h2/

https://blogs.windows.com/windowsexperience/2019/08/08/announcing-windows-10-insider-preview-build-18362-10012-18362-10013-19h2/

https://blogs.windows.com/windowsexperience/2019/08/19/announcing-windows-10-insider-preview-build-18362-10014-18362-10015-19h2/


## Raw list (to be parsed)

### Insider list

https://docs.microsoft.com/en-us/windows-insider/at-home/whats-new-wip-at-home-1909

### Processor requirements

https://docs.microsoft.com/en-us/windows-hardware/design/minimum/windows-processor-requirements

### Smaller update
will be a scoped set of features for select performance improvements, enterprise features, and quality enhancements.” In other words, expect a select set of bug fixes, performance tweaks, and a handful of business features.

If you’re sick of big Windows 10 updates every six months, Windows 10’s November 2019 Update (19H2) is the update for you! Installing this update will be more like installing a standard cumulative update like the updates that arrive on Patch Tuesday. It should be a small download with a fast installation process—no long reboot and purging of old Windows installations necessary.

---
The November 2019 Update will be the second semi-annual update arriving in 2019, and while it’ll include new features and improvements, unlike previous releases, this is expected to be a minor update available as a quality update, similar to a service pack.

According to the company, the new approach will help to complete the update on time, and it’ll be a less disruptive deployment as the Windows 10 version 1909 won’t require a full installation of the OS. However, because it’ll be an incremental update, devices will require the Windows 10 May 2019 Update before you can install the 19H2 update manually.

### Windows 10 to Boost Performance via Favored CPU Core Optimization
Windows 10 19H2 will include optimizations to how instructions are processed by the CPU in order to increase the performance and reliability of the operating system and its applications.

When a CPU is manufactured, not all of the cores are created equal. Some of the cores may have slightly different voltage and power characteristics that could allow them to get a "boost" in performance. These cores are called "favored cores" as they can offer better performance then the other cores on the die.

With Intel Turbo Boost Max Technology 3.0, an operating system will use information stored in the CPU to identify which cores are the fastest and then push more of the CPU intensive tasks to those cores. According to Intel, this technology "delivers more than 15% better single-threaded performance".

### Key-rolling or Key-rotation security improvements
Windows 10 19H2 update also includes two new features called 'Key-rolling' and 'Key-rotation' to enable secure delivery of Recovery passwords on MDM managed AAD devices and the process is based on the request from Microsoft Intune, MDM and similar tools.

'Key-rolling' and 'Key-rotation' could boost the security of Windows PCs by preventing accidental recovery of password.

## Stuff

Windows containers require matched host and container version. This restricts customers and limits Windows containers from supporting mixed-version container pod scenarios This update includes 5 fixes to address this and allow the host to run down-level containers on up-level for process (Argon) isolation.
Key-rolling or Key-rotation feature enables secure rolling of Recovery passwords on MDM managed AAD devices upon on demand request from Microsoft Intune/MDM tools or upon every time recovery password is used to unlock the BitLocker protected drive. This feature will help prevent accidental recovery password disclosure as part of manual BitLocker drive unlock by users.
We have enabled Windows Defender Credential Guard for ARM64 devices for additional protection against credential theft for enterprises deploying ARM64 devices in their organizations.
We have enabled the ability for enterprises to supplement the Windows 10 in S Mode policy to allow traditional Win32 (desktop) apps from Microsoft Intune.
We have added additional debugging capabilities for newer Intel processors. This is only relevant for hardware manufacturers.

### SetupDiag

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) version 1.6.0.42 is available.

SetupDiag is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 53 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available. 

## See Also

[What's New in Windows Server, version 1903](https://docs.microsoft.com/windows-server/get-started-19/whats-new-in-windows-server-1903): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): Review general information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[What's new in Windows 10](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-windows): See what’s new in Windows 10 hardware.<br>
[What's new in Windows 10 for developers](https://blogs.windows.com/buildingapps/2019/04/18/start-developing-on-windows-10-may-2019-update-today/#2Lp8FUFQ3Jm8KVcq.97): New and updated features in Windows 10 that are of interest to developers.
