---
title: What's new in Windows 10, version 1803
description: New and updated IT Pro content about new features in Windows 10, version 1803 (also known as the Windows 10 April 2018 Update).
keywords: ["What's new in Windows 10", "Windows 10", "April 2018 Update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.date: 07/07/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, version 1803 IT Pro content

**Applies to**
-   Windows 10, version 1803

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 version 1803, also known as the Windows 10 April 2018 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1709. 

>If you are not an IT Pro, see the following topics for information about what's new in Windows 10, version 1803 in [hardware](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-windows), for [developers](https://docs.microsoft.com/windows/uwp/whats-new/windows-10-build-17134), and for [consumers](https://blogs.windows.com/windowsexperience/2018/04/30/whats-new-in-the-windows-10-april-2018-update).

The following 3-minute video summarizes some of the new features that are available for IT Pros in this release.

> [!video https://www.microsoft.com/videoplayer/embed/RE21ada?autoplay=false]

## Deployment

### Windows Autopilot

[Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot) provides a modern device lifecycle management service powered by the cloud that delivers a zero touch experience for deploying Windows 10. 

Using Intune, Autopilot now enables locking the device during provisioning during the Windows Out Of Box Experience (OOBE) until policies and settings for the device get provisioned, thereby ensuring that by the time the user gets to the desktop, the device is secured and configured correctly. 

Windows Autopilot is now available with Surface, Lenovo, and Dell. Other OEM partners such as HP, Toshiba, Panasonic, and Fujitsu will support Autopilot in coming months. Check back here later for more information.

### Windows 10 in S mode

Windows 10 in S mode is now available on both Windows 10 Home and Pro PCs, and commercial customers will be able to deploy Windows 10 Enterprise in S mode - by starting with Windows 10 Pro in S mode and then activating Windows 10 Enterprise on the computer.

Some additional information about Windows 10 in S mode:
 
- Microsoft-verified. All of your applications are verified by Microsoft for security and performance. 
- Performance that lasts. Start-ups are quick, and S mode is built to keep them that way. 
- Choice and flexibility. Save your files to your favorite cloud, like OneDrive or DropBox, and access them from any device you choose. Browse the Microsoft Store for thousands of apps.
- S mode, on a range of modern devices. Enjoy all the great Windows multi-tasking features, like snapping Windows, task view and virtual desktops on a range of S mode enabled devices. 

If you want to switch out of S mode, you will be able to do so at no charge, regardless of edition. Once you switch out of S mode, you cannot switch back.

For more information, see [Windows 10 Pro/Enterprise in S mode](https://docs.microsoft.com/windows/deployment/windows-10-pro-in-s-mode).

### Windows 10 kiosk and Kiosk Browser

With this release you can easily deploy and manage kiosk devices with Microsoft Intune in single and multiple app scenarios. This includes the new Kiosk Browser available from the Microsoft Store. Kiosk Browser is great for delivering a reliable and custom-tailored browsing experience for scenarios such as retail and signage. A summary of new features is below.

- Using Intune, you can deploy the Kiosk Browser from the Microsoft Store, configure start URL, allowed URLs, and enable/disable navigation buttons.
- Using Intune, you can deploy and configure shared devices and kiosks using assigned access to create a curated experience with the correct apps and configuration policies
- Support for multiple screens for digital signage use cases.
- The ability to ensure all MDM configurations are enforced on the device prior to entering assigned access using the Enrollment Status page.
- The ability to configure and run Shell Launcher in addition to existing UWP Store apps.
- A simplified process for creating and configuring an auto-logon kiosk account so that a public kiosk automatically enters a desired state after a reboot, a critical security requirement for public-facing use cases.
- For multi-user Firstline Worker kiosk devices, instead of specifying every user, it’s now possible to assign different assigned access configurations to Azure AD groups or Active Directory groups.
- To help with troubleshooting, you can now view error reports generated if an assigned access-configured app has issues.

For more information, see: 
- [Making IT simpler with a modern workplace](https://www.microsoft.com/microsoft-365/blog/2018/04/27/making-it-simpler-with-a-modern-workplace/)
- [Simplifying kiosk management for IT with Windows 10](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/Simplifying-kiosk-management-for-IT-with-Windows-10/ba-p/187691)

### Windows 10 Subscription Activation

With this release, Subscription Activation supports Inherited Activation. Inherited Activation allows Windows 10 virtual machines to inherit activation state from their Windows 10 host. 

For more information, see [Windows 10 Subscription Activation](https://docs.microsoft.com/windows/deployment/windows-10-enterprise-subscription-activation#inherited-activation).

### DISM

The following new DISM commands have been added to manage feature updates:

    DISM /Online /Initiate-OSUninstall 
        – Initiates a OS uninstall to take the computer back to the previous installation of windows.
    DISM /Online /Remove-OSUninstall 
        – Removes the OS uninstall capability from the computer. 
    DISM /Online /Get-OSUninstallWindow 
        – Displays the number of days after upgrade during which uninstall can be performed.
    DISM /Online /Set-OSUninstallWindow 
        – Sets the number of days after upgrade during which uninstall can be performed.

For more information, see [DISM operating system uninstall command-line options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-uninstallos-command-line-options).

### Windows Setup

You can now run your own custom actions or scripts in parallel with Windows Setup. Setup will also migrate your scripts to next feature release, so you only need to add them once.

Prerequisites:  
- Windows 10, version 1803 or later.
- Windows 10 Enterprise or Pro

For more information, see [Run custom actions during feature update](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-enable-custom-actions).

It is also now possible to run a script if the user rolls back their version of Windows using the PostRollback option.

    /PostRollback<location> [\setuprollback.cmd] [/postrollback {system / admin}]

For more information, see [Windows Setup Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options#21)

New command-line switches are also available to control BitLocker:

    Setup.exe /BitLocker AlwaysSuspend 
        – Always suspend bitlocker during upgrade.
    Setup.exe /BitLocker TryKeepActive 
        – Enable upgrade without suspending bitlocker but if upgrade, does not work then suspend bitlocker and complete the upgrade.
    Setup.exe /BitLocker ForceKeepActive 
        – Enable upgrade without suspending bitlocker, but if upgrade does not work, fail the upgrade.

For more information, see [Windows Setup Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options#33)

### SetupDiag

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) is a new command-line tool that can help diagnose why a Windows 10 update failed.

SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 26 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available. 

### Windows Update for Business (WUfB)

Windows Update for Business now provides greater control over updates, with the ability to pause and uninstall problematic updates using Intune.  For more information, see [Manage software updates in Intune](https://docs.microsoft.com/intune/windows-update-for-business-configure).

### Feature update improvements

Portions of the work done during the offline phases of a Windows update have been moved to the online phase. This has resulted in a significant reduction of offline time when installing updates. For more information, see [We're listening to you](https://insider.windows.com/en-us/articles/were-listening-to-you/).

## Configuration

### Co-management

**Intune** and **System Center Configuration Manager** policies have been added to enable hybrid Azure AD-joined authentication. Mobile Device Management (MDM) has added over 150 new policies and settings in this release, including the [MDMWinsOverGP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-controlpolicyconflict) policy, to enable easier transition to cloud-based management.

For more information, see [What's New in MDM enrollment and management](https://docs.microsoft.com/windows/client-management/mdm/new-in-windows-mdm-enrollment-management#whatsnew1803)

### OS uninstall period

The OS uninstall period is a length of time that users are given when they can optionally roll back a Windows 10 update.  With this release, administrators can use Intune or [DISM](#dism) to customize the length of the OS uninstall period.

### Windows Hello for Business

[Windows Hello](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-features) now supports FIDO 2.0 authentication for Azure AD Joined Windows 10 devices and has enhanced support for shared devices, as described in the [Kiosk configuration](#windows-10-kiosk-and-kiosk-browser) section. 

- Windows Hello is now [password-less on S-mode](https://www.windowslatest.com/2018/02/12/microsoft-make-windows-10-password-less-platform/).
- Support for S/MIME with Windows Hello for Business and APIs for non-Microsoft identity lifecycle management solutions.
- Windows Hello is part of the account protection pillar in Windows Defender Security Center. Account Protection will encourage password users to set up Windows Hello Face, Fingerprint or PIN for faster sign in, and will notify Dynamic lock users if Dynamic lock has stopped working because their phone or device Bluetooth is off.
- You can set up Windows Hello from lock screen for MSA accounts. We’ve made it easier for Microsoft account users to set up Windows Hello on their devices for faster and more secure sign-in. Previously, you had to navigate deep into Settings to find Windows Hello. Now, you can set up Windows Hello Face, Fingerprint or PIN straight from your lock screen by clicking the Windows Hello tile under Sign-in options.
- New [public API](https://docs.microsoft.com/uwp/api/windows.security.authentication.web.core.webauthenticationcoremanager.findallaccountsasync#Windows_Security_Authentication_Web_Core_WebAuthenticationCoreManager_FindAllAccountsAsync_Windows_Security_Credentials_WebAccountProvider_) for secondary account SSO for a particular identity provider.
- It is easier to set up Dynamic lock, and WD SC actionable alerts have been added when Dynamic lock stops working (ex: phone Bluetooth is off).
 
For more information, see: [Windows Hello and FIDO2 Security Keys enable secure and easy authentication for shared devices](https://blogs.windows.com/business/2018/04/17/windows-hello-fido2-security-keys/#OdKBg3pwJQcEKCbJ.97)

## Accessibility and Privacy

### Accessibility

"Out of box" accessibility is enhanced with auto-generated picture descriptions. For more information about accessibility, see [Accessibility information for IT Professionals](https://docs.microsoft.com/windows/configuration/windows-10-accessibility-for-itpros). Also see the accessibility section in the [What’s new in the Windows 10 April 2018 Update](https://blogs.windows.com/windowsexperience/2018/04/30/whats-new-in-the-windows-10-april-2018-update/) blog post.

### Privacy

In the Feedback and Settings page under Privacy Settings you can now delete the diagnostic data your device has sent to Microsoft. You can also view this diagnostic data using the [Diagnostic Data Viewer](https://docs.microsoft.com/windows/configuration/diagnostic-data-viewer-overview) app. 

## Security

### Security Baselines

The new [security baseline for Windows 10 version 1803](https://docs.microsoft.com/windows/security/threat-protection/security-compliance-toolkit-10) has been published. 

### Windows Defender Antivirus

Windows Defender Antivirus now shares detection status between M365 services and interoperates with Windows Defender ATP.  Additional policies have also been implemented to enhance cloud based protection, and new channels are available for emergency protection. For more information, see [Virus and threat protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-security-center/wdsc-virus-threat-protection) and [Use next-gen technologies in Windows Defender Antivirus through cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus).

### Windows Defender Exploit Guard

Windows Defender Exploit Guard enhanced attack surface area reduction, extended support to Microsoft Office applications, and now supports Windows Server. [Virtualization-based Security](https://techcommunity.microsoft.com/t5/Windows-Insider-Program/Windows-Defender-System-Guard-Making-a-leap-forward-in-platform/m-p/167303) (VBS) and Hypervisor-protected code integrity (HVCI) can now be enabled across the Windows 10 ecosystem. These Exploit Guard features can now be enabled through the Windows Defender Security Center.

For more information, see [Reduce attack surfaces](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction)

### Windows Defender ATP

[Windows Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) has been enhanced with many new capabilities. For more information, see the following topics:

- [Query data using Advanced hunting in Windows Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection)
- [Use Automated investigations to investigate and remediate threats](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)
- [Enable conditional access to better protect users, devices, and data](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection)

Also see [New capabilities of Windows Defender ATP further maximizing the effectiveness and robustness of endpoint security](https://blogs.windows.com/business/2018/04/17/new-capabilities-of-windows-defender-atp-further-maximizing-the-effectiveness-and-robustness-of-endpoint-security/#62FUJ3LuMXLQidVE.97)

### Windows Defender Application Guard

Windows Defender Application Guard has added support for Edge. For more information, see [System requirements for Windows Defender Application Guard](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-guard/reqs-wd-app-guard#software-requirements)

### Windows Defender Device Guard

Configurable code integrity is being rebranded as Windows Defender Application Control. This is to help distinguish it as a standalone feature to control execution of applications. For more information about Device Guard, see Windows [Defender Device Guard deployment guide](https://docs.microsoft.com/windows/device-security/device-guard/device-guard-deployment-guide).

### Windows Information Protection

This release enables support for WIP with Files on Demand, allows file encryption while the file is open in another app, and improves performance. For more information, see [OneDrive Files On-Demand For The Enterprise](https://techcommunity.microsoft.com/t5/OneDrive-Blog/OneDrive-Files-On-Demand-For-The-Enterprise/ba-p/117234).

### Office 365 Ransomware Detection

For Office 365 Home and Office 365 Personal subscribers, Ransomware Detection notifies you when your OneDrive files have been attacked and guides you through the process of restoring your files. For more information, see [Ransomware detection and recovering your files](https://support.office.com/en-us/article/ransomware-detection-and-recovering-your-files-0d90ec50-6bfd-40f4-acc7-b8c12c73637f?ui=en-US&rs=en-US&ad=US)

## Windows Analytics

### Upgrade Readiness

Upgrade Readiness has added the ability to assess Spectre and Meltdown protections on your devices.  This addition allows you to see if your devices have Windows OS and firmware updates with Spectre and Meltdown mitigations installed, as well as whether your antivirus client is compatible with these updates. For more information, see [Upgrade Readiness now helps assess Spectre and Meltdown protections](https://blogs.technet.microsoft.com/upgradeanalytics/2018/02/13/upgrade-readiness-now-helps-assess-spectre-and-meltdown-protections/)

### Update Compliance

Update Compliance has added Delivery Optimization to assess the bandwidth consumption of Windows Updates. For more information, see [Delivery Optimization in Update Compliance](https://docs.microsoft.com/windows/deployment/update/update-compliance-delivery-optimization)

### Device Health

Device Health’s new App Reliability reports enable you to see where app updates or configuration changes may be needed to reduce crashes. The Login Health reports reveal adoption, success rates, and errors for Windows Hello and for passwords— for a smooth migration to the password-less future. For more information, see [Using Device Health](https://docs.microsoft.com/windows/deployment/update/device-health-using)

## Microsoft Edge

iOS and Android versions of Edge are now available. For more information, see [Microsoft Edge Tips](https://microsoftedgetips.microsoft.com/en-us?source=firstrunwip).

Support in [Windows Defender Application Guard](#windows-defender-application-guard) is also improved.


## See Also

- [Windows 10 Features](https://www.microsoft.com/windows/features): Review general information about Windows 10 features.  
- [What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.
- [What's new in Windows 10, version 1709](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-windows): See what’s new in Windows 10 hardware.
- [Windows 10 Fall Creators Update Next Generation Security](https://www.youtube.com/watch?v=JDGMNFwyUg8): YouTube video about Windows Defender ATP in Windows 10, version 1709.

