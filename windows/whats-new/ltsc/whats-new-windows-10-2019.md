---
title: What's new in Windows 10 Enterprise LTSC 2019
manager: aaroncz
ms.author: mstewart
description: New and updated IT Pro content about new features in Windows 10 Enterprise LTSC 2019 (also known as Windows 10 Enterprise 2019 LTSB).
ms.service: windows-client
author: mestew
ms.localizationpriority: medium
ms.topic: reference
ms.subservice: itpro-fundamentals
ms.date: 07/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/" target="_blank">Windows 10 Enterprise LTSC 2019</a>
---

# What's new in Windows 10 Enterprise LTSC 2019

This article lists new and updated features and content that are of interest to IT Pros for Windows 10 Enterprise LTSC 2019, compared to Windows 10 Enterprise LTSC 2016 (LTSB). For a brief description of the LTSC servicing channel and associated support, see [Windows 10 Enterprise LTSC](overview.md).

> [!NOTE]
> Windows 10 Enterprise LTSC 2019 was first available on November 13, 2018. Features in Windows 10 Enterprise LTSC 2019 are equivalent to Windows 10, version 1809.

Windows 10 Enterprise LTSC 2019 builds on Windows 10 Pro, version 1809 adding premium features designed to address the needs of large and mid-size organizations (including large academic institutions), such as:

- Advanced protection against modern security threats
- Full flexibility of OS deployment
- Updating and support options
- Comprehensive device and app management and control capabilities

The Windows 10 Enterprise LTSC 2019 release is an important release for LTSC users because it includes the cumulative enhancements provided in Windows 10 versions 1703, 1709, 1803, and 1809. Details about these enhancements are provided below.

>[!IMPORTANT]
>The LTSC release is [intended for special use devices](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/LTSC-What-is-it-and-when-should-it-be-used/ba-p/293181). Support for LTSC by apps and tools that are designed for the general availability channel release of Windows 10 might be limited.

## Microsoft Intune

Microsoft Intune supports Windows 10 Enterprise LTSC 2019 with the following exception:

- [Update rings](/mem/intune/protect/windows-10-update-rings) can't be used for feature updates since Windows 10 LTSC versions don't receive feature updates. Update rings can be used for quality updates for Windows 10 Enterprise LTSC 2019 clients.

## Security

This version of Windows 10 includes security improvements for threat protection, information protection, and identity protection.

### Threat protection

#### Microsoft Defender for Endpoint

The [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/) platform includes multiple security pillars. In this version of Windows, Defender for Endpoint includes powerful analytics, security stack integration, and centralized management for better detection, prevention, investigation, response, and management.

##### Attack surface reduction

Attack surface reduction includes host-based intrusion prevention systems such as [controlled folder access](/microsoft-365/security/defender-endpoint/enable-controlled-folders).

- This feature can help prevent ransomware and other destructive malware from changing your personal files. In some cases, apps that you normally use might be blocked from making changes to common folders like **Documents** and **Pictures**. We've made it easier for you to add apps that were recently blocked so you can keep using your device without turning off the feature altogether.

- When an app is blocked, it will appear in a recently blocked apps list, which you can get to by clicking **Manage settings** under the **Ransomware protection** heading. Select **Allow an app through Controlled folder access**. After the prompt, select the **+** button and choose **Recently blocked apps**. Select any of the apps to add them to the allowed list. You can also browse for an app from this page.

###### Windows Defender Firewall

