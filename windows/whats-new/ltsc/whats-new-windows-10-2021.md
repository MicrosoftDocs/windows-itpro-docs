---
title: What's new in Windows 10 Enterprise LTSC 2021
ms.reviewer: 
manager: dougeby
ms.author: greglin
description: New and updated IT Pro content about new features in Windows 10 Enterprise LTSC 2019 (also known as Windows 10 Enterprise 2019 LTSB).
keywords: ["What's new in Windows 10", "Windows 10", "Windows 10 Enterprise LTSC 2021"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: low
ms.topic: article
---

# What's new in Windows 10 Enterprise LTSC 2021

**Applies to**
-   Windows 10 Enterprise LTSC 2021

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 Enterprise LTSC 2021, compared to Windows 10 Enterprise LTSC 2019 (LTSB). For a brief description of the LTSC servicing channel and associated support, see [Windows 10 Enterprise LTSC](index.md).

> [!NOTE]
> Features in Windows 10 Enterprise LTSC 2021 are equivalent to Windows 10, version 21H2.<br>
> The LTSC release is [intended for special use devices](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/LTSC-What-is-it-and-when-should-it-be-used/ba-p/293181). Support for LTSC by apps and tools that are designed for the semi-annual channel release of Windows 10 might be limited.

Windows 10 Enterprise LTSC 2021 builds on Windows 10 Pro, version 21H2, adding premium features such as advanced protection against modern security threats and comprehensive device management, app management, and control capabilities. 

The Windows 10 Enterprise LTSC 2021 release includes the cumulative enhancements provided in Windows 10 versions 1903, 1909, 2004, and 21H1. Details about these enhancements are provided below. 

## Lifecycle

> [!IMPORTANT]
> Windows 10 Enterprise LTSC 2021 has a 5 year lifecycle (except for IoT). It is not a direct replacement for LTSC 2019, which continues to have a 10 year lifecycle.

For more information about the lifecycle for this release, see [The next Windows 10 Long Term Servicing Channel (LTSC) release](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/the-next-windows-10-long-term-servicing-channel-ltsc-release/ba-p/2147232).

## Microsoft Edge

Microsoft Edge Browser support is now included in-box.

### Microsoft Edge kiosk mode

Microsoft Edge kiosk mode is available for LTSC releases starting in Windows 10 Enterprise 2021 LTSC and [Windows 10 IoT Enterprise 2021 LTSC](/windows/iot/product-family/what's-new-in-windows-10-iot-enterprise-21h2).

Microsoft Edge kiosk mode offers two lockdown experiences of the browser so organizations can create, manage, and provide the best experience for their customers. The following lockdown experiences are available:
- Digital/Interactive Signage experience - Displays a specific site in full-screen mode.
- Public-Browsing experience - Runs a limited multi-tab version of Microsoft Edge.
- Both experiences are running a Microsoft Edge InPrivate session, which protects user data.

## Security

### Windows Hello

- Windows Hello is now supported as Fast Identity Online 2 (FIDO2) authenticator across all major browsers including Chrome and Firefox.
- You can now enable passwordless sign-in for Microsoft accounts on your Windows 10 device by going to **Settings > Accounts > Sign-in options**, and selecting **On** under **Make your device passwordless**. Enabling passwordless sign in will switch all Microsoft accounts on your Windows 10 device to modern authentication with Windows Hello Face, Fingerprint, or PIN.
- Windows Hello PIN sign-in support is [added to Safe mode](/windows-insider/archive/new-in-20H1#windows-hello-pin-in-safe-mode-build-18995).
- Windows Hello for Business now has Hybrid Azure Active Directory support and phone number sign-in (MSA). FIDO2 security key support is expanded to Azure Active Directory hybrid environments, enabling enterprises with hybrid environments to take advantage of [passwordless authentication](/azure/active-directory/authentication/howto-authentication-passwordless-security-key-on-premises). For more information, see [Expanding Azure Active Directory support for FIDO2 preview to hybrid environments](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/expanding-azure-active-directory-support-for-fido2-preview-to/ba-p/981894).
- With specialized hardware and software components available on devices shipping with Windows 10, version 20H2 configured out of factory, Windows Hello now offers added support for virtualization-based security with supporting fingerprint and face sensors. This feature isolates and secures a user's biometric authentication data.
- Windows Hello multi-camera support is added, allowing users to choose an external camera priority when both external and internal Windows Hello-capable cameras are present.
- [Windows Hello FIDO2 certification](https://fidoalliance.org/microsoft-achieves-fido2-certification-for-windows-hello/): Windows Hello is now a FIDO2 Certified authenticator and enables password-less login for websites supporting FIDO2 authentication, such as Microsoft account and Azure AD.
- [Streamlined Windows Hello PIN reset experience](/windows/security/identity-protection/hello-for-business/hello-videos#windows-hello-for-business-forgotten-pin-user-experience): Microsoft account users have a revamped Windows Hello PIN reset experience with the same look and feel as signing in on the web.
- Sign-in with [Password-less](/windows/security/identity-protection/hello-for-business/passwordless-strategy) Microsoft accounts: Sign in to Windows 10 with a phone number account. Then use Windows Hello for an even easier sign-in experience!
- [Remote Desktop with Biometrics](/windows/security/identity-protection/hello-for-business/hello-feature-remote-desktop#remote-desktop-with-biometrics): Azure Active Directory and Active Directory users using Windows Hello for Business can use biometrics to authenticate to a remote desktop session.

### Windows Information Protection

#### Windows Defender Credential Guard

[Windows Defender Credential Guard](/windows/security/identity-protection/credential-guard/credential-guard) is now available for ARM64 devices, for additional protection against credential theft for enterprises deploying ARM64 devices in their organizations, such as Surface Pro X.

#### Microsoft Defender for Endpoint

- [Attack surface area reduction](/windows/security/threat-protection/windows-defender-atp/overview-attack-surface-reduction) – IT admins can configure devices with advanced web protection that enables them to define allow and deny lists for specific URL’s and IP addresses.
- [Next generation protection](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-in-windows-10) – Controls have been extended to protection from ransomware, credential misuse, and attacks that are transmitted through removable storage.
    - Integrity enforcement capabilities – Enable remote runtime attestation of Windows 10 platform.
    - Tamper-proofing capabilities – Uses virtualization-based security to isolate critical Microsoft Defender for Endpoint security capabilities away from the OS and attackers.
- [Platform support](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Protecting-Windows-Server-with-Windows-Defender-ATP/ba-p/267114) – In addition to Windows 10, Microsoft Defender for Endpoint’s functionality has been extended to support Windows 7 and Windows 8.1 clients, as well as macOS, Linux, and Windows Server with both its Endpoint Detection (EDR) and Endpoint Protection Platform (EPP) capabilities.

- **Advanced machine learning**: Improved with advanced machine learning and AI models that enable it to protect against apex attackers using innovative vulnerability exploit techniques, tools and malware.
- **Emergency outbreak protection**: Provides emergency outbreak protection which will automatically update devices with new intelligence when a new outbreak has been detected.
- **Certified ISO 27001 compliance**: Ensures that the cloud service has analyzed for threats, vulnerabilities and impacts, and that risk management and security controls are in place.
- **Geolocation support**: Support geolocation and sovereignty of sample data as well as configurable retention policies.
- **Improved support for non-ASCII file paths** for Microsoft Defender Advanced Threat Protection (ATP) Auto Incident Response (IR).

Note: [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) parameter is deprecated in this release.

### Threat Protection

- [Windows Sandbox](https://techcommunity.microsoft.com/t5/Windows-Kernel-Internals/Windows-Sandbox/ba-p/301849): Isolated desktop environment where you can run untrusted software without the fear of lasting impact to your device.
- [Microphone privacy settings](https://support.microsoft.com/en-us/help/4468232/windows-10-camera-microphone-and-privacy-microsoft-privacy): A microphone icon appears in the notification area letting you see which apps are using your microphone.

#### Microsoft Defender Application Guard

- [Microsoft Defender Application Guard](/windows/security/threat-protection/windows-defender-application-guard/wd-app-guard-overview) enhancements: 
  - Standalone users can install and configure their Windows Defender Application Guard settings without needing to change Registry key settings. Enterprise users can check their settings to see what their administrators have configured for their machines to better understand the behavior.
  - Application Guard is now an extension in Google Chrome and Mozilla Firefox. Many users are in a hybrid browser environment, and would like to extend Application Guard’s browser isolation technology beyond Microsoft Edge. In the latest release, users can install the Application Guard extension in their Chrome or Firefox browsers. This extension will redirect untrusted navigations to the Application Guard Edge browser. There is also a companion app to enable this feature in the Microsoft Store. Users can quickly launch Application Guard from their desktop using this app. This feature is also available in Windows 10, version 1803 or later with the latest updates.

    To try this extension: 
    1. Configure Application Guard policies on your device.
    2. Go to the Chrome Web Store or Firefox Add-ons and search for Application Guard. Install the extension.
    3. Follow any additional configuration steps on the extension setup page.
    4. Reboot the device.
    5. Navigate to an untrusted site in Chrome and Firefox.

  - Application Guard allows dynamic navigation: Application Guard now allows users to navigate back to their default host browser from the Application Guard Microsoft Edge. Previously, users browsing in Application Guard Edge would see an error page when they try to go to a trusted site within the container browser. With this new feature, users will automatically be redirected to their host default browser when they enter or click on a trusted site in Application Guard Edge. This feature is also available in Windows 10, version 1803 or later with the latest updates.

Application Guard performance is improved with optimized document opening times:
- An issue is fixed that could cause a one minute or more delay when you open a Microsoft Defender Application Guard (Application Guard) Office document. This can occur when you try to open a file using a Universal Naming Convention (UNC) path or Server Message Block (SMB) share link.
- A memory issue is fixed that could cause a Application Guard container to use almost 1 GB of working set memory when the container is idle.
- The performance of Robocopy is improved when copying files over 400 MB in size.

[Edge support for Microsoft Defender Application Guard](/deployedge/microsoft-edge-security-windows-defender-application-guard) has been available for Chromium-based Edge since early 2020.

Microsoft Defender Application Guard now supports Office: With [Microsoft Defender Application Guard for Office](/microsoft-365/security/office-365-security/install-app-guard), you can launch untrusted Office documents (from outside the Enterprise) in an isolated container to prevent potentially malicious content from compromising your device.

#### Windows Defender Application Control

- [Application Control for Windows](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control): In Windows 10, version 1903 WDAC added a number of new features that light up key scenarios and provide feature parity with AppLocker.
    - [Multiple Policies](/windows/security/threat-protection/windows-defender-application-control/deploy-multiple-windows-defender-application-control-policies): WDAC now supports multiple simultaneous code integrity policies for one device in order to enable the following scenarios: 1) enforce and audit side-by-side, 2) simpler targeting for policies with different scope/intent, 3) expanding a policy using a new ‘supplemental’ policy.
    - [Path-Based Rules](/windows/security/threat-protection/windows-defender-application-control/create-path-based-rules): The path condition identifies an app by its location in the file system of the computer or on the network instead of a signer or hash identifier. Additionally, WDAC has an option that allows admins to enforce at runtime that only code from paths that are not user-writeable is executed. When code tries to execute at runtime, the directory is scanned and files will be checked for write permissions for non-known admins. If a file is found to be user writeable, the executable is blocked from running unless it is authorized by something other than a path rule like a signer or hash rule.<br>
    This brings WDAC to functionality parity with AppLocker in terms of support for file path rules. WDAC improves upon the security of policies based on file path rules with the availability of the user-writability permission checks at runtime time, which is a capability that is not available with AppLocker.
    - [Allow COM Object Registration](/windows/security/threat-protection/windows-defender-application-control/allow-com-object-registration-in-windows-defender-application-control-policy): Previously, WDAC enforced a built-in allow list for COM object registration. While this mechanism works for most common application usage scenarios, customers have provided feedback that there are cases where additional COM objects need to be allowed. The 1903 update to Windows 10 introduces the ability to specify allowed COM objects via their GUID in the WDAC policy.

#### Windows Defender System Guard

[System Guard](/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows) has added a new feature in this version of Windows called **SMM Firmware Measurement**. This feature is built on top of [System Guard Secure Launch](/windows/security/threat-protection/windows-defender-system-guard/system-guard-secure-launch-and-smm-protection) to check that the System Management Mode (SMM) firmware on the device is operating in a healthy manner - specifically, OS memory and secrets are protected from SMM. There are currently no devices out there with compatible hardware, but they will be coming out in the next few months.

This new feature is displayed under the Device Security page with the string “Your device exceeds the requirements for enhanced hardware security” if configured properly:

![System Guard.](../images/system-guard.png "SMM Firmware Measurement")

In this release, [Windows Defender System Guard](/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows) enables an even *higher* level of [System Management Mode](/windows/security/threat-protection/windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows#system-management-mode-smm-protection) (SMM) Firmware Protection that goes beyond checking the OS memory and secrets to additional resources like registers and IO.

With this improvement, the OS can detect a higher level of SMM compliance, enabling devices to be even more hardened against SMM exploits and vulnerabilities. This feature is forward-looking and currently requires new hardware available soon.

 ![System Guard.](../images/system-guard2.png)

### Security management

- [Windows Defender Firewall now supports Windows Subsystem for Linux (WSL)](https://blogs.windows.com/windowsexperience/2018/04/19/announcing-windows-10-insider-preview-build-17650-for-skip-ahead/#II14f7VlSBcZ0Gs4.97): Lets you add rules for WSL process, just like for Windows processes. 
- [Windows Security app](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center) improvements now include Protection history, including detailed and easier to understand information about threats and available actions, Controlled Folder Access blocks are now in the Protection history, Windows Defender Offline Scanning tool actions, and any pending recommendations. 
- [Tamper Protection](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection) lets you prevent others from tampering with important security features.

#### Microsoft BitLocker

BitLocker and Mobile Device Management (MDM) with Azure Active Directory work together to protect your devices from accidental password disclosure. Now, a new key-rolling feature securely rotates recovery passwords on MDM managed devices. The feature is activated whenever Microsoft Intune/MDM tools or a recovery password is used to unlock a BitLocker protected drive. As a result, the recovery password will be better protected when users manually unlock a BitLocker drive.

#### Key-rolling and Key-rotation

Windows 10, version 1909 also includes two new features called **Key-rolling** and **Key-rotation** enables secure rolling of Recovery passwords on MDM managed AAD devices on demand from Microsoft Intune/MDM tools or when a recovery password is used to unlock the BitLocker protected drive. This feature will help prevent accidental recovery password disclosure as part of manual BitLocker drive unlock by users.

## Deployment

### Windows Autopilot

[Windows Autopilot](/mem/autopilot/windows-autopilot) is a deployment tool introduced with Windows 10, version 1709 and is also available for Windows 10 Enterprise LTSC 2019, LTSC 2021, and later versions. Windows Autopilot provides a modern device lifecycle management service powered by the cloud to deliver a zero touch experience for deploying Windows 10. 

Windows Autopilot is currently available with Surface, Dell, HP, and Lenovo. Other OEM partners such as Panasonic, and Acer will support Autopilot soon. Check the [Windows IT Pro Blog](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/bg-p/Windows10Blog) or this article for updated information.

Using Intune, Autopilot now enables locking the device during provisioning during the Windows Out Of Box Experience (OOBE) until policies and settings for the device get provisioned, thereby ensuring that by the time the user gets to the desktop, the device is secured and configured correctly. 

You can also apply an Autopilot deployment profile to your devices using Microsoft Store for Business. When people in your organization run the out-of-box experience on the device, the profile configures Windows based on the Autopilot deployment profile you applied to the device. For more information, see [Manage Windows device deployment with Windows Autopilot Deployment](/microsoft-store/add-profile-to-devices).

The following new Windows Autopilot features are available in Windows 10, version 1903 and later:

- [Windows Autopilot for for pre-provisioned deployment](/windows/deployment/windows-autopilot/pre-provision) is now available. Pre-provisioned deployment enables partners or IT staff to pre-provision devices so they are fully configured and business ready for your users.
- The Intune [enrollment status page](/intune/windows-enrollment-status) (ESP) now tracks Intune Management Extensions​.
- [Cortana voiceover](/windows-hardware/customize/desktop/cortana-voice-support) and speech recognition during OOBE is disabled by default for all Windows 10 Pro Education, and Enterprise SKUs.
- Windows Autopilot is self-updating during OOBE. Starting with the Windows 10, version 1903 Autopilot functional and critical updates will begin downloading automatically during OOBE.
- Windows Autopilot will set the [diagnostics data](/windows/privacy/windows-diagnostic-data) level to Full on Windows 10 version 1903 and later during OOBE.
- [Windows Autopilot with co-management](/mem/configmgr/comanage/quickstart-autopilot) is available. Co-management and Autopilot together can help you reduce cost and improve the end user experience.
- Enhancements to Windows Autopilot deployment reporting are in preview. From the Microsoft Endpoint Manager admin center (endpoint.microsoft.com), select **Devices** > **Monitor** and scroll down to the **Enrollment** section. Click **Autopilot deployment (preview)**.
- You can configure [Windows Autopilot user-driven](/windows/deployment/windows-autopilot/user-driven) Hybrid Azure Active Directory join with VPN support.
- If you configure the language settings in the Autopilot profile and the device is connected to Ethernet, all scenarios will now skip the language, locale, and keyboard pages.  In previous versions, this was only supported with self-deploying profiles.

## Microsoft Intune

Microsoft Intune supports Windows 10 Enterprise LTSC 2021, except for [Windows Update Rings](/mem/intune/configuration/device-profile-create#create-the-profile) in device profiles.

A new Intune remote action: **Collect diagnostics**, lets you collect the logs from corporate devices without interrupting or waiting for the end user. For more information, see [Collect diagnostics remote action](/mem/intune/fundamentals/whats-new#collect-diagnostics-remote-action).

Intune has also added capabilities to [Role-based access control](/mem/intune/fundamentals/whats-new#role-based-access-control) (RBAC) that can be used to further define profile settings for the Enrollment Status Page (ESP). For more information see [Create Enrollment Status Page profile and assign to a group](/mem/intune/enrollment/windows-enrollment-status#create-enrollment-status-page-profile-and-assign-to-a-group). 

For a full list of what's new in Microsoft Intune, see [What's new in Microsoft Intune](/mem/intune/fundamentals/whats-new).

### SetupDiag

[SetupDiag](/windows/deployment/upgrade/setupdiag) is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 53 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available. 

### Reserved storage

[**Reserved storage**](https://techcommunity.microsoft.com/t5/Storage-at-Microsoft/Windows-10-and-reserved-storage/ba-p/428327): Reserved storage sets aside disk space to be used by updates, apps, temporary files, and system caches. It improves the day-to-day function of your PC by ensuring critical OS functions always have access to disk space.  Reserved storage will be enabled automatically on new PCs with Windows 10, version 1903 pre-installed, and for clean installs.  It will not be enabled when updating from a previous version of Windows 10. 

#### Microsoft Endpoint Manager

Configuration Manager, Intune, Desktop Analytics, Co-Management, and Device Management Admin Console are now [Microsoft Endpoint Manager](/configmgr/). See the Nov. 4 2019 [announcement](https://www.microsoft.com/microsoft-365/blog/2019/11/04/use-the-power-of-cloud-intelligence-to-simplify-and-accelerate-it-and-the-move-to-a-modern-workplace/). Also see [Modern management and security principles driving our Microsoft Endpoint Manager vision](https://techcommunity.microsoft.com/t5/Enterprise-Mobility-Security/Modern-management-and-security-principles-driving-our-Microsoft/ba-p/946797).

An in-place upgrade wizard is available in Configuration Manager. For more information, see [Simplifying Windows 10 deployment with Configuration Manager](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplifying-windows-10-deployment-with-configuration-manager/ba-p/1214364).

Also see [What's new in Microsoft Intune](/mem/intune/fundamentals/whats-new).
        .
### Windows Assessment and Deployment Toolkit (ADK)

A new [Windows ADK](/windows-hardware/get-started/adk-install) is available for Windows 11 that also supports Windows 10, version 21H2.

### Microsoft Deployment Toolkit (MDT)

For the latest information about MDT, see the [MDT release notes](/mem/configmgr/mdt/release-notes).

### Windows Setup

Windows Setup [answer files](/windows-hardware/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs) (unattend.xml) have improved language handling.

Improvements in Windows Setup with this release also include:
- Reduced offline time during feature updates
- Improved controls for reserved storage
- Improved controls and diagnostics
- New recovery options

For more information, see Windows Setup enhancements in the [Windows IT Pro Blog](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/pilot-new-features-with-the-windows-insider-program-for-business/ba-p/1220464).

## Device management

Modern Device Management (MDM) policy is extended with new [Local Users and Groups settings](/windows/client-management/mdm/policy-csp-localusersandgroups) that match the options available for devices managed through Group Policy.

For more information about what's new in MDM, see [What's new in mobile device enrollment and management](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management)

Windows Management Instrumentation (WMI) Group Policy Service (GPSVC) has a performance improvement to support remote work scenarios:
- An issue is fixed that caused changes by an Active Directory (AD) administrator to user or computer group memberships to propagate slowly. Although the access token eventually updates, these changes might not appear when the administrator uses gpresult /r or gpresult /h to create a report.

## Windows Subsystem for Linux

Windows Subsystem for Linux (WSL) is be available in-box.

## Networking

WPA3 H2E standards are supported for enhanced Wi-Fi security.

## See Also

[Windows 10 Enterprise LTSC](index.md): A short description of the LTSC servicing channel with links to information about each release.
