---
title: What's new in Windows 10, version 2004
description: New and updated features in Windows 10, version 2004 (also known as the Windows 10 May 2020 Update).
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

# What's new in Windows 10, version 2004 for IT Pros

**Applies to**
-   Windows 10, version 2004

This article lists new and updated features and content that are of interest to IT Pros for Windows 10, version 2004, also known as the Windows 10 May 2020 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1909.

To download and install Windows 10, version 2004, use Windows Update (**Settings > Update & Security > Windows Update**). For more information, see this [video](https://aka.ms/Windows-10-May-2020-Update).

> [!NOTE]
> The month indicator for this release is 04 instead of 03 to avoid confusion with Windows releases in the year 2003.

## Security

### Windows Hello

- Windows Hello is now supported as Fast Identity Online 2 (FIDO2) authenticator across all major browsers including Chrome and Firefox.

- You can now enable passwordless sign-in for Microsoft accounts on your Windows 10 device by going to **Settings > Accounts > Sign-in options**, and selecting **On** under **Make your device passwordless**. Enabling passwordless sign in will switch all Microsoft accounts on your Windows 10 device to modern authentication with Windows Hello Face, Fingerprint, or PIN.

- Windows Hello PIN sign-in support is [added to Safe mode](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#windows-hello-pin-in-safe-mode-build-18995).

- Windows Hello for Business now has Hybrid Azure Active Directory support and phone number sign-in (MSA). FIDO2 security key support is expanded to Azure Active Directory hybrid environments, enabling enterprises with hybrid environments to take advantage of [passwordless authentication](https://docs.microsoft.com/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises). For more information, see [Expanding Azure Active Directory support for FIDO2 preview to hybrid environments](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/expanding-azure-active-directory-support-for-fido2-preview-to/ba-p/981894).

### Windows Defender System Guard

In this release,  [Windows Defender System Guard](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows) enables an even *higher* level of [System Management Mode](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows#system-management-mode-smm-protection) (SMM) Firmware Protection that goes beyond checking the OS memory and secrets to additional resources like registers and IO.

With this improvement, the OS can detect a higher level of SMM compliance, enabling devices to be even more hardened against SMM exploits and vulnerabilities. This feature is forward-looking and currently requires new hardware available soon.

 ![System Guard](images/system-guard2.png)

### Windows Defender Application Guard

[Windows Defender Application Guard](https://docs.microsoft.com/deployedge/microsoft-edge-security-windows-defender-application-guard) has been available for Chromium-based Edge since early 2020.

Note: [Application Guard for Office](https://support.office.com/article/application-guard-for-office-9e0fb9c2-ffad-43bf-8ba3-78f785fdba46) is coming soon.

## Deployment

### Windows Setup

Windows Setup [answer files](https://docs.microsoft.com/windows-hardware/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs) (unattend.xml) have [improved language handling](https://oofhours.com/2020/06/01/new-in-windows-10-2004-better-language-handling/).

Improvements in Windows Setup with this release also include:
- Reduced offline time during feature updates
- Improved controls for reserved storage
- Improved controls and diagnostics
- New recovery options

For more information, see Windows Setup enhancements in the [Windows IT Pro Blog](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/pilot-new-features-with-the-windows-insider-program-for-business/ba-p/1220464).

### SetupDiag

In Windows 10, version 2004, SetupDiag is now automatically installed.

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues.

During the upgrade process, Windows Setup will extract all its sources files to the **%SystemDrive%\$Windows.~bt\Sources** directory. With Windows 10, version 2004 and later, Windows Setup now also installs SetupDiag.exe to this directory. If there is an issue with the upgrade, SetupDiag is automatically run to determine the cause of the failure. If the upgrade process proceeds normally, this directory is moved under %SystemDrive%\Windows.Old for cleanup.

### Windows Autopilot

With this release, you can configure [Windows Autopilot user-driven](https://docs.microsoft.com/windows/deployment/windows-autopilot/user-driven) Hybrid Azure Active Directory join with VPN support. This support is also backported to Windows 10, version 1909 and 1903.

If you configure the language settings in the Autopilot profile and the device is connected to Ethernet, all scenarios will now skip the language, locale, and keyboard pages.  In previous versions, this was only supported with self-deploying profiles.

### Microsoft Endpoint Manager

An in-place upgrade wizard is available in Configuration Manager. For more information, see [Simplifying Windows 10 deployment with Configuration Manager](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplifying-windows-10-deployment-with-configuration-manager/ba-p/1214364).

Also see [What's new in Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/whats-new).

### Windows Assessment and Deployment Toolkit (ADK)

Download the Windows ADK and Windows PE add-on for Windows 10, version 2004 here: [Download and install the Windows ADK](https://docs.microsoft.com/windows-hardware/get-started/adk-install).

For information about what's new in the ADK, see [What's new in the Windows ADK for Windows 10, version 2004](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-kits-and-tools#whats-new-in-the-windows-adk-for-windows-10-version-2004).

### Microsoft Deployment Toolkit (MDT)

MDT version 8456 supports Windows 10, version 2004, but there is currently an issue that causes MDT to incorrectly detect that UEFI is present.  There is an [update available](https://support.microsoft.com/help/4564442/windows-10-deployments-fail-with-microsoft-deployment-toolkit) for MDT to address this issue.

For the latest information about MDT, see the [MDT release notes](https://docs.microsoft.com/mem/configmgr/mdt/release-notes).

## Servicing

### Delivery Optimization

Windows PowerShell cmdlets have been improved:

- **Get-DeliveryOptimizationStatus** has added the  **-PeerInfo** option for a real-time peak behind the scenes on peer-to-peer activity (for example the peer IP Address, bytes received / sent).
- **Get-DeliveryOptimizationLogAnalysis** is a new cmdlet that provides a summary of the activity in your DO log (# of downloads, downloads from peers, overall peer efficiency). Use the **-ListConnections** option to for in-depth look at peer-to-peer connections.
- **Enable-DeliveryOptimizationVerboseLogs** is a new cmdlet that enables a greater level of logging detail to assist in troubleshooting.

Additional improvements:
- Enterprise network [throttling is enhanced](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#new-download-throttling-options-for-delivery-optimization-build-18917) to optimize foreground vs. background throttling.
- Automatic cloud-based congestion detection is available for PCs with cloud service support.

The following [Delivery Optimization](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization) policies are removed in this release:

- Percentage of Maximum Download Bandwidth (DOPercentageMaxDownloadBandwidth)
  - Reason: Replaced with separate policies for foreground and background.
- Max Upload Bandwidth (DOMaxUploadBandwidth)
  - Reason: Impacts uploads to internet peers only, which isn't used in enterprises.
- Absolute max throttle (DOMaxDownloadBandwidth)
  - Reason: separated to foreground and background

### Windows Update for Business

[Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb) enhancements in this release include:

- Intune console updates: target version is now available allowing you to specify which version of Windows 10 you want devices to move to. Additionally, this capability enables you to keep devices on their current version until they reach end of service. Check it out in Intune, also available as a Group Policy and Configuration Service Provider (CSP) policy.

- Validation improvements: To ensure devices and end users stay productive and protected, Microsoft uses safeguard holds to block devices from updating when there are known issues that would impact that device. Also, to better enable IT administrators to validate on the latest release, we have created a new policy that enables admins to opt devices out of the built-in safeguard holds.

- Update less: Last year, we [changed update installation policies](https://blogs.windows.com/windowsexperience/2019/04/04/improving-the-windows-10-update-experience-with-control-quality-and-transparency/#l2jH7KMkOkfcWdBs.97) for Windows 10 to only target devices running a feature update version that is nearing end of service. As a result, many devices are only updating once a year. To enable all devices to make the most of this policy change, and to prevent confusion, we have removed deferrals from the Windows Update settings **Advanced Options** page starting on Windows 10, version 2004. If you wish to continue leveraging deferrals, you can use local Group Policy (**Computer Configuration > Administrative Templates > Windows Components > Windows Update > Windows Update for Business > Select when Preview builds and Feature Updates are received** or **Select when Quality Updates are received**). For more information about this change, see [Simplified Windows Update settings for end users](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplified-windows-update-settings-for-end-users/ba-p/1497215).

## Networking

### Wi-Fi 6 and WPA3

Windows now supports the latest Wi-Fi standards with [Wi-Fi 6 and WPA3](https://support.microsoft.com/help/4562575/windows-10-faster-more-secure-wifi). Wi-Fi 6 gives you better wireless coverage and performance with added security. WPA3 provides improved Wi-Fi security and secures open networks.

### TEAP

In this release, Tunnel Extensible Authentication Protocol (TEAP) has been added as an authentication method to allow chaining together multiple credentials into a single EAP transaction. TEAP networks can be configured by [enterprise policy](https://docs.microsoft.com/openspecs/windows_protocols/ms-gpwl/94cf6896-c28e-4865-b12a-d83ee38cd3ea).

## Virtualization

### Windows Sandbox

[Windows Sandbox](https://techcommunity.microsoft.com/t5/Windows-Kernel-Internals/Windows-Sandbox/ba-p/301849) is an isolated desktop environment where you can install software without the fear of lasting impact to your device. This feature was released with Windows 10, version 1903. Windows 10, version 2004 includes bug fixes and enables even more control over configuration.

[Windows Sandbox configuration](https://docs.microsoft.com/windows/security/threat-protection/windows-sandbox/windows-sandbox-configure-using-wsb-file) includes:
- MappedFolders now supports a destination folder. Previously no destination could be specified, it was always mapped to the Sandbox desktop.
- AudioInput/VideoInput settings now enable you to share their host microphone or webcam with the Sandbox.
- ProtectedClient is a new security setting that runs the connection to the Sandbox with extra security settings enabled. This is disabled by default due to issues with copy & paste.
- PrinterRedirection: You can now enable and disable host printer sharing with the Sandbox.
- ClipboardRedirection: You can now enable and disable host clipboard sharing with the Sandbox.
- MemoryInMB adds the ability to specify the maximum memory usage of the Sandbox.

Windows Media Player is also added back to the Sandbox image in this release.

Windows Sandbox also has improved accessibility in this release, including:
- Microphone support is available.
- Added functionality to configure the audio input device via the Windows Sandbox config file.
- A Shift + Alt + PrintScreen key sequence that activates the ease of access dialog for enabling high contrast mode.
- A ctrl + alt + break key sequence that allows entering/exiting fullscreen mode.

### Windows Subsystem for Linux (WSL)

With this release, memory that is no longer in use in a Linux VM will be freed back to Windows. Previously, a WSL VM's memory could grow, but would not shrink when no longer needed.

[WSL2](https://docs.microsoft.com/windows/wsl/wsl2-index) support has been added for ARM64 devices if your device supports virtualization.

For a full list of updates to WSL, see the [WSL release notes](https://docs.microsoft.com/windows/wsl/release-notes).

### Windows Virtual Desktop (WVD)

Windows 10 is an integral part of WVD, and several enhancements are available in the Spring 2020 update. Check out [Windows Virtual Desktop documentation](https://aka.ms/wvdgetstarted) for the latest and greatest information, as well as the [WVD Virtual Event from March](https://aka.ms/wvdvirtualevent).

## Microsoft Edge

Read about plans for the new Microsoft Edge and other innovations announced at [Build 2020](https://blogs.windows.com/msedgedev/2020/05/19/microsoft-edge-news-developers-build-2020/) and [What's new at Microsoft Edge Insider](https://www.microsoftedgeinsider.com/whats-new).

Also see information about the exciting new Edge browser [here](https://blogs.windows.com/windowsexperience/2020/01/15/new-year-new-browser-the-new-microsoft-edge-is-out-of-preview-and-now-available-for-download/).

## Application settings

This release enables explicit [Control over restarting apps at sign-in (Build 18965)](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#control-over-restarting-apps-at-sign-in-build-18965) that were open when you restart your PC.

## Windows Shell

Several enhancements to the Windows 10 user interface are implemented in this release:

### Cortana

[Cortana](https://www.microsoft.com/cortana) has been updated and enhanced in Windows 10, version 2004:

- Productivity: chat-based UI gives you the ability to [interact with Cortana using typed or spoken natural language queries](https://support.microsoft.com/help/4557165) to easily get information across Microsoft 365 and stay on track. Productivity focused capabilities such as finding people profiles, checking schedules, joining meetings, and adding to lists in Microsoft To Do are currently available to English speakers in the US.

  - In the coming months, with regular app updates through the Microsoft Store, we’ll enhance this experience to support wake word invocation and enable listening when you say “Cortana,” offer more productivity capabilities such as surfacing relevant emails and documents to help you prepare for meetings, and expand supported capabilities for international users.

- Security: tightened access to Cortana so that you must be securely logged in with your work or school account or your Microsoft account before using Cortana. Because of this tightened access, some consumer skills including music, connected home, and third-party skills will no longer be available. Additionally, users [get cloud-based assistance services that meet Office 365’s enterprise-level privacy, security, and compliance promises](https://docs.microsoft.com/microsoft-365/admin/misc/cortana-integration?view=o365-worldwide) as set out in the Online Services Terms.

- Move the Cortana window: drag the Cortana window to a more convenient location on your desktop.

For updated information, see the [Microsoft 365 blog](https://aka.ms/CortanaUpdatesMay2020).

### Windows Search

Windows Search is improved in several ways. For more information, see [Supercharging Windows Search](https://aka.ms/AA8kllm).

### Virtual Desktops

There is a new [Update on Virtual Desktop renaming (Build 18975)](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#update-on-virtual-desktop-renaming-build-18975), where, instead of getting stuck with the system-issued names like Desktop 1, you can now rename your virtual desktops more freely.

### Bluetooth pairing

Pairing Bluetooth devices with your computer will occur through notifications, so you won't need to go to the Settings app to finish pairing. Other improvements include faster pairing and device name display. For more information, see [Improving your Bluetooth pairing experience](https://docs.microsoft.com/windows-insider/archive/new-in-20h1#improving-your-bluetooth-pairing-experience-build-18985).

### Reset this PC

The 'reset this PC' recovery function now includes a [cloud download](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#reset-your-pc-from-the-cloud-build-18970) option.

### Task Manager

The following items are added to Task Manager in this release:
- GPU Temperature is available on the Performance tab for devices with a dedicated GPU card.
- Disk type is now [listed for each disk on the Performance tab](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#disk-type-now-visible-in-task-manager-performance-tab-build-18898).

## Graphics & display

### DirectX

[New DirectX 12 features](https://devblogs.microsoft.com/directx/dev-preview-of-new-directx-12-features/) are available in this release.

### 2-in-1 PCs

[Introducing a new tablet experience for 2-in-1 convertible PCs! (Build 18970)](https://docs.microsoft.com/windows-insider/archive/new-in-20H1#introducing-a-new-tablet-experience-for-2-in-1-convertible-pcs-build-18970) A new tablet experience for two-in-one convertible PCs is available. The screen will be optimized for touch when you detach your two-in-one's keyboard, but you'll still keep the familiar look of your desktop without interruption.

### Specialized displays

With this update, devices running Windows 10 Enterprise or Windows 10 Pro for Workstations with multiple displays can be configured to prevent Windows from using a display, making it available for a specialized purpose.

Examples include:
- Fixed-function arcade & gaming such as cockpit, driving, flight, and military simulators
- Medical imaging devices with custom panels, such as grayscale X-ray displays
- Video walls like those displayed in Microsoft Store
- Dedicated video monitoring
- Monitor panel testing and validation
- Independent Hardware Vendor (IHV) driver testing and validation

To prevent Windows from using a display, choose Settings > Display and click Advanced display settings. Select a display to view or change, and then set the Remove display from desktop setting to On.  The display will now be available for a specialized use.

## Desktop Analytics

[Desktop Analytics](https://docs.microsoft.com/configmgr/desktop-analytics/overview) is a cloud-connected service, integrated with Configuration Manager that provides data-driven insights to the management of Windows endpoints in your organization. Desktop Analytics requires a Windows E3 or E5 license, or a Microsoft 365 E3 or E5 license.

For information about Desktop Analytics and this release of Windows 10, see [What's new in Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/whats-new).

## See Also

- [What’s new for IT pros in Windows 10, version 2004](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/what-s-new-for-it-pros-in-windows-10-version-2004/ba-p/1419764): Windows IT Pro blog.
- [What’s new in the Windows 10 May 2020 Update](https://blogs.windows.com/windowsexperience/2020/05/27/whats-new-in-the-windows-10-may-2020-update/): Windows Insider blog.
- [What's New in Windows Server](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server): New and updated features in Windows Server.
- [Windows 10 Features](https://www.microsoft.com/windows/features): General information about Windows 10 features.
- [What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.
- [Start developing on Windows 10, version 2004 today](https://blogs.windows.com/windowsdeveloper/2020/05/12/start-developing-on-windows-10-version-2004-today/): New and updated features in Windows 10 that are of interest to developers.
- [What's new for business in Windows 10 Insider Preview Builds](https://docs.microsoft.com/windows-insider/Active-Dev-Branch): A preview of new features for businesses.
- [What's new in Windows 10, version 2004 - Windows Insiders](https://docs.microsoft.com/windows-insider/at-home/whats-new-wip-at-home-20h1): This list also includes consumer focused new features.
- [Features and functionality removed in Windows 10](https://docs.microsoft.com/windows/deployment/planning/windows-10-removed-features): Removed features.
- [Windows 10 features we’re no longer developing](https://docs.microsoft.com/windows/deployment/planning/windows-10-deprecated-features): Features that are not being developed.