Windows Defender Firewall now supports Windows Subsystem for Linux (WSL) processes. You can add specific rules for a WSL process just as you would for any Windows process. Also, Windows Defender Firewall now supports notifications for WSL processes. For example, when a Linux tool wants to allow access to a port from the outside (like SSH or a web server like nginx), Windows Defender Firewall will prompt to allow access just like it would for a Windows process when the port starts accepting connections. This behavior was first introduced in [Build 17627](/windows/wsl/release-notes#build-17618-skip-ahead).

##### Windows Defender Device Guard

[Device Guard](/windows/security/threat-protection/device-guard/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control) has always been a collection of technologies that can be combined to lock down a PC, including:

- Software-based protection provided by code integrity policies
- Hardware-based protection provided by Hypervisor-protected code integrity (HVCI)

But these protections can also be configured separately. And, unlike HVCI, code integrity policies don't require virtualization-based security (VBS). To help underscore the distinct value of these protections, code integrity policies have been rebranded as [Windows Defender Application Control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control).

### Next-gen protection

### Endpoint detection and response

Endpoint detection and response are improved. Enterprise customers can now take advantage of the entire Windows security stack with Microsoft Defender Antivirus **detections** and Device Guard **blocks** being surfaced in the Microsoft Defender for Endpoint portal.

Windows Defender is now called Microsoft Defender Antivirus and now shares detection status between Microsoft 365 services and interoperates with Microsoft Defender for Endpoint.  Other policies have also been implemented to enhance cloud based protection, and new channels are available for emergency protection. For more information, see [Virus and threat protection](/windows/security/operating-system-security/system-security/windows-defender-security-center/wdsc-virus-threat-protection) and [Use next-gen technologies in Microsoft Defender Antivirus through cloud-delivered protection](/microsoft-365/security/defender-endpoint/cloud-protection-microsoft-defender-antivirus).

We've also [increased the breadth of the documentation library for enterprise security admins](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows). The new library includes information on:

- [Deploying and enabling AV protection](/microsoft-365/security/defender-endpoint/deploy-microsoft-defender-antivirus)
- [Managing updates](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus)
- [Reporting](/microsoft-365/security/defender-endpoint/report-monitor-microsoft-defender-antivirus)
- [Configuring features](/microsoft-365/security/defender-endpoint/configure-microsoft-defender-antivirus-features)
- [Troubleshooting](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus)

Some of the highlights of the new library include [Evaluation guide for Microsoft Defender AV](/microsoft-365/security/defender-endpoint/evaluate-microsoft-defender-antivirus) and [Deployment guide for Microsoft Defender AV in a virtual desktop infrastructure environment](/microsoft-365/security/defender-endpoint/deployment-vdi-microsoft-defender-antivirus).

New features for Microsoft Defender AV in Windows 10 Enterprise LTSC 2019 include:

- [Updates to how the Block at First Sight feature can be configured](/microsoft-365/security/defender-endpoint/configure-block-at-first-sight-microsoft-defender-antivirus)
- [The ability to specify the level of cloud-protection](/microsoft-365/security/defender-endpoint/specify-cloud-protection-level-microsoft-defender-antivirus)
- [Microsoft Defender Antivirus protection in the Windows Defender Security Center app](/microsoft-365/security/defender-endpoint/microsoft-defender-security-center-antivirus)

We've [invested heavily in helping to protect against ransomware](https://blogs.windows.com/business/2016/11/11/defending-against-ransomware-with-windows-10-anniversary-update/#UJlHc6SZ2Zm44jCt.97), and we continue that investment with [updated behavior monitoring and always-on real-time protection](/microsoft-365/security/defender-endpoint/configure-real-time-protection-microsoft-defender-antivirus).

**Endpoint detection and response** is also enhanced. New **detection** capabilities include:

- [Custom detection](/microsoft-365/security/defender-endpoint/overview-custom-detections). With custom detections, you can create custom queries to monitor events for any kind of behavior such as suspicious or emerging threats. You can use advanced hunting through the creation of custom detection rules.

- Improvements on OS memory and kernel sensors to enable detection of attackers who are using in-memory and kernel-level attacks.

- Upgraded detections of ransomware and other advanced attacks.

- Historical detection capability ensures new detection rules apply to up to six months of stored data to detect previous attacks that might not have been noticed.

**Threat response** is improved when an attack is detected, enabling immediate action by security teams to contain a breach:

- [Take response actions on a machine](/microsoft-365/security/defender-endpoint/respond-machine-alerts) - Quickly respond to detected attacks by isolating machines or collecting an investigation package.
- [Take response actions on a file](/microsoft-365/security/defender-endpoint/respond-file-alerts) - Quickly respond to detected attacks by stopping and quarantining files or blocking a file.

Other capabilities have been added to help you gain a holistic view on **investigations** include:

- [Threat analytics](/microsoft-365/security/defender-endpoint/threat-analytics) - Threat Analytics is a set of interactive reports published by the Microsoft Defender for Endpoint research team as soon as emerging threats and outbreaks are identified. The reports help security operations teams assess the effect to their environment. They also provide recommended actions to contain, increase organizational resilience, and prevent specific threats.

- [Query data using Advanced hunting in Microsoft Defender for Endpoint](/microsoft-365/security/defender/advanced-hunting-query-language)

- [Use Automated investigations to investigate and remediate threats](/microsoft-365/security/defender-endpoint/automated-investigations)

- [Investigate a user account](/microsoft-365/security/defender-endpoint/investigate-user) - Identify user accounts with the most active alerts and investigate cases of potential compromised credentials.

- [Alert process tree](/microsoft-365/security/defender-endpoint/investigate-alerts) - Aggregates multiple detections and related events into a single view to reduce case resolution time.

- [Pull alerts using REST API](/microsoft-365/security/defender-endpoint/configure-siem) - Use REST API to pull alerts from Microsoft Defender for Endpoint.

Other enhanced security features include:

- [Check sensor health state](/microsoft-365/security/defender-endpoint/check-sensor-status) - Check an endpoint's ability to provide sensor data and communicate with the Microsoft Defender for Endpoint service and fix known issues.

- [Managed security service provider (MSSP) support](/microsoft-365/security/defender-endpoint/mssp-support) - Microsoft Defender for Endpoint adds support for this scenario by providing MSSP integration. The integration will allow MSSPs to take the following actions: Get access to MSSP customer's Windows Defender Security Center portal, fetch email notifications, and fetch alerts through security information and event management (SIEM) tools.

- [Integration with Azure Defender](/microsoft-365/security/defender-endpoint/configure-server-endpoints#integration-with-microsoft-defender-for-cloud) - Microsoft Defender for Endpoint integrates with Azure Defender to provide a comprehensive server protection solution. With this integration, Azure Defender can use Defender for Endpoint to provide improved threat detection for Windows Servers.

- [Integration with Microsoft Cloud App Security](/microsoft-365/security/defender-endpoint/microsoft-cloud-app-security-integration) - Microsoft Cloud App Security uses Microsoft Defender for Endpoint signals to allow direct visibility into cloud application usage including the use of unsupported cloud services (shadow IT) from all Defender for Endpoint monitored machines.

- [Onboard Windows Server 2019](/microsoft-365/security/defender-endpoint/configure-server-endpoints#windows-server-semi-annual-enterprise-channel-sac-windows-server-2019-and-windows-server-2022) - Microsoft Defender for Endpoint now adds support for Windows Server 2019. You'll be able to onboard Windows Server 2019 in the same method available for Windows 10 client machines.

- [Onboard previous versions of Windows](/microsoft-365/security/defender-endpoint/onboard-downlevel) - Onboard supported versions of Windows machines so that they can send sensor data to the Microsoft Defender for Endpoint sensor.

- [Enable conditional access to better protect users, devices, and data](/microsoft-365/security/defender-endpoint/conditional-access)

We've also added a new assessment for the Windows time service to the **Device performance & health** section. If we detect that your device's time isn't properly synced with our time servers and the time-syncing service is disabled, we'll provide the option for you to turn it back on.

We're continuing to work on how other security apps you've installed show up in the **Windows Security** app. There's a new page called **Security providers** that you can find in the **Settings** section of the app. Select **Manage providers** to see a list of all the other security providers (including antivirus, firewall, and web protection) that are running on your device. Here you can easily open the providers' apps or get more information on how to resolve issues reported to you through **Windows Security**.

This improvement also means you'll see more links to other security apps within **Windows Security**. For example, if you open the **Firewall & network protection** section, you'll see the firewall apps that are running on your device under each firewall type, which includes domain, private, and public networks.

Also see [New capabilities of Microsoft Defender for Endpoint further maximizing the effectiveness and robustness of endpoint security](https://blogs.windows.com/business/2018/04/17/new-capabilities-of-windows-defender-atp-further-maximizing-the-effectiveness-and-robustness-of-endpoint-security/#62FUJ3LuMXLQidVE.97)

Get a quick, but in-depth overview of Microsoft Defender for Endpoint for Windows 10: [Defender for Endpoint](/microsoft-365/security/defender-endpoint/).

### Information protection

Improvements have been added to Windows Information Protection and BitLocker.

#### Windows Information Protection

Windows Information Protection is now designed to work with Microsoft Office and Azure Information Protection.

Microsoft Intune helps you create and deploy your Windows Information Protection (WIP) policy, including letting you choose your allowed apps, your WIP-protection level, and how to find enterprise data on the network. For more info, see [Create a Windows Information Protection (WIP) policy using Microsoft Intune](/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure) and [Associate and deploy your Windows Information Protection (WIP) and VPN policies by using Microsoft Intune](/windows/security/information-protection/windows-information-protection/create-vpn-and-wip-policy-using-intune-azure).

You can also now collect your audit event logs by using the Reporting configuration service provider (CSP) or the Windows Event Forwarding (for Windows desktop domain-joined devices). For more information, see [How to collect Windows Information Protection (WIP) audit event logs](/windows/security/information-protection/windows-information-protection/collect-wip-audit-event-logs).

This release enables support for WIP with Files on Demand, allows file encryption while the file is open in another app, and improves performance. For more information, see [OneDrive files on-demand for the enterprise](https://techcommunity.microsoft.com/t5/microsoft-onedrive-blog/onedrive-files-on-demand-for-the-enterprise/ba-p/117234).

### BitLocker

The minimum PIN length is being changed from 6 to 4, with a default of 6. For more information, see [BitLocker Group Policy settings](/windows/security/operating-system-security/data-protection/bitlocker/configure#bitlocker-policy-settings).

#### Silent enforcement on fixed drives

Through a modern device management (MDM) policy, BitLocker can be enabled silently for standard Microsoft Entra ID joined users. In Windows 10, version 1803 automatic BitLocker encryption was enabled for standard Entra ID users, but this still required modern hardware that passed the Hardware Security Test Interface (HSTI). This new functionality enables BitLocker via policy even on devices that don't pass the HSTI.

This change is an update to the [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) and used by Intune and others.

### Identity protection

Improvements have been added are to Windows Hello for Business and Credential Guard.

#### Windows Hello for Business

New features in Windows Hello enable a better device lock experience, using multifactor unlock with new location and user proximity signals. Using Bluetooth signals, you can configure your Windows 10 device to automatically lock when you walk away from it, or to prevent others from accessing the device when you aren't present.

New features in [Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-identity-verification) include:

- You can now reset a forgotten PIN without deleting company managed data or apps on devices managed by [Microsoft Intune](/mem/intune).

- For Windows desktops, users are able to reset a forgotten PIN through **Settings > Accounts > Sign-in options**. For more information, see [What if I forget my PIN?](/windows/security/identity-protection/hello-for-business/hello-feature-pin-reset).

Windows Hello for Business now supports FIDO 2.0 authentication for Entra ID-joined Windows 10 devices and has enhanced support for shared devices, as described in [Kiosk configuration](#kiosk-configuration).

- Windows Hello is now password-less on S-mode.

- Support for S/MIME with Windows Hello for Business and APIs for non-Microsoft identity lifecycle management solutions.

- Windows Hello is part of the account protection pillar in Windows Defender Security Center. Account Protection will encourage password users to set up Windows Hello Face, Fingerprint or PIN for faster sign-in, and will notify Dynamic lock users if Dynamic lock has stopped working because their device Bluetooth is off.

- You can set up Windows Hello from lock screen for Microsoft accounts. We've made it easier for Microsoft account users to set up Windows Hello on their devices for faster and more secure sign-in. Previously, you had to navigate deep into Settings to find Windows Hello. Now, you can set up Windows Hello Face, Fingerprint or PIN straight from your lock screen by clicking the Windows Hello tile under Sign-in options.

- New [public API](/uwp/api/windows.security.authentication.web.core.webauthenticationcoremanager.findallaccountsasync) for secondary account SSO for a particular identity provider.

- It's easier to set up Dynamic lock, and WD SC actionable alerts have been added when Dynamic lock stops working (ex: device Bluetooth is off).

For more information, see: [Windows Hello and FIDO2 Security Keys enable secure and easy authentication for shared devices](https://blogs.windows.com/business/2018/04/17/windows-hello-fido2-security-keys/#OdKBg3pwJQcEKCbJ.97)

#### Credential Guard

Credential Guard is a security service in Windows 10 built to protect Active Directory (AD) domain credentials so that they can't be stolen or misused by malware on a user's machine. It's designed to protect against well-known threats such as Pass-the-Hash and credential harvesting.

Credential Guard has always been an optional feature, but Windows 10 in S mode turns on this functionality by default when the machine has been Entra ID-joined. This feature provides an added level of security when connecting to domain resources not normally present on devices running Windows 10 in S mode.

> [!NOTE]
> Credential Guard is available only to S mode devices or Enterprise and Education Editions.

For more information, see [Credential Guard overview](/windows/security/identity-protection/credential-guard/credential-guard-requirements).

### Other security improvements

#### Windows security baselines

Microsoft has released new [Windows security baselines](/windows/security/operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines) for Windows Server and Windows 10. A security baseline is a group of Microsoft-recommended configuration settings with an explanation of their security effect. For more information, and to download the Policy Analyzer tool, see [Microsoft Security Compliance Toolkit 1.0](/windows/security/operating-system-security/device-management/windows-security-configuration-framework/security-compliance-toolkit-10).

#### SMBLoris vulnerability

An issue, known as _SMBLoris_, which could result in denial of service, has been addressed.

#### Windows Security Center

Windows Defender Security Center is now called **Windows Security Center**.

You can still get to the app in all the usual ways. WSC lets you manage all your security needs, including **Microsoft Defender Antivirus** and **Windows Defender Firewall**.

The WSC service now requires antivirus products to run as a protected process to register. Products that haven't yet implemented this functionality won't appear in the Windows Security Center user interface, and Microsoft Defender Antivirus will remain enabled side-by-side with these products.

WSC now includes the Fluent Design System elements you know and love. You'll also notice we've adjusted the spacing and padding around the app. It will now dynamically size the categories on the main page if more room is needed for extra info. We also updated the title bar so that it will use your accent color if you've enabled that option in **Color Settings**.

:::image type="content" source="../images/defender.png" alt-text="Screenshot of the Windows Security Center.":::

#### Group policy security options

The security setting [**Interactive logon: Display user information when the session is locked**](/windows/security/threat-protection/security-policy-settings/interactive-logon-display-user-information-when-the-session-is-locked) has been updated to work with the **Privacy** setting in **Settings** > **Accounts** > **Sign-in options**.

A new security policy setting
[**Interactive logon: Don't display username at sign-in**](/windows/security/threat-protection/security-policy-settings/interactive-logon-dont-display-username-at-sign-in) has been introduced in Windows 10 Enterprise LTSC 2019. This security policy setting determines whether the username is displayed during sign-in. It works with the **Privacy** setting in **Settings** > **Accounts** > **Sign-in options**. The setting only affects the **Other user** tile.

#### Windows 10 in S mode

We've continued to work on the **Current threats** area in  [Virus & threat protection](/windows/security/operating-system-security/system-security/windows-defender-security-center/wdsc-virus-threat-protection), which now displays all threats that need action. You can quickly take action on threats from this screen:

:::image type="content" source="../images/virus-and-threat-protection.png" alt-text="Screenshot of the Virus & threat protection settings in Windows 10 Enterprise LTSC 2019.":::

## Deployment

### MBR2GPT.EXE

MBR2GPT.EXE is a new command-line tool introduced with Windows 10, version 1703 and also available in Windows 10 Enterprise LTSC 2019 (and later versions). MBR2GPT converts a disk from Master Boot Record (MBR) to GUID Partition Table (GPT) partition style without modifying or deleting data on the disk. The tool runs from a Windows Preinstallation Environment (Windows PE) command prompt, but can also run from the full Windows 10 operating system.

The GPT partition format is newer and enables the use of larger and more disk partitions. It also provides added data reliability, supports other partition types, and enables faster boot and shutdown speeds. If you convert the system disk on a computer from MBR to GPT, you must also configure the computer to boot in UEFI mode, so make sure that your device supports UEFI before attempting to convert the system disk.

Other security features of Windows 10 that are enabled when you boot in UEFI mode include: Secure Boot, Early Launch Anti-malware (ELAM) driver, Windows Trusted Boot, Measured Boot, Device Guard, Credential Guard, and BitLocker Network Unlock.

For more information, see [MBR2GPT.EXE](/windows/deployment/mbr-to-gpt).

### DISM

The following new DISM commands have been added to manage feature updates:

- `DISM /Online /Initiate-OSUninstall`: Initiates an OS uninstall to take the computer back to the previous installation of windows.

- `DISM /Online /Remove-OSUninstall`: Removes the OS uninstall capability from the computer.

- `DISM /Online /Get-OSUninstallWindow`: Displays the number of days after upgrade during which uninstall can be performed.

- `DISM /Online /Set-OSUninstallWindow`: Sets the number of days after upgrade during which uninstall can be performed.

For more information, see [DISM operating system uninstall command-line options](/windows-hardware/manufacture/desktop/dism-uninstallos-command-line-options).

### Windows Setup

You can now run your own custom actions or scripts in parallel with Windows Setup. Setup will also migrate your scripts to next feature release, so you only need to add them once.

Prerequisites:

- Windows 10, version 1803 or Windows 10 Enterprise LTSC 2019, or later.
- Windows 10 Enterprise or Pro

For more information, see [Run custom actions during feature update](/windows-hardware/manufacture/desktop/windows-setup-enable-custom-actions).

It's also now possible to run a script if the user rolls back their version of Windows using the PostRollback option.

`/PostRollback<location> [\setuprollback.cmd] [/postrollback {system / admin}]`

For more information, see [Windows Setup command-line options](/windows-hardware/manufacture/desktop/windows-setup-command-line-options#postrollback).

New command-line switches are also available to control BitLocker:

- `Setup.exe /BitLocker AlwaysSuspend`: Always suspend BitLocker during upgrade.

- `Setup.exe /BitLocker TryKeepActive`: Enable upgrade without suspending BitLocker, but if upgrade doesn't work, then suspend BitLocker and complete the upgrade.

- `Setup.exe /BitLocker ForceKeepActive`: Enable upgrade without suspending BitLocker, but if upgrade doesn't work, fail the upgrade.

For more information, see [Windows Setup Command-Line Options](/windows-hardware/manufacture/desktop/windows-setup-command-line-options#bitlocker).

### Feature update improvements

Portions of the work done during the offline phases of a Windows update have been moved to the online phase. This change results in a significant reduction of offline time when installing updates.

### SetupDiag

[SetupDiag](/windows/deployment/upgrade/setupdiag) is a new command-line tool that can help diagnose why a Windows 10 update failed.

SetupDiag works by searching Windows Setup log files. When it searches log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 53 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available.

## Sign-in

### Faster sign-in to a Windows 10 shared pc

If you have shared devices deployed in your work place, **Fast sign-in** enables users to quickly sign in to a [shared Windows 10 PC](/windows/configuration/set-up-shared-or-guest-pc).

#### To enable fast sign-in

1. Set up a shared or guest device with Windows 10, version 1809 or Windows 10 Enterprise LTSC 2019.

2. Set the Policy CSP, and the **Authentication** and **EnableFastFirstSignIn** policies to enable fast sign-in.

3. Sign-in to a shared PC with your account.

    :::image type="content" source="../images/fastsignin.png" alt-text="An animated image that demonstrates the fast sign-in feature in Windows 10 Enterprise LTSC 2019.":::

### Web sign-in to Windows 10

Until now, Windows sign-in only supported the use of identities federated to ADFS or other providers that support the WS-Fed protocol. We're introducing "web sign-in," a new way of signing into your Windows PC. Web Sign-in enables Windows sign-in support for non-ADFS federated providers (e.g.SAML).

#### Try out web sign-in

1. Entra ID join your Windows 10 PC. (Web sign-in is only supported on Entra ID-joined PCs).

2. Set the Policy CSP, and the Authentication and EnableWebSignIn policies to enable web sign-in.

3. On the lock screen, select web sign-in under sign-in options.

4. Select "Sign in" to continue.

    :::image type="content" source="../images/websignin.png" alt-text="A screenshot of the Windows 10 sign-in screen that highlights the web sign-in feature.":::

## Update Compliance

Update Compliance helps you to keep Windows 10 devices in your organization secure and up-to-date.

Update Compliance is a solution built using OMS Log Analytics that provides information about installation status of monthly quality and feature updates. Details are provided about the deployment progress of existing updates and the status of future updates. Information is also provided about devices that might need attention to resolve issues.

New capabilities in Update Compliance let you monitor Windows Defender protection status, compare compliance with industry peers, and optimize bandwidth for deploying updates.

## Accessibility and privacy

### Accessibility

"Out of box" accessibility is enhanced with auto-generated picture descriptions. For more information about accessibility, see [Accessibility information for IT Professionals](/windows/configuration/windows-accessibility-for-itpros). Also see the accessibility section in [What's new in the Windows 10 April 2018 Update](https://blogs.windows.com/windowsexperience/2018/04/30/whats-new-in-the-windows-10-april-2018-update/).

### Privacy

In the Feedback and Settings page under Privacy Settings, you can now delete the diagnostic data your device has sent to Microsoft. You can also view this diagnostic data using the [Diagnostic Data Viewer](/windows/privacy/diagnostic-data-viewer-overview) app.

## Configuration

### Kiosk configuration

The new chromium-based Microsoft Edge has many improvements targeted to kiosks. However, it's not included in the LTSC release of Windows 10. You can download and install Microsoft Edge separately. For more information, see [Download and deploy Microsoft Edge for business](https://www.microsoft.com/edge/business/download).

Internet Explorer is included in Windows 10 LTSC releases as its feature set isn't changing, and it will continue to get security fixes for the life of a Windows 10 LTSC release.

If you wish to take advantage of kiosk capabilities in Microsoft Edge, consider [Kiosk mode](/windows/configuration/kiosk-methods) with a semi-annual release channel.

### Co-management

Intune and Microsoft Configuration Manager policies have been added to enable hybrid Entra ID-joined authentication. Mobile Device Management (MDM) has added over 150 new policies and settings in this release, including the [MDMWinsOverGP](/windows/client-management/mdm/policy-csp-controlpolicyconflict) policy, to enable easier transition to cloud-based management.

For more information, see [What's New in MDM enrollment and management](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management).

### OS uninstall period

The OS uninstall period is a length of time that users are given when they can optionally roll back a Windows 10 update.  With this release, administrators can use Intune or [DISM](#dism) to customize the length of the OS uninstall period.

### Microsoft Entra ID join in bulk

Using the new wizards in Windows Configuration Designer, you can [create provisioning packages to enroll devices in Entra ID](/windows/configuration/provisioning-packages/provisioning-packages#configuration-designer-wizards). Entra ID join in bulk is available in the desktop, mobile, kiosk, and Surface Hub wizards.

### Windows Spotlight

The following new group policy and mobile device management (MDM) settings are added to help you configure Windows Spotlight user experiences:

- **Turn off the Windows Spotlight on Action Center**
- **Do not use diagnostic data for tailored experiences**
- **Turn off the Windows Welcome Experience**

For more information, see [Configure Windows Spotlight on the lock screen](/windows/configuration/windows-spotlight).

### Start and taskbar layout

Previously, the customized taskbar could only be deployed using Group Policy or provisioning packages. Windows 10 Enterprise LTSC 2019 adds support for customized taskbars to [MDM](/windows/configuration/customize-windows-10-start-screens-by-using-mobile-device-management).

[More MDM policy settings are available for Start and taskbar layout](/windows/configuration/windows-10-start-layout-options-and-policies). New MDM policy settings include:

- Settings for the User tile: [**Start/HideUserTile**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideusertile), [**Start/HideSwitchAccount**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideswitchaccount), [**Start/HideSignOut**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidesignout), [**Start/HideLock**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidelock), and [**Start/HideChangeAccountSettings**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidechangeaccountsettings)

- Settings for Power: [**Start/HidePowerButton**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidepowerbutton), [**Start/HideHibernate**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidehibernate), [**Start/HideRestart**](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderestart), [**Start/HideShutDown**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideshutdown), and [**Start/HideSleep**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidesleep)

- Other new settings: [**Start/HideFrequentlyUsedApps**](/windows/client-management/mdm/policy-configuration-service-provider#start-hidefrequentlyusedapps), [**Start/HideRecentlyAddedApps**](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentlyaddedapps), **AllowPinnedFolder**, **ImportEdgeAssets**, [**Start/HideRecentJumplists**](/windows/client-management/mdm/policy-configuration-service-provider#start-hiderecentjumplists), [**Start/NoPinningToTaskbar**](/windows/client-management/mdm/policy-configuration-service-provider#start-nopinningtotaskbar), [**Settings/PageVisibilityList**](/windows/client-management/mdm/policy-configuration-service-provider#settings-pagevisibilitylist), and [**Start/HideAppsList**](/windows/client-management/mdm/policy-configuration-service-provider#start-hideapplist).

## Windows Update

### Windows Insider for Business

We recently added the option to download Windows 10 Insider Preview builds using your corporate credentials in Microsoft Entra ID. By enrolling devices in Entra ID, you increase the visibility of feedback submitted by users in your organization - especially on features that support your specific business needs. For details, see [Windows Insider Program for Business](https://www.microsoft.com/windowsinsider/for-business).

You can now register your Entra ID domains to the Windows Insider Program. For more information, see [Windows Insider Program for Business](https://www.microsoft.com/windowsinsider/for-business).

### Optimize update delivery

With changes delivered in Windows 10 Enterprise LTSC 2019, [express updates](/windows/deployment/do/waas-optimize-windows-10-updates#express-update-delivery) are now fully supported with Configuration Manager. It's also supported with other third-party updating and management products that [implement this new functionality](/windows-server/administration/windows-server-update-services/deploy/express-update-delivery-isv-support). This support is in addition to current express support on Windows Update, Windows Update for Business and WSUS.

>[!NOTE]
> The above changes can be made available to Windows 10, version 1607, by installing the April 2017 cumulative update.

Delivery Optimization policies now enable you to configure other restrictions to have more control in various scenarios.

Added policies include:

- [Allow uploads while the device is on battery while under set Battery level](/windows/deployment/do/waas-delivery-optimization-reference#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level)
- [Enable Peer Caching while the device connects via VPN](/windows/deployment/do/waas-delivery-optimization-reference#enable-peer-caching-while-the-device-connects-via-vpn)
- [Minimum RAM (inclusive) allowed to use Peer Caching](/windows/deployment/do/waas-delivery-optimization-reference#minimum-ram-allowed-to-use-peer-caching)
- [Minimum disk size allowed to use Peer Caching](/windows/deployment/do/waas-delivery-optimization-reference#minimum-disk-size-allowed-to-use-peer-caching)
- [Minimum Peer Caching Content File Size](/windows/deployment/do/waas-delivery-optimization-reference#minimum-peer-caching-content-file-size)

For more information, see [Configure Delivery Optimization for Windows updates](/windows/deployment/do/waas-delivery-optimization).

### Uninstalled in-box apps no longer automatically reinstall

Starting with Windows 10 Enterprise LTSC 2019, in-box apps that were uninstalled by the user won't automatically reinstall as part of the feature update installation process.

Additionally, apps de-provisioned by admins on Windows 10 Enterprise LTSC 2019 machines will stay de-provisioned after future feature update installations. This behavior won't apply to the update from Windows 10 Enterprise LTSC 2016 (or earlier) to Windows 10 Enterprise LTSC 2019.

## Management

### New MDM capabilities

Windows 10 Enterprise LTSC 2019 adds many new [configuration service providers (CSPs)](/windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers) that provide new capabilities for managing Windows 10 devices using MDM or provisioning packages. Among other things, these CSPs enable you to configure a few hundred of the most useful group policy settings via MDM. For more information, see [Policy CSP - ADMX-backed policies](/windows/client-management/mdm/policy-configuration-service-provider).

Some of the other new CSPs are:

- The [DynamicManagement CSP](/windows/client-management/mdm/dynamicmanagement-csp) allows you to manage devices differently depending on location, network, or time. For example, managed devices can have cameras disabled when at a work location, the cellular service can be disabled when outside the country/region to avoid roaming charges, or the wireless network can be disabled when the device isn't within the corporate building or campus. Once configured, these settings will be enforced even if the device can't reach the management server when the location or network changes. The dynamic management CSP enables configuration of policies that change how the device is managed in addition to setting the conditions on which the change occurs.

- The [CleanPC CSP](/windows/client-management/mdm/cleanpc-csp) allows removal of user-installed and pre-installed applications, with the option to persist user data.

- The [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) is used to manage encryption of PCs and devices. For example, you can require storage card encryption on mobile devices, or require encryption for operating system drives.

- The [NetworkProxy CSP](/windows/client-management/mdm/networkproxy-csp) is used to configure a proxy server for ethernet and Wi-Fi connections.

- The [Office CSP](/windows/client-management/mdm/office-csp) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool. For more information, see [Configuration options for the Office Deployment Tool](/deployoffice/office-deployment-tool-configuration-options).

- The [EnterpriseAppVManagement CSP](/windows/client-management/mdm/enterpriseappvmanagement-csp) is used to manage virtual applications in Windows 10 PCs (Enterprise and Education editions) and enables App-V sequenced apps to be streamed to PCs even when managed by MDM.

For more information, see [What's new in mobile device enrollment and management](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management).

MDM has been expanded to include domain joined devices with Microsoft Entra ID registration. Group policy can be used with Active Directory-joined devices to trigger auto-enrollment to MDM. For more information, see [Enroll a Windows 10 device automatically using Group Policy](/windows/client-management/mdm/enroll-a-windows-10-device-automatically-using-group-policy).

Multiple new configuration items are also added. For more information, see [What's new in MDM enrollment and management](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management).

### Mobile application management support for Windows 10

The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP), starting in Windows 10 Enterprise LTSC 2019.

For more info, see [Implement server-side support for mobile application management on Windows](/windows/client-management/mdm/implement-server-side-mobile-application-management).

### MDM diagnostics

In Windows 10 Enterprise LTSC 2019, we continue our work to improve the diagnostic experience for modern management. By introducing auto-logging for mobile devices, Windows will automatically collect logs when encountering an error in MDM, eliminating the need to have always-on logging for memory-constrained devices. Additionally, we're introducing [Microsoft Message Analyzer](/message-analyzer/microsoft-message-analyzer-operating-guide) as another tool to help support personnel quickly reduce issues to their root cause, while saving time and cost.

### Application Virtualization for Windows (App-V)

Previous versions of the Microsoft Application Virtualization Sequencer (App-V Sequencer) have required you to manually create your sequencing environment. Windows 10 Enterprise LTSC 2019 introduces two new PowerShell cmdlets, **New-AppVSequencerVM** and **Connect-AppvSequencerVM**. These cmdlets automatically create your sequencing environment for you, including provisioning your virtual machine. Additionally, the App-V Sequencer has been updated to let you sequence or update multiple apps at the same time, while automatically capturing and storing your customizations as an App-V project template (`.appvt`) file, and letting you use PowerShell or group policy settings to automatically clean up your unpublished packages after a device restart.

For more information, see the following articles:

- [Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer)](/microsoft-desktop-optimization-pack/app-v/appv-auto-provision-a-vm)
- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](/microsoft-desktop-optimization-pack/app-v/appv-auto-batch-sequencing)
- [Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](/microsoft-desktop-optimization-pack/app-v/appv-auto-batch-updating)
- [Automatically cleanup unpublished packages on the App-V client](/microsoft-desktop-optimization-pack/app-v/appv-auto-clean-unpublished-packages)

### Windows diagnostic data

Learn more about the diagnostic data that's collected at the Basic level and some examples of the types of data that is collected at the Full level.

- [Windows 10, version 1703 basic level Windows diagnostic events and fields](/windows/privacy/basic-level-windows-diagnostic-events-and-fields-1703)
- [Windows 10, version 1703 diagnostic data](/windows/privacy/windows-diagnostic-data-1703)

### Group policy spreadsheet

Learn about the new group policies that were added in Windows 10 Enterprise LTSC 2019.

- [Group policy settings reference for Windows and Windows Server](https://www.microsoft.com/download/details.aspx?id=25250)

### Mixed reality apps

This version of Windows 10 introduces [Windows Mixed Reality](https://blogs.windows.com/windowsexperience/2017/10/03/the-era-of-windows-mixed-reality-begins-october-17/). Organizations that use WSUS must take action to enable Windows Mixed Reality. You can also prohibit use of Windows Mixed Reality by blocking installation of the Mixed Reality Portal. For more information, see [Enable or block Windows Mixed Reality apps in the enterprise](/windows/application-management/manage-windows-mixed-reality).

## Networking

### Network stack

Several network stack enhancements are available in this release. Some of these features were also available in Windows 10, version 1703. For more information, see [Core network stack features in the Creators Update for Windows 10](https://techcommunity.microsoft.com/t5/networking-blog/core-network-stack-features-in-the-creators-update-for-windows/ba-p/339676).

### Miracast over Infrastructure

In this version of Windows 10, Microsoft has extended the ability to send a Miracast stream over a local network rather than over a direct wireless link. This functionality is based on the [Miracast over Infrastructure Connection Establishment Protocol (MS-MICE)](/openspecs/windows_protocols/ms-mice/9598ca72-d937-466c-95f6-70401bb10bdb).

#### How it works

Users attempt to connect to a Miracast receiver as they did previously. When the list of Miracast receivers is populated, Windows 10 will identify that the receiver is capable of supporting a connection over the infrastructure. When the user selects a Miracast receiver, Windows 10 will attempt to resolve the device's hostname via standard DNS and multicast DNS (mDNS). If the name isn't resolvable via either DNS method, Windows 10 will fall back to establishing the Miracast session using the standard Wi-Fi direct connection.

#### Miracast over Infrastructure offers many benefits

- Windows automatically detects when sending the video stream over this path is applicable.
- Windows will only choose this route if the connection is over Ethernet or a secure Wi-Fi network.
- Users don't have to change how they connect to a Miracast receiver. They use the same UX as for standard Miracast connections.
- No changes to current wireless drivers or PC hardware are required.
- It works well with older wireless hardware that isn't optimized for Miracast over Wi-Fi Direct.
- It uses an existing connection that reduces the time to connect and provides a stable stream.

#### Enabling Miracast over Infrastructure

If you have a device that has been updated to Windows 10 Enterprise LTSC 2019, then you automatically have this new feature. To take advantage of it in your environment, you need to make sure the following requirement exist within your deployment:

- The device (PC or Surface Hub) needs to be running Windows 10, version 1703, Windows 10 Enterprise LTSC 2019, or a later OS.

- A Windows PC or Surface Hub can act as a Miracast over Infrastructure *receiver*. A Windows device can act as a Miracast over Infrastructure *source*.
    - As a Miracast receiver, the PC or Surface Hub must be connected to your enterprise network via either Ethernet or a secure Wi-Fi connection. For example, using either WPA2-PSK or WPA2-Enterprise security. If the Hub is connected to an open Wi-Fi connection, Miracast over Infrastructure will disable itself.
    - As a Miracast source, the device must be connected to the same enterprise network via Ethernet or a secure Wi-Fi connection.

- The DNS Hostname (device name) of the device needs to be resolvable via your DNS servers. You can achieve this configuration by either allowing your device to register automatically via Dynamic DNS, or by manually creating an A or AAAA record for the device's hostname.

- Windows 10 PCs must be connected to the same enterprise network via Ethernet or a secure Wi-Fi connection.

> [!IMPORTANT]
> Miracast over Infrastructure is not a replacement for standard Miracast. Instead, the functionality is complementary, and provides an advantage to users who are part of the enterprise network. Users who are guests to a particular location and don't have access to the enterprise network will continue to connect using the Wi-Fi Direct connection method.

## Registry editor improvements

We added a dropdown that displays while you type to help complete the next part of the path. You can also press **Ctrl + Backspace** to delete the last word, and **Ctrl + Delete** to delete the next word.

:::image type="content" source="../images/regeditor.png" alt-text="Screenshot of Registry Editor in Windows 10 showing list of path completion.":::

## Remote Desktop with Biometrics

Microsoft Entra ID and Active Directory users using Windows Hello for Business can use biometrics to authenticate to a remote desktop session.

To get started, sign into your device using Windows Hello for Business. Bring up **Remote Desktop Connection** (mstsc.exe), type the name of the computer you want to connect to, and select **Connect**.

- Windows remembers that you signed using Windows Hello for Business, and automatically selects Windows Hello for Business to authenticate you to your RDP session. You can also select **More choices** to choose alternate credentials.

- Windows uses facial recognition to authenticate the RDP session to the Windows Server 2016 Hyper-V server. You can continue to use Windows Hello for Business in the remote session, but you must use your PIN.

See the following example:

![Enter your credentials.](../images/RDPwBioTime.png "Windows Hello")
![Provide credentials.](../images/RDPwBio2.png "Windows Hello personal")
![Microsoft Hyper-V Server 2016.](../images/hyper-v.png "Microsoft Hyper-V Server 2016")

## See also

[Windows 10 Enterprise LTSC](overview.md): A short description of the LTSC servicing channel with links to information about each release.
