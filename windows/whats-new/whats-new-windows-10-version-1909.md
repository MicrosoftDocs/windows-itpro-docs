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

# What's new in Windows 10, version 1909 IT Pro content

**Applies to**
-   Windows 10, version 1909

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 version 1909, also known as the Windows 10 November 2019 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1903. 

## Servicing

The Windows 10 November 2019 Update (version 1909) will be a scoped set of features for select performance improvements, enterprise features and quality enhancements. To deliver these updates in a less disruptive fashion, we will deliver this feature update in a new way, using servicing technology (like the monthly update process) for customers running the May 2019 Update who choose to update to the new release. In other words, anyone running the May 2019 Update and updating to the new release will have a far faster update experience because the update will install like a monthly update.

For consumer or commercial users coming from versions of Windows 10 earlier than the May 2019 Update (version 1903), the process of updating to the November Update will be the same as it has been and work in a similar manner to previous Windows 10 feature updates, using the same tools and processes.

## Security

### Windows Defender Credential Guard

Windows Defender Credential Guard is now available for ARM64 devices, for additional protection against credential theft for enterprises deploying ARM64 devices in their organizations, such as Surface Pro X.

### Microsoft BitLocker

BitLocker and Mobile Device Management (MDM) with Azure Active Directory work together to protect your devices from accidental password disclosure. Now, a new key-rolling feature securely rotates recovery passwords on MDM managed devices. The feature is activated whenever Microsoft Intune/MDM tools or a recovery password is used to unlock a BitLocker protected drive. As a result, the recovery password will be better protected when users manually unlock a BitLocker drive.

### Windows Sandbox

Windows Sandbox is an isolated desktop environment where you can install software without the fear of lasting impact to your device. This feature is available in Windows 10, version 1903. In version 1909 we went one step further and now include support for mixed-version container scenarios, allowing you to run a sandbox in a different version of Windows 10 than the host operating system.

### Key-rolling or Key-rotation security improvements

Windows 10 19H2 update also includes two new features called 'Key-rolling' and 'Key-rotation' to enable secure delivery of Recovery passwords on MDM managed AAD devices and the process is based on the request from Microsoft Intune, MDM and similar tools.

'Key-rolling' and 'Key-rotation' could boost the security of Windows PCs by preventing accidental recovery of password.

Key-rolling or Key-rotation feature enables secure rolling of Recovery passwords on MDM managed AAD devices upon on demand request from Microsoft Intune/MDM tools or upon every time recovery password is used to unlock the BitLocker protected drive. This feature will help prevent accidental recovery password disclosure as part of manual BitLocker drive unlock by users.

## Deployment

## Windows 10 kiosk mode

Users can customize their experience in Kiosk mode, while keeping the devices locked down. For example, you can allow a user to switch to a different language while blocking access to network settings.

### Windows 10 Pro and Enterprise in S mode

 You can deploy and run traditional Win32 (desktop) apps without leaving the security of S mode by configuring the Windows 10 in S mode policy to support Win32 apps, and deploy them with Mobile Device Management (MDM) software such as Microsoft Intune1.

### SetupDiag

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) version 1.6.0.42 is available.

SetupDiag is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 53 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available. 

## Windows shell

### Calendar

You can now create new events in your Calendar app by clicking the date and time on the Taskbar.

### Cloud Clipboard

Let’s face it, you work on multiple devices. With this feature enabled, you can copy text, links, graphics – just about anything! – from one device, and paste it onto another. Or you can go back and view the history of what’s recently been copied. You can use Cloud Clipboard with either an Azure Active Directory or Microsoft Account (MSA). Cloud Clipboard requires users to be signed into all devices using either MSA or AAD. Users must be signed into the same account across all devices.

### Notifications

We’ve made several improvements to manage and configure notifications including:

- Added a “Manage Notifications” button to the top of Action Center
- Configure and turn off notifications directly from the notification, both from the banner and from Action Center.
- Set default to sorting notification senders by most recently shown notification, rather than sender name.

### Windows Search 

The Search box in Explorer is now powered by Windows Search, allowing results to include online OneDrive and OneDrive for Business content. Additionally, the results appear instantly as you type       .

## Desktop Analytics

