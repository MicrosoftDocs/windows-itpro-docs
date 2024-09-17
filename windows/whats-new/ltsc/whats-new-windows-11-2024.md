---
title: What's new in Windows 11 Enterprise LTSC 2024
manager: aaroncz
ms.author: mstewart
description: New and updated IT Pro content about new features in Windows 11 Enterprise LTSC 2024.
ms.service: windows-client
author: mestew
ms.localizationpriority: high
ms.topic: reference
ms.subservice: itpro-fundamentals
ms.date: 10/01/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/" target="_blank">Windows 11 Enterprise LTSC 2024</a>
---

# What's new in Windows 11 Enterprise LTSC 2024

This article lists new and updated features and content that is of interest to IT Pros for Windows 11 Enterprise LTSC 2024, compared to Windows 10 Enterprise LTSC 2021. For a brief description of the LTSC servicing channel and associated support, see [Windows Enterprise LTSC](overview.md).

> [!NOTE]
> Windows 11 Enterprise LTSC 2024 was first available on October 1, 2024. Features in Windows 11 Enterprise LTSC 2024 are equivalent to Windows 11, version 24H2.
>
> The LTSC release is [intended for special use devices](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/LTSC-What-is-it-and-when-should-it-be-used/ba-p/293181). Support for LTSC by apps and tools that are designed for the general availability channel release of Windows might be limited.

Windows 11 Enterprise LTSC 2024 builds on Windows 10 Enterprise LTSC 2021, adding premium features such as advanced protection against modern security threats and comprehensive device management, app management, and control capabilities. 

The Windows 11 Enterprise LTSC 2024 release includes the cumulative enhancements provided in Windows 11 versions 21H2, 22H2, 23H2, and 24H2. Details about these enhancements are provided below. 

## Lifecycle

> [!IMPORTANT]
> Windows 11 Enterprise LTSC 2024 has a 5 year lifecycle. ([IoT Enterprise LTSC](/windows/iot/iot-enterprise/whats-new/windows-iot-enterprise-ltsc) continues to have a [10 year lifecycle](/lifecycle/products/windows-11-iot-enterprise-ltsc-2024)). Windows 11 Enterprise LTSC follows the [Fixed Lifecycle Policy](/lifecycle/policies/fixed).

<!--For more information about the lifecycle for this release, see [The next Windows 10 long-term servicing channel (LTSC) release](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/the-next-windows-10-long-term-servicing-channel-ltsc-release/ba-p/2147232). -->

## Accessibility

