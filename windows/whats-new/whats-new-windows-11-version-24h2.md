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

>**Looking for consumer information?** See [Windows 11 2024 update](https://support.microsoft.com/topic/93c5c27c-f96e-43c2-a08e-5812d92f220d#windowsupdate=26100).

Windows 11, version 24H2 follows the [Windows 11 servicing timeline](/lifecycle/faq/windows#windows-11):

- **Windows 11 Pro**: Serviced for 24 months from the release date.
- **Windows 11 Enterprise**: Serviced for 36 months from the release date.

<!--<isEnablementPackage> Devices updating from Windows 11, version 23H2 use an enablement package. Most the files for the 24H2 update already exist on Windows 11, version 23H2 devices that have a recent monthly security update installed. Many of the new features are already enabled on Windows 11, version 23H2 clients. However, some features are just in an inactive and dormant state because they are under [temporary enterprise feature control](temporary-enterprise-feature-control.md). These new features remain dormant until they're turned on through the enablement package, a small, quick-to-install switch that activates all of the Windows 11, version 24H2 features. -->

Devices must be running Windows 11, version 23H2 or 22H2 with the May 2024 nonsecurity preview update, or a later update, installed in order to update to version 24H2. Windows 11, version 24H2 is a full OS swap so it isn't available as an enablement package. Windows 10 devices can be upgraded to to Windows 11, version 24H2 using the same familiar processes, policies, and management solutions you used to originally deploy Windows 10.

Windows 11, version 24H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [How to get the Windows 11, version 24H2 update](https://aka.ms/how-to-get-24H2). Review the [Windows 11, version 24H2 Windows IT Pro blog post](https://aka.ms/new-in-24H2) to discover information about available deployment resources such as the [Windows Assessment  and Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install).


To learn more about the status of the update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

## Features no longer under temporary enterprise control

[Temporary enterprise feature control](temporary-enterprise-feature-control.md) temporarily turns off certain features that were introduced during monthly cumulative updates for managed Windows 11 devices. For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

There aren't any features under temporary enterprise control between Windows 11, version 23H2 and Windows 11, version 24H2. For a list of features that were under temporary enterprise control between Windows 11, version 22H2 and Windows 11, version 23H2, see, [Windows 11 features behind temporary enterprise feature control](temporary-enterprise-feature-control.md).
<!--
| Feature | KB article where the feature was introduced | 
|---|---|
| PLACEHOLDER | [February 28, 2023 - KB5022913](https://support.microsoft.com/kb/5022913)  | 
-->


## Checkpoint cumulative updates
<!--8769182--> 
Microsoft is introducing checkpoint cumulative updates, a new servicing model that enables devices running Windows 11, version 24H2 or later to save time, bandwidth and hard drive space when getting features and security enhancements via the latest cumulative update. Previously, the cumulative updates contained all changes to the binaries since the last release to manufacturing (RTM) version. The size of the cumulative updates could grow large over time since RTM was used as the baseline for each update.

With checkpoint cumulative updates, the update file level differentials are based on a previous cumulative update instead of the RTM release. Cumulative updates that serve as a checkpoint will be released periodically. Using a checkpoint rather than RTM means the subsequent update packages are smaller, which makes downloads and installations faster. Using a checkpoint also means that in order for a device to install the latest cumulative update, the installation of a prerequisite cumulative update might be required. For more information about checkpoint cumulative updates, see [https://aka.ms/CheckpointCumulativeUpdates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-windows-11-checkpoint-cumulative-updates/ba-p/4182552).

## Features exclusive to Copilot+ PCs in 24H2

Copilot+ PCs are a new class of Windows 11 AI PCs that are powered by a neural processing unit (NPU) that can perform more than 40 trillion operations per second (TOPS). The following features are exclusive to [Copilot+ PCs](https://www.microsoft.com/windows/copilot-plus-pcs) in Windows 11, version 24H2: 

- Live Captions allow you to translate audio and video content into English subtitles from 44 languages. For more information, see [Use live captions to better understand audio](https://support.microsoft.com/topic/b52da59c-14b8-4031-aeeb-f6a47e6055df).
- Windows Studio Effects is the collective name of AI-powered video call and audio effects that are available on Copilot+ PCs and select Windows 11 devices with compatible NPUs. Windows Studio Effects automatically improves lighting and cancels noises during video calls. For more information, see [Windows Studio Effects](https://support.microsoft.com/topic/273c1fa8-2b3f-41b1-a587-7cc7a24b62d8).
- Cocreator in Paint allows you to create amazing artwork with the help of AI. Enter a text prompt, start drawing in Paint, and Cocreator generates artwork based on what you're drawing. For more information, see [Cocreator in Paint](https://support.microsoft.com/topic/53857513-e36c-472d-8d4a-adbcd14b2e54)
- Auto Super Resolution (Auto SR) is the first AI-powered super resolution solution built into an operating system, making games automatically play smoother with higher resolution details. For more information, see [Automatic Super Resolution](https://support.microsoft.com/topic/5d6d95fa-cc02-4673-b62c-2c50f06385aa).
- Image Creator and Restyle Image in the Microsoft Photos app lets you reimagine your photos or create new images with the assistance of AI. For more information, see [Microsoft Photos Restyle Image and Image Creator](https://support.microsoft.com/topic/6c352e99-d954-49c9-84cd-b7cacd018868).

## Features added to Windows 11 since version 23H2

New features and enhancements were introduced to Windows 11, version 23H2 periodically to provide continuous innovation for Windows 11. These features and enhancements use the normal update servicing channels you're already familiar with. At first, new features are introduced with an optional nonsecurity preview release and gradually rolled out to clients. These new features are released later as part of a monthly security update release. For more information about continuous innovation, see [Update release cycle for Windows clients](/windows/deployment/update/release-cycle#continuous-innovation-for-windows-11).

Some of the features were released within the past year's continuous innovation updates and carry forward into the 24H2 annual feature update include:

### Server Message Block (SMB) protocol changes

#### SMB signing and encryption

The following changes were made for SMB signing and encryption:

- **SMB signing requirement changes**: In Windows 11, version 24H2 on the Home, Pro, Education, and Enterprise editions, [SMB signing is now required](/windows-server/storage/file-server/smb-signing) by default for all connections. SMB signing ensures every message contains a signature generated using session key and cipher suite. The client puts a hash of the entire message into the signature field of the SMB header. If anyone changes the message itself later on the wire, the hash won't match and SMB knows that someone tampered with the data. It also confirms to sender and receiver that they are who they say they are, breaking relay attacks. For more information about SMB signing being required by default, see [https://aka.ms/SMBSigningOBD](https://techcommunity.microsoft.com/t5/storage-at-microsoft/smb-signing-required-by-default-in-windows-insider/ba-p/3831704).

- **SMB client encryption**: SMB now supports [requiring encryption](/windows-server/storage/file-server/configure-smb-client-require-encryption) on all outbound SMB client connections. Encryption of all outbound SMB client connections enforces the highest level of network security and brings management parity to SMB signing, which allows both client and server requirements. With this new option, administrators can mandate that all destination servers use SMB 3 and encryption, and if missing those capabilities, the client won't connect. For more information about this change, see [https://aka.ms/SmbClientEncrypt](https://techcommunity.microsoft.com/t5/storage-at-microsoft/smb-client-encryption-mandate-now-supported-in-windows-insider/ba-p/3964037).

- **SMB signing and encryption auditing**: Administrators can now [enable auditing](/windows-server/storage/file-server/smb-signing-overview#smb-signing-and-encryption-auditing) of the SMB server and client for support of SMB signing and encryption. This shows if a third-party client or server doesn't support SMB encryption or signing. The SMB signing and encryption auditing settings can be modified in Group Policy or through PowerShell. 

#### SMB alternative client and server ports

The SMB client now supports connecting to an SMB server over TCP, QUIC, or RDMA using [alternative network ports](/windows-server/storage/file-server/smb-ports) to the hardcoded defaults. However, you can only connect to alternative ports if the SMB server is configured to support listening on that port. Starting in [Windows Server Insider build 26040](https://techcommunity.microsoft.com/t5/windows-server-insiders/announcing-windows-server-preview-build-26040/m-p/4040858), the SMB server now supports listening on an alternative network port for SMB over QUIC. Windows Server doesn't support configuring alternative SMB server TCP ports, but some third parties do. For more information about this change, see [https://aka.ms/SMBAlternativePorts](https://techcommunity.microsoft.com/t5/storage-at-microsoft/smb-alternative-ports-now-supported-in-windows-insider/ba-p/3974509).


#### SMB NTLM blocking exception list

The SMB client now supports [blocking NTLM](/windows-server/storage/file-server/smb-ntlm-blocking) for remote outbound connections. With this new option, administrators can intentionally block Windows from offering NTLM via SMB and specify exceptions for NTLM usage. An attacker who tricks a user or application into sending NTLM challenge responses to a malicious server will no longer receive any NTLM data and can't brute force, crack, or pass hashes. This change adds a new level of protection for enterprises without a requirement to entirely disable NTLM usage in the OS.

For more information about this change, see [https://aka.ms/SmbNtlmBlock](https://techcommunity.microsoft.com/t5/storage-at-microsoft/smb-ntlm-blocking-now-supported-in-windows-insider/ba-p/3916206).

#### SMB dialect management

The SMB server now supports controlling which [SMB 2 and 3 dialects](/windows-server/storage/file-server/manage-smb-dialects) it negotiates. With this new option, an administrator can remove specific SMB protocols from use in the organization, blocking older, less secure, and less capable Windows devices and third parties from connecting. For example, admins can specify to only use SMB 3.1.1, the most secure dialect of the protocol.

For more information about this change, see [https://aka.ms/SmbDialectManage](https://techcommunity.microsoft.com/t5/storage-at-microsoft/smb-dialect-management-now-supported-in-windows-insider/ba-p/3916368).


#### SMB over QUIC

[SMB over QUIC](/windows-server/storage/file-server/smb-over-quic), which introduced an alternative to TCP and RDMA, supplies secure connectivity to edge file servers over untrusted networks like the Internet. QUIC has significant advantages, the largest being mandatory certificate-based encryption instead of relying on passwords. SMB over QUIC [client access control](/windows-server/storage/file-server/configure-smb-over-quic-client-access-control) improves the existing SMB over QUIC feature.

Administrators now have more options for SMB over QUIC such as: 

- [Specifying which clients](/windows-server/storage/file-server/configure-smb-over-quic-client-access-control#grant-individual-clients) can access SMB over QUIC servers. This gives organizations more protection but doesn't change the Windows authentication used to make the SMB connection or the end user experience.
- [Disabling SMB over QUIC](/windows-server/storage/file-server/configure-smb-over-quic-client-access-control#disable-smb-over-quic) for client with Group Policy and PowerShell
- [Auditing client connection events](/windows-server/storage/file-server/smb-over-quic#smb-over-quic-client-auditing) for SMB over QUIC

For more information about these changes, see [https://aka.ms/SmbOverQUICCAC](/windows-server/storage/file-server/configure-smb-over-quic-client-access-control).

#### SMB firewall rule changes

The Windows Firewall [default behavior has changed](/windows-server/storage/file-server/smb-secure-traffic#updated-firewall-rules-preview). Previously, creating an SMB share automatically configured the firewall to enable the rules in the **File and Printer Sharing** group for the given firewall profiles. Now, Windows automatically configures the new **File and Printer Sharing (Restrictive)** group, which no longer contains inbound NetBIOS ports 137-139.

This change enforces a higher degree of default of network security and brings SMB firewall rules closer to the Windows Server **File Server** role behavior, which only opens the minimum ports needed to connect and manage sharing. Administrators can still configure the **File and Printer Sharing** group if necessary as well as modify this new firewall group, these are just default behaviors.

For more information about this change, see [https://aka.ms/SMBfirewall](https://techcommunity.microsoft.com/t5/storage-at-microsoft/smb-firewall-rule-changes-in-windows-insider/ba-p/3974496). For more information about SMB network security, see [Secure SMB Traffic in Windows Server](/windows-server/storage/file-server/smb-secure-traffic).

### Local Security Authority (LSA) protection enablement on upgrade

[LSA protection](/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection) helps protect against theft of secrets and credentials used for logon by preventing unauthorized code from running in the LSA process and by preventing dumping of process memory. An audit occurs for incompatibilities with LSA protection for a period of time, starting with this upgrade. If incompatibilities aren't detected, LSA protection is automatically enabled. You can check and change the enablement state of LSA protection in the Windows Security application under the **Device Security** > **Core Isolation** page. In the event log, LSA protection records whether programs are blocked from loading into LSA. If you would like to check if something was blocked, review the [logging](/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection#identify-plug-ins-and-drivers-that-lsassexe-fails-to-load).

 
### Remote Mailslot protocol disabled by default

[Remote Mailslot protocol](/openspecs/windows_protocols/ms-mail/47ac910f-1dec-4791-8486-9b3e8fd542da) was [deprecated](deprecated-features.md#deprecated-features) in November 2023 and is now disabled by default starting in Windows 11, version 24H2. For more information on Remote Mailslots, see [About Mailslots](/windows/win32/ipc/about-mailslots).

### Local Administrator Password Solution (LAPS) improvements

[LAPS](/windows-server/identity/laps/laps-overview) has a new automatic account management feature. IT admins can configure Windows LAPS to:
- Automatically create the managed local account
- Configure name of account
- Enable or disable the account
- Randomize the name of the account

LAPS has the following policy improvements:

- Added passphrase settings for the [PasswordComplexity](/windows/client-management/mdm/laps-csp#policiespasswordcomplexity) policy
   - Use [PassphraseLength](/windows/client-management/mdm/laps-csp#policiespassphraselength) to control the number of words in a new passphrase
- Added an improved readability setting for the [PasswordComplexity](/windows/client-management/mdm/laps-csp#policiespasswordcomplexity) policy, which generates passwords without using characters that are easily confused with another character. For example, the zero and the letter O aren't used in the password since the characters can be confused.
- Added the `Reset the password, logoff the managed account, and terminate any remaining processes` setting to the [PostAuthenticationActions](/windows/client-management/mdm/laps-csp#policiespostauthenticationactions) policy. The event logging messages that are emitted during post-authentication-action execution were also expanded, to give insights into exactly what was done during the operation.

Image rollback detection was introduced for LAPS. LAPS can detect when a device was rolled back to a previous image. When a device is rolled back, the password in Active Directory might not match the password on the device that was rolled back. This new feature adds an Active Directory attribute, `msLAPS-CurrentPasswordVersion`, to the [Windows LAPS schema](/windows-server/identity/laps/laps-technical-reference#mslaps-currentpasswordversion). This attribute contains a random GUID that Windows LAPS writes every time a new password is persisted in Active Directory, followed by saving a local copy. During every processing cycle, the GUID stored in `msLAPS-CurrentPasswordVersion` is queried and compared to the locally persisted copy. If the GUIDs are different, the password is immediately rotated. To enable this feature, you need to run the latest version of the [Update-LapsADSchema PowerShell cmdlet](/powershell/module/laps/update-lapsadschema). 

### Rust in the Windows kernel

There's a new implementation of [GDI region](/windows/win32/gdi/regions) in `win32kbase_rs.sys`. Since Rust offers advantages in reliability and security over traditional programs written in C/C++, you'll continue to see more use of it in the kernel.

### Personal Data Encryption (PDE) for folders

PDE for folders is a security feature where the contents of the known Windows folders (Documents, Desktop and Pictures) are protected using a user authenticated encryption mechanism. Windows Hello is the user authentication used to provide the keys for encrypting user data in the folders. PDE for folders can be [enabled from a policy in Intune](/mem/intune/protect/endpoint-security-disk-encryption-policy). IT admins can select all of the folders, or a subset, then apply the policy to a group of users in their organization.
PDE for Folders settings is available on Intune under **Endpoint Security** > **Disk encryption**.

For more information about PDE, see [PDE overview](/windows/security/operating-system-security/data-protection/personal-data-encryption)


### Windows protected print mode

Windows protected print mode enables devices to print using only the Windows modern print stack, which is designed for [Morpia certified printers](https://mopria.org/certified-products). With Morpia certified printers, there's no longer a need to rely on third-party software installers. To enable Windows protected print mode:
- Go to **Settings** > **Bluetooth & Devices** > **Printers & scanners**, then choose **Setup** under **Windows protected print mode**
- Enable the **Configure Windows protected print** policy in Group Policy under **Computer Configuration** > **Administrative Templates** > **Printers**

### SHA-3 support

Support for the SHA-3 family of hash functions and SHA-3 derived functions (SHAKE, cSHAKE, KMAC) was added. The SHA-3 family of algorithms are the latest standardized hash functions by the National Institute of Standards and Technology (NIST). Support for these functions is enabled through the Windows [CNG](/windows/win32/seccng/cng-portal) library.

- **Supported SHA-3 hash functions**: SHA3-256, SHA3-384, SHA3-512 (SHA3-224 isn't supported)

- **Supported SHA-3 HMAC algorithms**: HMAC-SHA3-256, HMAC-SHA3-384, HMAC-SHA3-512

- **Supported SHA-3 derived algorithms**: extendable-output functions (XOF) (SHAKE128, SHAKE256), customizable XOFs (cSHAKE128, cSHAKE256), and KMAC (KMAC128, KMAC256, KMACXOF128, KMACXOF256).

### App Control for Business
<!--8223790-->
Customers can now use App Control for Business (formerly called Windows Defender Application Control) and its next-generation capabilities to protect their digital property from malicious code. With App Control for Business, IT teams can configure what runs in a business environment through Microsoft Intune or other MDMs in the admin console, including setting up Intune as a managed installer. For more information, see [Application Control for Windows](/windows/security/application-security/application-control/app-control-for-business/appcontrol).

### Wi-Fi 7 support
<!--8850300-->
Support  for Wi-Fi 7 was added for consumer access points. Wi-Fi 7, also known as IEEE 802.11be Extremely High Throughput (EHT) is the latest Wi-Fi technology that offers unprecedented speed, reliability, and efficiency for your wireless devices. For more information about Wi-Fi 7, see the [Wi-Fi Alliance announcement](https://www.wi-fi.org/news-events/newsroom/wi-fi-alliance-introduces-wi-fi-certified-7).

### Bluetooth &#174; LE audio support for assistive devices

Customers who use these assistive hearing devices are now able to directly pair, stream audio, take calls, and control audio presets when they use an LE Audio-compatible PC. Users who have Bluetooth LE Audio capable assistive hearing devices can determine if their PC is LE Audio-compatible, set up, and manage their devices via **Settings** > **Accessibility** > **Hearing devices**. For more information, see [Using hearing devices with your Windows 11 PC](https://support.microsoft.com/topic/fcb566e7-13c3-491a-ad5b-8219b098d647).  

### Windows location improvements

New controls were added to help manage which apps have access to the list of Wi-Fi networks around you, which could be used to determine your location.
- You can view and modify which apps can access the list of Wi-Fi networks from **Settings** > **Privacy & security** > **Location**.
- A new prompt appears the first time an app attempts to access your location or Wi-Fi information.
   - The prompt also notifies when an app unexpectedly requests access to location services so that you can deny it.
   - If you grant permission, apps that use location or Wi-Fi information now appear in **Recent activity** on the **Location** settings page, and the location icon is displayed in the taskbar while the app is in-use.
   - To hide these prompts when location has been turned off, turn off **Notify when apps request location** on the **Location** settings page.
- Developers can use the [Changes to API behavior for Wi-Fi access and location](/windows/win32/nativewifi/wi-fi-access-location-changes) article to learn about API surfaces impacted by this change.

### Sudo for Windows

Sudo for Windows is a new way for users to run elevated commands (as an administrator) directly from an unelevated console session. The sudo command can be configured to run in three different modes:

- **In a new window**: The elevated command runs in a new window. This mode is similar to the behavior of the `runas /user:admin` command.
- **With input disabled**: Runs the elevated process in the current window, but with the input handle closed. This means that the elevated process won't be able to receive input from the current console window.
- **Inline**: Runs the elevated process in the current window and the process is able to receive input from the current console session. This mode is most similar to the sudo experience on other platforms.

It's recommended that you review the security considerations for each mode here before [enabling the sudo command](/windows/sudo/#how-to-enable-sudo-for-windows) on your machine. For more information, see [Sudo for Windows](/windows/sudo/).

### Enable optional updates
<!--7991583-->
In addition to the monthly cumulative update, optional updates are available to provide new features and nonsecurity changes. Most optional updates are released on the fourth Tuesday of the month, known as optional nonsecurity preview releases. Optional updates can also include features that are gradually rolled out, known as controlled feature rollouts (CFRs). Installation of optional updates isn't enabled by default for devices that receive updates using Windows Update for Business. However, you can enable optional updates for devices by using the **Enable optional updates** policy. For more information about optional content, see [Enable optional updates](/windows/deployment/update/waas-configure-wufb#enable-optional-updates).

### Remote Desktop Connection improvements

Remote Desktop Connection has the following improvements:
- The Remote Desktop Connection setup window (mstsc.exe) follows the text scaling settings under **Settings** > **Accessibility** > **Text size**. 
- Remote Desktop Connection supports zoom options of 350, 400, 450, and 500%
- Improvements to the connection bar design


### Additional features
<!--notable UX items for IT pros from other updates-->

- **File Explorer**: The following changes were made to File Explorer context menu:
  - Support for creating 7-zip and TAR archives
  - **Compress to** > **Additional options** allows you to compress individual files with gzip, BZip2, xz, or Zstandard 
  - Labels were added to the context menu icons for actions like copy, paste, delete, and rename
- **OOBE improvement**: when you need to connect to a network and there's no Wi-Fi drivers, you're given an *Install drivers* option to install drivers that are already downloaded
- **Registry Editor**: The Registry Editor supports limiting a search to the currently selected key and its descendants
- **Task Manager**: The Task Manager settings page has [Mica material](/windows/apps/design/style/mica) and a redesigned icon 


### Developer APIs

The following developer APIs were added or updated:

- Introduced the [Power Grid Forecast API](/uwp/api/windows.devices.power.powergridforecast). App developers can minimize environmental impact by shifting background workloads to times when renewable energy is available to the local grid. Forecast data isn't available globally and quality of data may vary by region.
- Added an energy saver notification callback setting GUID to represent the new energy saver experience. Apps can subscribe to the energy saver status by passing the appropriate GUID to the PowerSettingRegisterNotification API and can implement different behaviors to optimize energy or performance depending on the current energy saver status. For more information, see [Power Setting GUIDs](/windows/win32/power/power-setting-guids)
- Extended the [Effective Power Mode API](/windows/win32/api/powersetting/ne-powersetting-effective_power_mode) to interpret the new energy saver levels when determining the returned effective power mode.

## Features removed in Windows 11, version 24H2

The following [deprecated features](deprecated-features.md) are [removed](removed-features.md) in Windows 11, version 24H2:

- **WordPad**: WordPad is removed from all editions of Windows starting in Windows 11, version 24H2 and Windows Server 2025. <!--8254696, 8494641-->
- **Alljoyn**: Microsoft's implementation of AllJoyn, which included the [Windows.Devices.AllJoyn API namespace](/uwp/api/windows.devices.alljoyn), a [Win32 API](/windows/win32/api/_alljoyn/), a [management configuration service provider (CSP)](/windows/client-management/mdm/alljoynmanagement-csp), and an [Alljoyn Router Service](/windows-server/security/windows-services/security-guidelines-for-disabling-system-services-in-windows-server#alljoyn-router-service) is retired.<!--8396030-->
