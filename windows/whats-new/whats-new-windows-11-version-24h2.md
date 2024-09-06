---
title: What's new in Windows 11, version 24H2 for IT pros
description: Learn more about what's new in Windows 11 version 24H2, including servicing updates, Windows Subsystem for Linux, the latest CSPs, and more.
manager: aaroncz
ms.service: windows-client
ms.author: mstewart
author: mestew
ms.localizationpriority: medium
ms.topic: reference
ms.collection:
  - highpri
  - tier2
ms.subservice: itpro-fundamentals
ms.date: 07/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 24H2</a>
---

# What's new in Windows 11, version 24H2
<!--8631988-->
Windows 11, version 24H2 is a feature update for Windows 11. It includes all features and fixes in previous cumulative updates to Windows 11, version 23H2. This article lists the new and updated features IT Pros should know.

Windows 11, version 24H2 follows the [Windows 11 servicing timeline](/lifecycle/faq/windows#windows-11):

- **Windows 11 Pro**: Serviced for 24 months from the release date.
- **Windows 11 Enterprise**: Serviced for 36 months from the release date.

Devices updating from Windows 11, version 23H2 use an enablement package. Most the files for the 24H2 update already exist on Windows 11, version 23H2 devices that have a recent monthly security update installed. Many of the new features are already enabled on Windows 11, version 23H2 clients. <!-- However, some features are just in an inactive and dormant state because they are under [temporary enterprise feature control](temporary-enterprise-feature-control.md). These new features remain dormant until they're turned on through the enablement package, a small, quick-to-install switch that activates all of the Windows 11, version 24H2 features. -->

Windows 11, version 24H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [PLACEHOLDER- How to get the Windows 11, version 24H2 update](https://blogs.windows.com/windowsexperience/?p=178531). Review the [PLACEHOLDER- Windows 11, version 24H2 Windows IT Pro blog post](https://aka.ms/new-in-24H2) to discover information about available deployment resources such as the [Windows Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install).


To learn more about the status of the update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

<!--
## Features no longer under temporary enterprise control

[Temporary enterprise feature control](temporary-enterprise-feature-control.md) temporarily turns off certain features that were introduced during monthly cumulative updates for managed Windows 11, version 23H2 devices. For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

When a managed Windows 11, version 23H2 device installs [version 24H2](https://support.microsoft.com/kb/5027397), the following features will no longer be under temporary enterprise feature control:

| Feature | KB article where the feature was introduced | 
|---|---|
| PLACEHOLDER Touch-optimized taskbar for 2-in-1 devices  | [February 28, 2023 - KB5022913](https://support.microsoft.com/kb/5022913)  | 


-->
## Checkpoint cumulative updates
<!--8769182--> 
Microsoft is introducing checkpoint cumulative updates, a new servicing model that enables devices running Windows 11, version 24H2 or later to save time, bandwidth and hard drive space when getting features and security enhancements via the latest cumulative update. Previously, the cumulative updates contained all changes to the binaries since the last release to manufacturing (RTM) version. The size of the cumulative updates could grow large over time since RTM was used as the baseline for each update.

With checkpoint cumulative updates, the update file level differentials are based on a previous cumulative update instead of the RTM release. Cumulative updates that serve as a checkpoint will be released periodically. Using a checkpoint rather than RTM means the subsequent update packages are smaller, which makes downloads and installations faster. Using a checkpoint also means that in order for a device to install the latest cumulative update, the installation of a prerequisite cumulative update might be required. For more information about checkpoint cumulative updates, see [https://aka.ms/CheckpointCumulativeUpdates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-windows-11-checkpoint-cumulative-updates/ba-p/4182552).


## Features added to Windows 11 since version 23H2

New features and enhancements were introduced to Windows 11, version 23H2 periodically to provide continuous innovation for Windows 11. These features and enhancements use the normal update servicing channels you're already familiar with. At first, new features are introduced with an optional nonsecurity preview release and gradually rolled out to clients. These new features are released later as part of a monthly security update release. For more information about continuous innovation, see [Update release cycle for Windows clients](/windows/deployment/update/release-cycle#continuous-innovation-for-windows-11) 

Some of the features were released within the past year's continuous innovation updates and carry forward into the 24H2 annual feature update include:


### Feature1
<!--max-->

### Local Administrator Password Solution (LAPS) improvements

[LAPS](/windows-server/identity/laps/laps-overview) has a new automatic account management feature. IT admins can configure Windows LAPS to:
- Automatically create the managed local account
- Configure name of account
- Enable or disable the account
- Randomize the name of the account

LAPS has the following policy improvements: 

- Added passphrase settings for the [PasswordComplexity](/windows/client-management/mdm/laps-csp#policiespasswordcomplexity) policy
   - Use [PassphraseLength](/windows/client-management/mdm/laps-csp#policiespassphraselength) to control the number of words in a new passphrase
- Added an improved readablity setting for the [PasswordComplexity](/windows/client-management/mdm/laps-csp#policiespasswordcomplexity) policy, which generates passwords without using characters that are easily confused with another character. For example, the number zero and the letter O aren't used in the password since the characters can be confused.

Image rollback detection was introduced for LAPS. LAPS can detect when a device was rolled back to a previous image. When a device is rolled back, the password in Active Directory might not match the password on the device that was rolled back. This new feature adds an Active Directory attribute, `msLAPS-CurrentPasswordVersion`, to the [Windows LAPS schema](/windows-server/identity/laps/laps-technical-reference#mslaps-currentpasswordversion). This attribute contains a random GUID that's written by Windows LAPS every time a new password is persisted in Active Directory, followed by saving a local copy. During every processing cycle, the GUID stored in `msLAPS-CurrentPasswordVersion` will be queried and compared to the locally persisted copy. If the GUIDs are different, the password will be immediately rotated. To enable this feature, you need to run the latest version of the [Update-LapsADSchema PowerShell cmdlet](/powershell/module/laps/update-lapsadschema). 



### Personal Data Encryption (PDE) for folders

PDE for folders is a security feature where the contents of the known Windows folders (Documents, Desktop and Pictures) are protected using a user authenticated encryption mechanism. Windows Hello is the user authentication used to provide the keys for encrypting user data in the folders. PDE for folders can be [enabled from a policy in Intune](/mem/intune/protect/endpoint-security-disk-encryption-policy). IT admins can select the subset or all of the folders above and applying that policy to a group of users in their organization.
PDE for Folders settings is available on Intune under **Endpoint Security** > **Disk encryption**. <!-- --- this page will be updated /mem/intune/protect/endpoint-security-disk-encryption-policy PDE folders is also in settings catalog as well -->

For more information about PDE, see [PDE overview](/windows/security/operating-system-security/data-protection/personal-data-encryption)


### Windows protected print mode

Windows protected print mode enables devices to print using only the Windows modern print stack, which is designed for [Morpia certified printers](https://mopria.org/certified-products). With Morpia certified printers, there's no longer a need to rely on third-party software installers. To enable Windows protected print mode:
- Go to **Settings** > **Bluetooth & Devices** > **Printers & scanners**, then choose **Setup** under **Windows protected print mode**
- Enable the **Configure Windows protected print** policy in Group Policy under **Computer Configuration** > **Administrative Templates** > **Printers**


### Wi-Fi 7 support
<!--8850300-->
Support  for Wi-Fi 7 was added when using capable access point and PCs. Wi-Fi 7, also known as IEEE 802.11be Extremely High Throughput (EHT) is the latest Wi-Fi technology that offers unprecedented speed, reliability, and efficiency for your wireless devices. For more information about Wi-Fi 7, see the [Wi-Fi Alliance announcement](https://www.wi-fi.org/discover-wi-fi/wi-fi-7).

## Sudo for Windows

Sudo for Windows is a new way for users to run elevated commands (as an administrator) directly from an unelevated console session. For more information, see [Sudo for Windows](/windows/sudo/).

### Enable optional updates
<!--7991583-->
In addition to the monthly cumulative update, optional updates are available to provide new features and nonsecurity changes. Most optional updates are released on the fourth Tuesday of the month, known as optional nonsecurity preview releases. Optional updates can also include features that are gradually rolled out, known as controlled feature rollouts (CFRs). Installation of optional updates isn't enabled by default for devices that receive updates using Windows Update for Business. However, you can enable optional updates for devices by using the **Enable optional updates** policy. For more information about optional content, see [Enable optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates).

### Remote Desktop Connection improvements

Remote Desktop Connection has the following improvements:
- The Remote Desktop Connection setup window (mstsc.exe) follows the text scaling settings under **Settings** > **Accessibility** > **Text size**. 
- Remote Desktop Connection supports zoom options of 350, 400, 450, and 500%
- Improvements to the connection bar design


## Bluetooth &#174; Low Energy Audio support

Customers who use these assistive hearing devices are now able to directly pair, stream audio, take calls, and control audio presets when they use an LE Audio-compatible PC. Users who have Bluetooth LE Audio capable assistive hearing devices can determine if their PC is LE Audio-compatible, set up, and manage their devices via **Settings** > **Accessibility** > **Hearing devices**.  


### Additional features
<!--notable UX items for IT pros from other updates-->

- **File Explorer**: The following changes were made to File Explorer context menu:
  - Support for creating 7-zip and TAR archives
  - **Compress to** > **Additional options** allows you to compress individual files with gzip, BZip2, xz, or Zstandard 
  - Labels were added to the context menu icons for actions like copy, paste, delete, and rename
- **OOBE improvement**: when you need to connect to a network and there's no Wi-Fi drivers, you're given an *Install drivers* option to install drivers that are already downloaded
- **Registry Editor**: The Registry Editor supports limiting a search to the currently selected key and its descendants

## Features removed in Windows 11, version 24H2

The following [deprecated features](deprecated-features.md) are removed in Windows 11, version 24H2:

- **WordPad**: WordPad is removed from all editions of Windows starting in Windows 11, version 24H2 and Windows Server 2025. <!--8254696, 8494641-->
- **Alljoyn**: Microsoft's implementation of AllJoyn, which included the [Windows.Devices.AllJoyn API namespace](/uwp/api/windows.devices.alljoyn), a [Win32 API](/windows/win32/api/_alljoyn/), a [management configuration service provider (CSP)](/windows/client-management/mdm/alljoynmanagement-csp), and an [Alljoyn Router Service](/windows-server/security/windows-services/security-guidelines-for-disabling-system-services-in-windows-server#alljoyn-router-service) is retired.<!--8396030-->