| Feature </br> [Release] | Description |
| --- | --- |
| **Windows accessibility** </br> [22H2] | Improvements for people with disabilities: system-wide live captions, Focus sessions, voice access, and more natural voices for Narrator.</br> For more information, see:</br>&nbsp;&nbsp;• [New accessibility features coming to Windows 11](https://blogs.windows.com/windowsexperience/2022/05/10/new-accessibility-features-coming-to-windows-11/)</br>&nbsp;&nbsp;• [How inclusion drives innovation in Windows 11](https://blogs.windows.com/windowsexperience/?p=177554)</br>&nbsp;&nbsp;• [Accessibility information for IT professionals](/windows/configuration/windows-10-accessibility-for-itpros). |
| **Braille displays**  </br> [23H2] <!--7579823-->        | Braille displays work seamlessly and reliably across multiple screen readers, improving the end user experience. We also added support for new braille displays and new braille input and output languages in Narrator. For more information, see [Accessibility information for IT professionals](/windows/configuration/windows-accessibility-for-ITPros). |
| **Narrator improvements**  </br> [23H2] <!--kb5019509--> | Scripting functionality was added to Narrator. Narrator includes more natural voices. For more information, see [Complete guide to Narrator](https://support.microsoft.com/topic/e4397a0d-ef4f-b386-d8ae-c172f109bdb1)<!--8138352, 8138357--> |
| **Bluetooth &#174; LE audio support for assistive devices** </br> [24H2] | Windows has taken a significant step forward in accessibility by supporting the use of hearing aids equipped with the latest Bluetooth &#174; Low Energy Audio technology. For more information, see [Improving accessibility with Bluetooth &#174; LE Audio](https://blogs.windows.com/windows-insider/2023/10/18/announcing-windows-11-insider-preview-build-25977-canary-channel/). |

## Applications


| Feature </br> [Release]| Description |
| --- | --- |
| **Internet Explorer** | Internet Explorer (IE) is no longer available in Windows 11 Enterprise LTSC 2024. However, you can use IE Mode if a website needs Internet Explorer. For more information, see [Internet Explorer (IE) Mode](/deployedge/edge-ie-mode) |
| **Microsoft Edge** </br> [21H2] | The Microsoft Edge browser is the default browser. For information about configuring Microsoft Edge on Windows, see [Configure Microsoft Edge policy settings on Windows devices](/deployedge/configure-microsoft-edge). |


## Security

The security and privacy features in Windows 11 are similar to Windows 10. Security for your devices starts with the hardware, and includes OS security, application security, and user & identity security. There are features available in the Windows OS to help in these areas. This section describes some of these features. Microsoft's [Edge Secured-core Program](/azure/certification/overview) provides recommended hardware with these features to ensure security out of the box.  For a more comprehensive view, including zero trust, see [Windows security](/windows/security/).

| Feature </br> [Release] | Description |
| --- | --- |
| **Windows Security app** </br> [21H2] | Windows Security app is an easy-to-use interface, and combines commonly used security features. For example, your get access to virus & threat protection, firewall & network protection, account protection, and more. For more information, see [the Windows Security app](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center). |
| **Security baselines** </br> [21H2] | Security baselines include security settings that are already configured, and ready to be deployed to your devices. If you don't know where to start, or it's too time consuming to go through all the settings, then you should look at Security Baselines. For more information, see [Windows security baselines](/windows/security/threat-protection/windows-security-configuration-framework/windows-security-baselines). |
| **Microsoft Defender Antivirus** </br> [21H2] | Microsoft Defender Antivirus helps protect devices using next-generation security. When used with Microsoft Defender for Endpoint, your organization gets strong endpoint protection, and advanced endpoint protection & response. If you use Intune to manage devices, then you can create policies based on threat levels in Microsoft Defender for Endpoint. For more information, see:</br>&nbsp;&nbsp;• [Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows)</br>&nbsp;&nbsp;• [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)</br>&nbsp;&nbsp;• [Enforce compliance for Microsoft Defender for Endpoint](/mem/intune/protect/advanced-threat-protection) |
| **Application Security** </br> [21H2] | The Application Security features help prevent unwanted or malicious code from running, isolate untrusted websites & untrusted Office files, protect against phishing or malware websites, and more. For more information, see  [Windows application security](/windows/security/apps). |
| **Microsoft Pluton** </br> [22H2] | Pluton, designed by Microsoft and built by silicon partners,  is a secure crypto-processor built into the CPU. Pluton provides security at the core to ensure code integrity and the latest protection with updates delivered by Microsoft through Windows Update. Pluton protects credentials, identities, personal data, and encryption keys. Information is harder to be removed even if an attacker installed malware or has complete physical possession. For more information, see [Microsoft Pluton security processor](/windows/security/information-protection/pluton/microsoft-pluton-security-processor). |
| **Enhanced Phishing Protection** </br> [22H2] | Enhanced Phishing Protection in Microsoft Defender SmartScreen helps protect Microsoft passwords against phishing and unsafe usage. Enhanced Phishing Protection works alongside Windows security protections to help protect sign-in passwords. For more information, see:</br>&nbsp;&nbsp;• [Enhanced Phishing Protection in Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/phishing-protection-microsoft-defender-smartscreen)</br>&nbsp;&nbsp;• [Protect passwords with enhanced phishing protection](https://aka.ms/EnhancedPhishingProtectionBlog) in the Windows IT Pro blog. |
| **Smart App Control** </br> [22H2] | Smart App Control adds significant protection from malware, including new and emerging threats, by blocking apps that are malicious or untrusted. Smart App Control helps block unwanted apps that affect performance, display unexpected ads, offer extra software you didn't want, and other things you don't expect. For more information, see [Smart App Control](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control#wdac-and-smart-app-control). |
| **Credential Guard** </br> [22H2] | Credential Guard, enabled by default, uses Virtualization-based security (VBS) to isolate secrets so that only privileged system software can access them. Unauthorized access to these secrets can lead to credential theft attacks like pass the hash and pass the ticket. For more information, see [Configure Credential Guard](/windows/security/identity-protection/credential-guard/configure).|
| **Malicious and vulnerable driver blocking** </br> [22H2] | The vulnerable driver blocklist is automatically enabled on devices when Smart App Control is enabled and for clean installs of Windows. For more information, see [recommended block rules](/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-block-rules#microsoft-vulnerable-driver-blocklist).|
| **Security hardening and threat protection** </br> [22H2] | Enhanced support with Local Security Authority (LSA) to prevent code injection that could compromise credentials. For more information, see [Configuring Additional LSA Protection](/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection?toc=/windows/security/toc.json&bc=/windows/security/breadcrumb/toc.json). |
| **Passkeys in Windows** </br> [23H2] <!--8138341--> | Windows provides a native experience for passkey management. You can use the Settings app to view and manage passkeys saved for apps or websites. For more information, see [Support for passkeys in Windows](/windows/security/identity-protection/passkeys). |
| **Windows passwordless experience** </br> [23H2] <!--8138336--> | Windows passwordless experience is a security policy that promotes a user experience without passwords on [Microsoft Entra](https://www.microsoft.com/security/business/microsoft-entra?ef_id=_k_910ee369e9a812f6048b86296a6a402c_k_&OCID=AIDcmmdamuj0pc_SEM__k_910ee369e9a812f6048b86296a6a402c_k_&msclkid=910ee369e9a812f6048b86296a6a402c) joined devices. </br>When the policy is enabled, certain Windows authentication scenarios don't offer users the option to use a password, helping organizations and preparing users to gradually move away from passwords. For more information, see [Windows passwordless experience](/windows/security/identity-protection/passwordless-experience/). |
| **Web sign-in for Windows** </br> [23H2] <!--8344016--> | You can enable a web-based sign-in experience on [Microsoft Entra](https://www.microsoft.com/security/business/microsoft-entra?ef_id=_k_910ee369e9a812f6048b86296a6a402c_k_&OCID=AIDcmmdamuj0pc_SEM__k_910ee369e9a812f6048b86296a6a402c_k_&msclkid=910ee369e9a812f6048b86296a6a402c) joined devices, unlocking new sign-in options, and capabilities. For more information, see [Web sign-in for Windows](/windows/security/identity-protection/web-sign-in). |
| **Federated sign-in** </br> [23H2] <!--7593916, 7593946--> | Federated sign-in is a great way to simplify the sign-in process for your users: instead of having to remember a username and password defined in [Microsoft Entra](https://www.microsoft.com/security/business/microsoft-entra?ef_id=_k_910ee369e9a812f6048b86296a6a402c_k_&OCID=AIDcmmdamuj0pc_SEM__k_910ee369e9a812f6048b86296a6a402c_k_&msclkid=910ee369e9a812f6048b86296a6a402c) ID, they can sign-in using their existing credentials from the federated identity provider. For more information, see [Configure federated sign-in for Windows devices](/education/windows/federated-sign-in). |
| **Windows Hello for Business authentication improvement** </br> [23H2] <!--7771685--> | Peripheral face and fingerprint sensors can be used for Windows Hello for Business authentication on devices where Enhanced Sign-in Security (Secure Biometrics) enabled at the factory. For more information, see [Common questions about Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-faq). |
| **Windows Local Admin Password Solution (LAPS)** </br> [24H2] | Windows Local Administrator Password Solution (Windows LAPS) is a Windows feature that automatically manages and backs up the password of a local administrator account on your Microsoft Entra joined or Windows Server Active Directory-joined devices. Windows LAPS is the successor for the now deprecated legacy Microsoft LAPS product. For more information, see [What is Windows LAPS?](/windows-server/identity/laps/laps-overview)|

## Servicing

Like Windows 10, Windows 11 Enterprise LTSC 2024 receives monthly quality updates. Some updates are large, and use bandwidth. </br>

| Feature </br> [Release] | Description |
| --- | --- |
| **Windows Updates and Delivery optimization** </br> [21H2] | Delivery optimization helps reduce bandwidth consumption. It shares the work of downloading the update packages with multiple devices in your deployment. Windows 11 updates are smaller, as they only pull down source files that are different. You can create policies that configure delivery optimization settings. For example, set the maximum upload and download bandwidth, set caching sizes, and more. For more information, see:</br>&nbsp;&nbsp;• [Delivery Optimization for Windows updates](/windows/deployment/update/waas-delivery-optimization)</br>&nbsp;&nbsp;• [Installation & updates](https://support.microsoft.com/topic/2f9c1819-310d-48a7-ac12-25191269903c#PickTab=Windows_11)</br>&nbsp;&nbsp;• [Manage updates in Windows](https://support.microsoft.com/topic/643e9ea7-3cf6-7da6-a25c-95d4f7f099fe)|
| **Control Windows Update notifications** </br> [22H2] | You can now block user notifications for Windows Updates during active hours. This setting is especially useful for organizations that want to prevent Windows Update notifications from occurring during business hours. For more information, see [Control restart notifications](/windows/deployment/update/waas-restart#control-restart-notifications).|
| **Organization name in update notifications** |The organization name now appears in the Windows Update notifications when Windows clients are associated with a Microsoft Entra ID tenant. For more information, see [Display organization name in Windows Update notifications](/windows/deployment/update/waas-wu-settings#bkmk_display-name). |
| **Checkpoint cumulative updates** </br> [24H2] | Windows quality updates are provided as cumulative updates throughout the life cycle of a Windows release.  Checkpoint cumulative updates introduce periodic baselines that reduce the size of future cumulative updates making the distribution of monthly quality updates more efficient.  For more information, see [https://aka.ms/CheckpointCumulativeUpdates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-windows-11-checkpoint-cumulative-updates/ba-p/4182552). |
| **Windows protected print mode** </br> [24H2] | Windows protected print mode (WPP) enables a modern print stack which is designed to work exclusively with [Mopria certified printers](https://mopria.org/certified-products). For more information, see [What is Windows protected print mode (WPP)](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/a-new-modern-and-secure-print-experience-from-windows/ba-p/4002645) and [Windows Insider WPP announcement](https://blogs.windows.com/windows-insider/2023/12/13/announcing-windows-11-insider-preview-build-26016-canary-channel/). |

## Management

| Feature </br> [Release] | Description |
| --- | --- |
| **Microsoft Intune** </br> [21H2] | Microsoft Intune is a mobile application management (MAM) and mobile device management (MDM) provider. It helps manage devices, and manage apps on devices in your organization. You configure policies, and then deploy these policies to users and groups. You can create and deploy policies that install apps, configure device features, enforce PIN requirements, block compromised devices, and more. </br></br>  If you use Group Policy to manage your Windows 10 devices, then you can also use Group Policy to manage Windows 11 devices. In Intune, there are [administrative templates](/mem/intune/configuration/administrative-templates-windows) and the [settings catalog](/mem/intune/configuration/settings-catalog) that include many of the same policies. [Group Policy analytics](/mem/intune/configuration/group-policy-analytics) analyze your on-premises group policy objects. |
| **Control Windows Update notifications** </br> [22H2] | You can now block user notifications for Windows Updates during active hours. This setting is especially useful for organizations that want to prevent Windows Update notifications from occurring during business hours. For more information, see [Control restart notifications](/windows/deployment/update/waas-restart#control-restart-notifications).|
| **Organization name in update notifications** |The organization name now appears in the Windows Update notifications when Windows clients are associated with a Microsoft Entra ID tenant. For more information, see [Display organization name in Windows Update notifications](/windows/deployment/update/waas-wu-settings#bkmk_display-name). |
| **Start menu layout** </br> [22H2] | New Configuration Service Providers (CSPs) for customizing the start menu layout. These CSPs allow you to hide the app list and disable context menus. For more information, see [Supported configuration service provider (CSP) policies for Windows 11 Start menu](/windows/configuration/supported-csp-start-menu-layout-windows#existing-windows-csp-policies-that-windows-11-supports). |
| **Declared configuration protocol** </br> [23H2] <!--7771694 --> | Declared configuration protocol is a new protocol for device configuration management based on a desired state model and uses OMA-DM SyncML protocol. It allows the server to provide the device with a collection of settings for a specific scenario, and the device to handle the configuration request and maintain its state. For more information, see [What is the declared configuration protocol](/windows/client-management/declared-configuration).|
| **Control File Explorer Home Recommended section** </br> [23H2] <!--8092554, DisableGraphRecentItems, WIP.23475, WIP.23403-->|  Configure the Recommended section added to File Explorer Home for users signed into Windows with a Microsoft Entra ID account. For more information, see [DisableGraphRecentItems](/windows/client-management/mdm/policy-csp-fileexplorer#disablegraphrecentitems).</br> To configure using Local Group Policy Editor, see `Computer Configuration\Administrative Templates\Windows Components\File Explorer\Turn off files from Office.com in Quick Access View`.|
| **Taskbar Button Policies**  </br> [23H2] <!--07525381, 8092554, WIP.25252--> | Policies to customize taskbar buttons were added to provide you with more control over the taskbar search experience across your organization. For more information, see [Supported taskbar CSPs](/windows/configuration/supported-csp-taskbar-windows).|
| **Control Start Menu Recommended section**  </br> [23H2] <!--8092554, WIP.23475-->| Configure the Recommended section of the Start Menu, which displays personalized website recommendations. For more information, see [HideRecoPersonalizedSites](/windows/client-management/mdm/policy-csp-start). </br>To configure using Local Group Policy Editor, see `Computer Configuration\Administrative Templates\Start Menu and Taskbar\Remove Personalized Website Recommendations from the Recommended section in the Start Menu`.|

## Networking

| Feature </br> [Release] | Description |
| --- | --- |
| **Wi-Fi 7 consumer access points** </br> [24H2] | Support for Wi-Fi 7 consumer access points offers unprecedented speed, reliability, and efficiency for wireless devices.  For more information, see the Win-Fi 7 announcements from [Wi-Fi Alliance](https://www.wi-fi.org/discover-wi-fi/wi-fi-certified-7) and the [Windows Insider](https://blogs.windows.com/windows-insider/2024/02/22/announcing-windows-11-insider-preview-build-26063-canary-channel/). |

## User Experience

| Feature </br> [Release] | Description |
| --- | --- |
| **Task Manager**  </br> [22H2]/[23H2] | A new command bar was added to each page to give access to common actions. Task Manager matches the system wide theme configured in Windows Settings. Added an efficiency mode that allows you to limit the resource usage of a process. </br> <!--kb5019509--> Process filtering, theme settings, and the ability to opt out of efficiency mode notification were added to Task Manager. |
| **Taskbar overflow menu**  </br> [23H2] | The taskbar offers an entry point to a menu that shows all of your overflowed apps in one spot.<!--kb5019509--> |
| **Taskbar Optimize for touch**  </br> [23H2] | Taskbar touch optimization is available for devices that can be used as a tablet. Once enabled, the user can switch between a collapsed taskbar, saving screen space, and an expanded taskbar, optimized for touch. The taskbar changes to this optimized version when you disconnect or fold back the keyboard on a 2-in-1 device. To enable or disable this feature on a tablet capable device, go to Settings > Personalization > Taskbar > Taskbar behaviors. See also [February 28, 2023 - KB5022913](https://support.microsoft.com/kb/5022913)  |
| **File Explorer Tabs** </br> [23H2] <!--kb5019509--> | File Explorer includes tabs to help you organize your File Explorer sessions. |
| **Windows Ink as input** </br> [23H2] | Windows Ink allows users to handwrite directly onto most editable fields <!--8092554, WIP.23481-->|
| **Uninstall Win32 app** </br> [23H2] | Selecting Uninstall for a Win32 app from the right-click menu uses the Installed Apps page in Settings rather than Programs and Features in Control Panel.<!--[February 28, 2023 - KB5022913](https://support.microsoft.com/topic/3e38c0d9-924d-4f3f-b0b6-3bd49b2657b9) --> For more information, see [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
| **Dev Drive** </br> [23H2] | Dev Drive is a new form of storage volume available to improve performance for key developer workloads. For more information, see [Set up a Dev Drive on Windows 11](/windows/dev-drive/) and [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310). |
|  **High Efficiency Video Coding (HEVC) support**  </br> [22H2] | HEVC is designed to take advantage of hardware capabilities on some newer devices to support 4K and Ultra HD content. For devices that don't have hardware support for HEVC videos, software support is provided, but the playback experience might vary based on the video resolution and your devices performance. |
| **Sudo for Windows** </br> [24H2] | Sudo for Windows is a new way for users to run elevated commands (as an administrator) directly from an unelevated console session. For more information, see [Sudo for Windows](/windows/sudo/). |


## Related links

- [Windows Enterprise LTSC](overview.md): A short description of the LTSC servicing channel with links to information about each release.
- [Release History](Release-History.md)