Desktop Analytics is now generally available globally! Desktop Analytics is a cloud-connected service, integrated with Configuration Manager, which gives you data-driven insights to the management of your Windows endpoints. It provides insight and intelligence that you can use to make more informed decisions about the update readiness of your Windows endpoints. Desktop Analytics requires a Windows E3 or E5 license, or a Microsoft 365 E3 or E5 license.

## Microsoft Connected Cache

Together with Delivery Optimization, Microsoft Connected Cache installed on Windows Server or Linux can seamlessly offload your traffic to local sources, caching content efficiently at the byte range level. Connected Cache is configured as a “configure once and forget it” solution that transparently caches content that your devices on your network need. 

## Microsoft Endpoint Manager

As announced at Microsoft Ignite 

## Windows Virtual Desktop

Windows Virtual Desktop (WVD) is now generally available globally! Windows Virtual Desktop is a comprehensive desktop and app virtualization service running in the cloud. It’s the only virtual desktop infrastructure (VDI) that delivers simplified management, multi-session Windows 10, optimizations for Office 365 ProPlus, and support for Remote Desktop Services (RDS) environments. Deploy and scale your Windows desktops and apps on Azure in minutes, and get built-in security and compliance features. Windows Virtual Desktop requires a Microsoft E3 or E5 license, or a Microsoft 365 E3 or E5 license, as well as an Azure tenant. Each sold separately.

See 
https://blogs.windows.com/windowsexperience/2019/07/15/announcing-windows-10-insider-preview-build-18362-10005-19h2/

https://blogs.windows.com/windowsexperience/2019/08/08/announcing-windows-10-insider-preview-build-18362-10012-18362-10013-19h2/

https://blogs.windows.com/windowsexperience/2019/08/19/announcing-windows-10-insider-preview-build-18362-10014-18362-10015-19h2/


## Raw list (to be parsed)

### Insider list

https://docs.microsoft.com/windows-insider/at-home/whats-new-wip-at-home-1909

### Processor requirements

https://docs.microsoft.com/windows-hardware/design/minimum/windows-processor-requirements

### Windows 10 to Boost Performance via Favored CPU Core Optimization
Windows 10 19H2 will include optimizations to how instructions are processed by the CPU in order to increase the performance and reliability of the operating system and its applications.

When a CPU is manufactured, not all of the cores are created equal. Some of the cores may have slightly different voltage and power characteristics that could allow them to get a "boost" in performance. These cores are called "favored cores" as they can offer better performance then the other cores on the die.

With Intel Turbo Boost Max Technology 3.0, an operating system will use information stored in the CPU to identify which cores are the fastest and then push more of the CPU intensive tasks to those cores. According to Intel, this technology "delivers more than 15% better single-threaded performance".

## Security

Windows containers require matched host and container version. This restricts customers and limits Windows containers from supporting mixed-version container pod scenarios This update includes 5 fixes to address this and allow the host to run down-level containers on up-level for process (Argon) isolation.
Key-rolling or Key-rotation feature enables secure rolling of Recovery passwords on MDM managed AAD devices upon on demand request from Microsoft Intune/MDM tools or upon every time recovery password is used to unlock the BitLocker protected drive. This feature will help prevent accidental recovery password disclosure as part of manual BitLocker drive unlock by users.
We have enabled Windows Defender Credential Guard for ARM64 devices for additional protection against credential theft for enterprises deploying ARM64 devices in their organizations.
We have enabled the ability for enterprises to supplement the Windows 10 in S Mode policy to allow traditional Win32 (desktop) apps from Microsoft Intune.
We have added additional debugging capabilities for newer Intel processors. This is only relevant for hardware manufacturers.

## See Also

[What's New in Windows Server, version 1903](https://docs.microsoft.com/windows-server/get-started-19/whats-new-in-windows-server-1903): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): Review general information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[What's new in Windows 10](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-windows): See what’s new in Windows 10 hardware.<br>
[What's new in Windows 10 for developers](https://blogs.windows.com/buildingapps/2019/04/18/start-developing-on-windows-10-may-2019-update-today/#2Lp8FUFQ3Jm8KVcq.97): New and updated features in Windows 10 that are of interest to developers.
