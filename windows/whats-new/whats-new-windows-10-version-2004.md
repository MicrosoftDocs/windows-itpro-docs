---
title: What's new in Windows 10, version 2004
description: New and updated IT Pro content about new features in Windows 10, version 2004 (also known as the Windows 10 May 2020 Update).
keywords: ["What's new in Windows 10", "Windows 10", "May 2020 Update"]
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

# What's new in Windows 10, version 2004 IT Pro content

**Applies to**
-   Windows 10, version 2004

This article lists new and updated features and content that are of interest to IT Pros for Windows 10, version 2004, also known as the Windows 10 May 2020 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1909.

> [!NOTE]
> The version number for this release (2004) is an even number to avoid confusion with major releases of Windows that happened in the year 2003.

## Security

### Windows Defender System Guard

In this release,  [Windows Defender System Guard](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows) enables an even *higher* level of [System Management Mode](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows#system-management-mode-smm-protection) (SMM) Firmware Protection that goes beyond checking the OS memory and secrets to additional resources like registers and IO.

With this improvement, the OS can detect a higher level of SMM compliance, enabling devices to be even more hardened against SMM exploits and vulnerabilities.

This feature is forward-looking and currently requires new Intel Comet Lake (CML) hardware available soon.

### Widows Defender Application Guard

[Windows Defender Application Guard](https://docs.microsoft.com/deployedge/microsoft-edge-security-windows-defender-application-guard) has been available for Chromium-based Edge since early 2020.

[Application Guard for Office](https://support.office.com/article/application-guard-for-office-9e0fb9c2-ffad-43bf-8ba3-78f785fdba46) is coming soon.

### FIDO2 security key support in Azure Active Directory

FIDO2 security key support in Azure Active Directory (Azure AD) is expanded to hybrid environments, enabling even more customers to take an important step in their journey towards passwordless environments

[Expanding Azure Active Directory support for FIDO2 preview to hybrid environments](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/expanding-azure-active-directory-support-for-fido2-preview-to/ba-p/981894)



### Microsoft BitLocker



## Cortana

Cortana: Microsoft says Cortana is evolving into a "personal productivity assistant" that can help you use Microsoft 365 apps. Cortana will be undocked from the taskbar, so you can move or resize it like any other app. An improved email feature lets you use Cortana to create emails (for example, you can say, "Send an email to Mary letting her know I'm running late" or "Show me emails from Jeff"). An improved calendar lets you do the same to create and ask about meetings. And Windows lets you use the assistant to open apps and adjust settings like brightness. 

## Virtual Desktops

Virtual desktops: Rename your virtual desktops, instead of getting stuck with the system-issued names like Desktop 1. 

## Bluetooth

Bluetooth pairing: Pairing Bluetooth devices with your machine will occur through notifications, so you won't need to go to the Settings app to finish pairing. 

## 2-in-1 PCs

New tablet experience for two-in-one convertible PCs: When you detach your two-in-one's keyboard, you'll still keep the familiar look of your desktop without interruption, while still optimizing the screen for touch. 

## Windows Hello for Business

For WHFB, we have Hybrid AD/AAD support and Phone number sign-in (MSA)

## Specialized displays

With this update, devices running Windows 10 Enterprise or Windows 10 Pro for Workstations with multiple displays can be configured to prevent Windows from using a display, making it available for a specialized purpose.

Examples include:
- Fixed-function arcade & gaming such as cockpit, driving, flight, and military simulators
- Medical imaging devices with custom panels, such as grayscale X-ray displays
- Video walls like those displayed in Microsoft Store
- Dedicated video monitoring
- Monitor panel testing and validation
- Independent Hardware Vendor (IHV) driver testing and validation
 
To prevent Windows from using a display, choose Settings > Display and click Advanced display settings. Select a display to view or change, and then set the Remove display from desktop setting to On.  The display will now be available for a specialized use.

## Servicing





### Windows Server Update Services (WSUS)

 

### Windows Update for Business (WUfB)





## Virtualization

### Containers on Windows

This update includes 5 fixes to allow the host to run down-level containers on up-level for process (Argon) isolation. Previously [Containers on Windows](https://docs.microsoft.com/virtualization/windowscontainers/) required matched host and container version. This limited Windows containers from supporting mixed-version container pod scenarios.

### Windows Sandbox

[Windows Sandbox](https://techcommunity.microsoft.com/t5/Windows-Kernel-Internals/Windows-Sandbox/ba-p/301849) is an isolated desktop environment where you can install software without the fear of lasting impact to your device. This feature was released with Windows 10, version 1903. Windows 10, version 2004 includes bugfixes and enables even more control over configuration.

[Windows Sandbox configuration](https://docs.microsoft.com/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file) includes:
- MappedFolders now supports a destination folder. Previously no destination could be specified, it was always mapped to the Sandbox desktop.
- AudioInput/VideoInput settings now enable you to share their host microphone or webcam with the Sandbox.
- ProtectedClient is a new security setting that runs the connection to the Sandbox with extra security settings enabled. This is disabled by default due to issues with copy & paste.
- PrinterRedirection: You can now enable and disable host printer sharing with the Sandbox.
- ClipboardRedirection: You can now enable and disable host clipboard sharing with the Sandbox.
- MemoryInMB adds the ability to specify the maximum memory usage of the Sandbox.

Windows Media Player is also added back to the Sandbox image in this release.


## Windows Virtual Desktop

Check out [Windows Virtual Desktop documentation](https://aka.ms/wvdgetstarted) for the latest and greatest information, as well as the [WVD Virtual Event from March](https://aka.ms/wvdvirtualevent).

## Deployment

### Windows Autopilot

VPN support for user-driven Hybrid Azure AD Join scenarios

### Windows Update for Business

Windows Update for Business Enhancements  
- Intune console updates: target version is now available allowing you to specify which Windows 10 OS Version you want devices to move to. Additionally, this capability enables you to keep devices on their current version until they reach end of service. Check it out in Intune, also available as a Group Policy (GP) and Configuration Service Provider (CSP) policy 
- Validation improvements: To ensure devices and end users stay productive and protected, Microsoft uses safeguard holds to block devices from updating when there are known issues that would impact that device. But we know this can interfere with validations, to better enable IT Administrators to validate on the latest release, we have created a new policy to enable admins to opt devices out of the built-in safeguard holds. 
- Documentation Updates: we have improved our Windows Update for Business documentation to better communicate how to utilize Windows Update for Business to manage Windows Updates to keep devices secure and end users productive.  


### Delivery Optimization

The following [Delivery Optimization](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization) policies are removed in this release:

- Percentage of Maximum Download Bandwidth (DOPercentageMaxDownloadBandwidth)
  - Reason: Replaced with separate policies for foreground and background
- Max Upload Bandwidth (DOMaxUploadBandwidth)
  - Reason: impacts uploads to internet peers only, which isn't used in Enterprises. 
- Absolute max throttle (DOMaxDownloadBandwidth)
  - Reason: separated to foreground and background

### Microsoft Endpoint Manager

See [What's new in Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/whats-new)

### SetupDiag

In Windows 10, version 2004, SetupDiag is now automatically installed.

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues.

During the upgrade process, Windows Setup will extract all its sources files to the **%SystemDrive%\$Windows.~bt\Sources** directory. With Windows 10, version 2004 and later, Windows Setup now also installs SetupDiag.exe to this directory. If there is an issue with the upgrade, SetupDiag is automatically run to determine the cause of the failure. If the upgrade process proceeds normally, this directory is moved under %SystemDrive%\Windows.Old for cleanup.

### Windows Assessment and Deployment Toolkit (ADK)

A new [Windows ADK](https://docs.microsoft.com/windows-hardware/get-started/adk-install) will be available for Windows 10, version 2004. You can use this version of the Windows ADK to deploy Windows 10, version 2004 and earlier versions of Windows.

### Microsoft Deployment Toolkit (MDT)

MDT version 8456 supports Windows 10, version 2004, but there is currently an issue that causes MDT to incorrectly detect that UEFI is present.

## Desktop Analytics

[Desktop Analytics](https://docs.microsoft.com/configmgr/desktop-analytics/overview) is a cloud-connected service, integrated with Configuration Manager, which gives you data-driven insights to the management of your Windows endpoints. It provides insight and intelligence that you can use to make more informed decisions about the update readiness of your Windows endpoints. Desktop Analytics requires a Windows E3 or E5 license, or a Microsoft 365 E3 or E5 license. For information about what's new, see [What's new in Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/whats-new).

## See Also

[What's New in Windows Server](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): General information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[What Windows 10, version 1909 Means for Developers](https://blogs.windows.com/windowsdeveloper/2019/10/16/what-windows-10-version-1909-means-for-developers/): New and updated features in Windows 10 that are of interest to developers.<br>
[What's new in Windows 10, version 1909 - Windows Insiders](https://docs.microsoft.com/windows-insider/at-home/whats-new-wip-at-home-1909): This list also includes consumer focused new features.<br>
[Features and functionality removed in Windows 10](https://docs.microsoft.com/windows/deployment/planning/windows-10-removed-features): Removed features.<br>
[Windows 10 features we’re no longer developing](https://docs.microsoft.com/windows/deployment/planning/windows-10-deprecated-features): Features that are not being developed.<br>
[How to get the Windows 10 November 2019 Update](https://aka.ms/how-to-get-1909): John Cable blog.<br>
[How to get Windows 10, Version 1909: Enablement Mechanics](https://aka.ms/1909mechanics): Mechanics blog.<br>
[What’s new for IT pros in Windows 10, version 1909](https://aka.ms/whats-new-in-1909): Windows IT Pro blog.<br>
