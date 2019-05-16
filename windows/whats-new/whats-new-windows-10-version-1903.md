---
title: What's new in Windows 10, version 1903
description: New and updated IT Pro content about new features in Windows 10, version 1903 (also known as the Windows 10 May 2019 Update).
keywords: ["What's new in Windows 10", "Windows 10", "May 2019 Update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, version 1903 IT Pro content

**Applies to**
-   Windows 10, version 1903

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 version 1903, also known as the Windows 10 May 2019 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1809. 

>[!NOTE]
>New disk space requirement for Windows 10, version 1903 applies only to OEMs for the manufacture of new PCs. This new requirement does not apply to existing devices.  PCs that don’t meet new device disk space requirements will continue to receive updates and the 1903 update will require about the same amount of free disk space as previous updates.  There is no change for current devices compared to previous releases.

## Deployment

### Windows Autopilot

The following Windows Autopilot features are available in Windows 10, version 1903 and later:

- [Windows Autopilot for white glove deployment](https://docs.microsoft.com/windows/deployment/windows-autopilot/white-glove) is new in this version of Windows. "White glove" deployment enables partners or IT staff to pre-provision devices so they are fully configured and business ready for your users.
- The Intune [enrollment status page](https://docs.microsoft.com/intune/windows-enrollment-status) (ESP) now tracks Intune Management Extensions​.
- [Cortana voiceover](https://docs.microsoft.com/windows-hardware/customize/desktop/cortana-voice-support) and speech recognition during OOBE is [disabled by default](https://docs.microsoft.com/en-us/windows/deployment/windows-autopilot/windows-autopilot-scenarios#capabilities) for all Windows 10 Pro Education, and Enterprise SKUs.
- Windows Autopilot is [self-updating during OOBE](https://docs.microsoft.com/en-us/windows/deployment/windows-autopilot/windows-autopilot-scenarios#capabilities). Starting with the Windows 10, version 1903, Autopilot functionally and critical updates will begin downloading automatically during OOBE.

### Windows 10 Subscription Activation

Windows 10 Education support has been added to Windows 10 Subscription Activation.

With Windows 10, version 1903, you can step-up from Windows 10 Pro Education to the enterprise-grade edition for educational institutions – Windows 10 Education. For more information, see [Windows 10 Subscription Activation](https://docs.microsoft.com/en-us/windows/deployment/windows-10-subscription-activation).

### SetupDiag

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) version 1.4.1 is available.

SetupDiag is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 53 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available. 

## Servicing

- [Delivery Optimization](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization) – Improved Peer Efficiency for enterprises and educational institutions with complex networks is enabled with of [new policies](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deliveryoptimization). This now supports Office 365 ProPlus updates, and Intune content, with System Center Configuration Manager content coming soon! 
- **Servicing-based Feature Updates**: Use instead of media-based to reduce the Feature Update size with Express Updates. Use Unified Update Platform (UUP) for language packs, Features on Demand (FOD), Latest Cumulative Updates (LCU). Feature updates now provide more options for background processing, Active Hours, and deferral notifications. 
- **Reserved Disk Space**: New and wipe-and-load installations of Windows 10 version 1903 will automatically reserve disk space to be used by Feature and Quality Updates, ensuring the updates do not fail for disk space reasons. 
- **Automatic Restart Sign-on (ARSO)**: Windows will automatically restart and logon as the user and complete the update, ensuring that when the user returns and unlocks the device, the update will be completed.  
- **Windows Update for Business**: There will now be a single, common start date for phased deployments (no more SAC-T designation). In addition, there will a new notification and reboot scheduling experience for end users, the ability to enforce update installation and reboot deadlines, and the ability to provide end user control over reboots for a specific time period. 
- **Update rollback improvements**: You can now automatically recover from startup failures by removing updates if the startup failure was introduced after the installation of recent driver or quality updates. When a device is unable to start up properly after the recent installation of Quality of driver updates, Windows will now automatically uninstall the updates to get the device back up and running normally.
- **Pause updates**: We have extended the ability to pause updates for both feature and monthly updates. This extension ability is for all editions of Windows 10, including Home. You can pause both feature and monthly updates for up to 35 days (seven days at a time, up to five times). Once the 35-day pause period is reached, you will need to update your device before pausing again. 
- **Improved update notifications**: When there’s an update requiring you to restart your device, you’ll see a colored dot on the Power button in the Start menu and on the Windows icon in your taskbar.
- **Intelligent active hours**: To further enhance active hours, users will now have the option to let Windows Update intelligently adjust active hours based on their device-specific usage patterns. You must enable the intelligent active hours feature for the system to predict device-specific usage patterns.
- **Improved update orchestration to improve system responsiveness**: This feature will improve system performance by intelligently coordinating Windows updates and Microsoft Store updates, so they occur when users are away from their devices to minimize disruptions.

## Security

### Windows Information Protection

With this release, Windows Defender ATP extends discovery and protection of sensitive information with [Auto Labeling](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/how-wip-works-with-labels#how-wip-protects-automatically-classified-files). 

### Security configuration framework

With this release of Windows 10, Microsoft is introducing a [new taxonomy for security configurations](https://docs.microsoft.com/windows/security/threat-protection/windows-security-configuration-framework/windows-security-configuration-framework), called the **SECCON framework**, comprised of 5 device security configurations.

### Security baseline for Windows 10 and Windows Server

The draft release of the [security configuration baseline settings](https://blogs.technet.microsoft.com/secguide/2019/04/24/security-baseline-draft-for-windows-10-v1903-and-windows-server-v1903/) for Windows 10 version 1903, and for Windows Server version 1903 is available.

### Intune security baselines

[Intune Security Baselines](https://docs.microsoft.com/intune/security-baselines) (Preview): Now includes many settings supported by Intune that you can use to help secure and protect your users and devices. You can automatically set these settings to values recommended by security teams.

### Microsoft Defender Advanced Threat Protection (ATP):

- [Attack surface area reduction](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-attack-surface-reduction) – IT admins can configure devices with advanced web protection that enables them to define allow and deny lists for specific URL’s and IP addresses.
- [Next generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) – Controls have been extended to protection from ransomware, credential misuse, and attacks that are transmitted through removable storage.
    - Integrity enforcement capabilities – Enable remote runtime attestation of Windows 10 platform.
    - Tamper-proofing capabilities – Uses virtualization-based security to isolate critical ATP security capabilities away from the OS and attackers.
- [Platform support](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Protecting-Windows-Server-with-Windows-Defender-ATP/ba-p/267114) – In addition to Windows 10, Windows Defender ATP’s functionality has been extended to support Windows 7 and Windows 8.1 clients, as well as macOS, Linux, and Windows Server with both its Endpoint Detection (EDR) and Endpoint Protection Platform (EPP) capabilities.

### Microsoft Defender ATP next-gen Antivirus technologies:

- **Advanced machine learning**: Improved with advanced machine learning and AI models that enable it to protect against apex attackers using innovative vulnerability exploit techniques, tools and malware.
- **Emergency outbreak protection**: Provides emergency outbreak protection which will automatically update devices with new intelligence when a new outbreak has been detected.
- **Certified ISO 27001 compliance**: Ensures that the cloud service has analyzed for threats, vulnerabilities and impacts, and that risk management and security controls are in place.
- **Geolocation support**: Support geolocation and sovereignty of sample data as well as configurable retention policies.

### Threat Protection

- [Windows Sandbox](https://techcommunity.microsoft.com/t5/Windows-Kernel-Internals/Windows-Sandbox/ba-p/301849): Isolated desktop environment where you can run untrusted software without the fear of lasting impact to your device.
- [Microphone privacy settings](https://support.microsoft.com/en-us/help/4468232/windows-10-camera-microphone-and-privacy-microsoft-privacy): A microphone icon appears in the notification area letting you see which apps are using your microphone.
- [Windows Defender Application Guard](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-guard/wd-app-guard-overview) enhancements: Standalone users can install and configure their Windows Defender Application Guard settings without needing to change Registry key settings. Enterprise users can check their settings to see what their administrators have configured for their machines to better understand the behavior.

### Identity Protection

- [Windows Hello FIDO2 certification](https://fidoalliance.org/microsoft-achieves-fido2-certification-for-windows-hello/): Windows Hello is now a FIDO2 Certified authenticator and enables password-less login for websites supporting FIDO2 authentication, such as Microsoft account and Azure AD.
- [Streamlined Windows Hello PIN reset experience](https://docs.microsoft.com/en-us/windows/security/identity-protection/hello-for-business/hello-videos#windows-hello-for-business-forgotten-pin-user-experience): Microsoft account users have a revamped Windows Hello PIN reset experience with the same look and feel as signing in on the web.
- Sign-in with [Password-less](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/passwordless-strategy) Microsoft accounts: Sign in to Windows 10 with a phone number account. Then use Windows Hello for an even easier sign-in experience! i
- [Remote Desktop with Biometrics](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-features#remote-desktop-with-biometrics): Azure Active Directory and Active Directory users using Windows Hello for Business can use biometrics to authenticate to a remote desktop session.

### Security management

- [Windows Defender Firewall now supports Windows Subsystem for Linux (WSL)](https://blogs.windows.com/windowsexperience/2018/04/19/announcing-windows-10-insider-preview-build-17650-for-skip-ahead/#II14f7VlSBcZ0Gs4.97): Lets you add rules for WSL process, just like for Windows processes. 
- [Windows Security app](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center) improvements now include Protection history, including detailed and easier to understand information about threats and available actions, Controlled Folder Access blocks are now in the Protection history, Windows Defender Offline Scanning tool actions, and any pending recommendations. 
- [Tamper Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/prevent-changes-to-security-settings-with-tamper-protection) lets you prevent others from tampering with important security features.

## Microsoft Edge

Windows 10, version 1903 offers new Group Policies and [MDM policies](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser) for managing Microsoft Edge. You can silently enable BitLocker for standard Azure Active Directory-joined users. You can also more easily manage the entire Microsoft 365 experience for users with the Microsoft 365 Admin Center.

Several new features are coming in the next version of Edge. See the [news from Build 2019](https://blogs.windows.com/msedgedev/2019/05/06/edge-chromium-build-2019-pwa-ie-mode-devtools/#2QJF4u970WjQ2Sv7.97) for more information.

## See Also

[Windows 10 Features](https://www.microsoft.com/windows/features): Review general information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[What's new in Windows 10](https://docs.microsoft.com/windows-hardware/get-started/what-s-new-in-windows): See what’s new in Windows 10 hardware.<br>
[What's new in Windows 10 for developers](https://blogs.windows.com/buildingapps/2019/04/18/start-developing-on-windows-10-may-2019-update-today/#2Lp8FUFQ3Jm8KVcq.97).
