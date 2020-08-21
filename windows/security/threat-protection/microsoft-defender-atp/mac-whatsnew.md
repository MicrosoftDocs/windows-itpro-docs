---
title: What's new in Microsoft Defender Advanced Threat Protection for Mac
description: Learn about the major changes for previous versions of Microsoft Defender Advanced Threat Protection for Mac.
keywords: microsoft, defender, atp, mac, installation, macos, whatsnew
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# What's new in Microsoft Defender Advanced Threat Protection for Mac

> [!IMPORTANT]
> In preparation for macOS 11 Big Sur, we are getting ready to release an update to Microsoft Defender ATP for Mac that will leverage new system extensions instead of kernel extensions. Apple will stop supporting kernel extensions starting macOS 11 Big Sur version. Therefore an update to the Microsoft Defender ATP for Mac agent is required on all eligible macOS devices prior to moving these devices to macOS 11.
> 
> The update is applicable to devices running macOS version 10.15.4 or later.
> 
> To ensure that the Microsoft Defender ATP for Mac update is delivered and applied seamlessly from an end-user experience perspective, a new remote configuration must be deployed to all eligible macOS devices before Microsoft publishes the new agent version. If the configuration is not deployed prior to the Microsoft Defender ATP for Mac agent update, end-users will be presented with a series of system dialogs asking to grant the agent all necessary permissions associated with the new system extensions.
> 
> Timing: 
> - Organizations that previously opted into Microsoft Defender ATP preview features in Microsoft Defender Security Center, must be ready for Microsoft Defender ATP for Mac agent update **by August 10, 2020**.
> - Organizations that do not participate in public previews for Microsoft Defender ATP features, must be ready **by September 07, 2020**.
> 
> Action is needed by IT administrator. Review the steps below and assess the impact on your organization:
> 
> 1. Deploy the specified remote configuration to eligible macOS devices before Microsoft publishes the new agent version. <br/>
> Even though Microsoft Defender ATP for Mac new implementation based on system extensions is only applicable to devices running macOS version 10.15.4 or later, deploying configuration proactively across the entire macOS fleet will ensure that even down-level devices are prepared for the day when Apple releases macOS 11 Big Sur and will ensure that Microsoft Defender ATP for Mac continues protecting all macOS devices regardless OS version they were running prior to the Big Sur upgrade.
> 
> 2. Refer to this documentation for detailed configuration information and instructions: [New configuration profiles for macOS Catalina and newer versions of macOS](mac-sysext-policies.md).
> 3. Monitor this page for an announcement of the actual release of MDATP for Mac agent update.

## 101.05.17

> [!IMPORTANT]
> We are working on a new and enhanced syntax for the `mdatp` command-line tool. The new syntax is currently the default in the Insider Fast and Insider Slow update channels. We encourage you to famliliarize yourself with this new syntax.
> 
> We will continue supporting the old syntax in parallel with the new syntax and will provide more communication around the deprecation plan for the old syntax in the upcoming months.

- Addressed a kernel panic that occurred sometimes when accessing SMB file shares
- Performance improvements & bug fixes

## 101.05.16

- Improvements to quick scan logic to significantly reduce the number of scanned files
- Added [autocompletion support](mac-resources.md#how-to-enable-autocompletion) for the command-line tool
- Bug fixes

## 101.03.12

- Performance improvements & bug fixes

## 101.01.54

- Improvements around compatibility with Time Machine
- Accessibility improvements
- Performance improvements & bug fixes

## 101.00.31

- Improved [product onboarding experience for Intune users](https://docs.microsoft.com/mem/intune/apps/apps-advanced-threat-protection-macos)
- Antivirus [exclusions now support wildcards](mac-exclusions.md#supported-exclusion-types)
- Added the ability to trigger antivirus scans from the macOS contextual menu. You can now right-click a file or a folder in Finder and select **Scan with Microsoft Defender ATP**
- In-place product downgrades are now explicitly disallowed by the installer. If you need to downgrade, first uninstall the existing version and reconfigure your device
- Other performance improvements & bug fixes

## 100.90.27

- You can now [set an update channel](mac-updates.md#set-the-channel-name) for Microsoft Defender ATP for Mac that is different from the system-wide update channel
- New product icon
- Other user experience improvements
- Bug fixes

## 100.86.92

- Improvements around compatibility with Time Machine
- Addressed an issue where the product was sometimes not cleaning all files under `/Library/Application Support/Microsoft/Defender` during uninstallation
- Reduced the CPU utilization of the product when Microsoft products are updated through Microsoft AutoUpdate
- Other performance improvements & bug fixes

## 100.86.91

> [!CAUTION]
> To ensure the most complete protection for your macOS devices and in alignment with Apple stopping delivery of macOS native security updates to OS versions older than [current – 2], MDATP for Mac deployment and updates will no longer be supported on macOS Sierra [10.12]. MDATP for Mac updates and enhancements will be delivered to devices running versions Catalina [10.15], Mojave [10.14], and High Sierra [10.13]. 
>
> If you already have MDATP for Mac deployed to your Sierra [10.12] devices, please upgrade to the latest macOS version to eliminate risks of losing protection.

- Performance improvements & bug fixes

## 100.83.73

- Added more controls for IT administrators around [management of exclusions](mac-preferences.md#exclusion-merge-policy), [management of threat type settings](mac-preferences.md#threat-type-settings-merge-policy), and [disallowed threat actions](mac-preferences.md#disallowed-threat-actions)
- When Full Disk Access is not enabled on the device, a warning is now displayed in the status menu
- Performance improvements & bug fixes

## 100.82.60

- Addressed an issue where the product fails to start following a definition update.

## 100.80.42

- Bug fixes

## 100.79.42

- Fixed an issue where Microsoft Defender ATP for Mac was sometimes interfering with Time Machine
- Added a new switch to the command-line utility for testing the connectivity with the backend service
  ```bash
  mdatp --connectivity-test
  ```
- Added ability to view the full threat history in the user interface (can be accessed from the **Protection history** view)
- Performance improvements & bug fixes

## 100.72.15

- Bug fixes

## 100.70.99

- Addressed an issue that impacts the ability of some users to upgrade to macOS Catalina when real-time protection is enabled. This sporadic issue was caused by Microsoft Defender ATP locking files within Catalina upgrade package while scanning them for threats, which led to failures in the upgrade sequence.

## 100.68.99

- Added the ability to configure the antivirus functionality to run in [passive mode](mac-preferences.md#enable--disable-passive-mode)
- Performance improvements & bug fixes

## 100.65.28

- Added support for macOS Catalina

  > [!CAUTION]
  > macOS 10.15 (Catalina) contains new security and privacy enhancements. Beginning with this version, by default, applications are not able to access certain locations on disk (such as Documents, Downloads, Desktop, etc.) without explicit consent. In the absence of this consent, Microsoft Defender ATP is not able to fully protect your device.
  >
  > The mechanism for granting this consent depends on how you deployed Microsoft Defender ATP:
  >
  > - For manual deployments, see the updated instructions in the [Manual deployment](mac-install-manually.md#how-to-allow-full-disk-access) topic.
  > - For managed deployments, see the updated instructions in the [JAMF-based deployment](mac-install-with-jamf.md#privacy-preferences-policy-control) and [Microsoft Intune-based deployment](mac-install-with-intune.md#create-system-configuration-profiles) topics.

- Performance improvements & bug fixes
