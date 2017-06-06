---
title: New policies for Windows 10 (Windows 10)
description: Windows 10 includes the following new policies for management, in addition to policies that were available for Windows 8.1 and Windows Phone 8.1.
ms.assetid: 1F24ABD8-A57A-45EA-BA54-2DA2238C573D
keywords: ["MDM", "Group Policy"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerms
localizationpriority: high
---

# New policies for Windows 10


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Windows 10 includes the following new policies for management, in addition to policies that were available for Windows 8.1 and Windows Phone 8.1. [Download the complete set of Administrative Template (.admx) files for Windows 10](https://go.microsoft.com/fwlink/p/?LinkID=625081).

## New Group Policy settings in Windows 10, version 1703

The following Group Policy settings were added in Windows 10, version 1703:

**Control Panel**

- Control Panel\Add or Remove Programs\Specify default category for Add New Programs
- Control Panel\Add or Remove Programs\Hide the "Add a program from CD-ROM or floppy disk" option
- Control Panel\Personalization\Prevent changing lock screen and logon image

**Network**

- Network\Background Intelligent Transfer Service (BITS)\Limit the maximum network bandwidth for BITS background transfers
- Network\Background Intelligent Transfer Service (BITS)\Allow BITS Peercaching
- Network\Background Intelligent Transfer Service (BITS)\Limit the age of files in the BITS Peercache
- Network\Background Intelligent Transfer Service (BITS)\Limit the BITS Peercache size
- Network\DNS Client\Allow NetBT queries for fully qualified domain names
- Network\Network Connections\Prohibit access to properties of components of a LAN connection
- Network\Network Connections\Ability to Enable/Disable a LAN connection
- Network\Offline Files\Turn on economical application of administratively assigned Offline Files
- Network\Offline Files\Configure slow-link mode
- Network\Offline Files\Enable Transparent Caching
- Network\Microsoft Peer-to-Peer Networking Services\Peer Name Resolution Protocol\Site-Local Clouds\Set the Seed Server
- Network\Microsoft Peer-to-Peer Networking Services\Disable password strength validation for Peer Grouping

**System**

- System\App-V\Streaming\Location Provider
- System\App-V\Streaming\Certificate Filter For Client SSL
- System\Credentials Delegation\Allow delegating default credentials with NTLM-only server authentication
- System\Ctrl+Alt+Del Options\Remove Change Password
- System\Ctrl+Alt+Del Options\Remove Lock Computer
- System\Ctrl+Alt+Del Options\Remove Task Manager
- System\Ctrl+Alt+Del Options\Remove Logoff
- System\Device Installation\Do not send a Windows error report when a generic driver is installed on a device
- System\Device Installation\Prevent Windows from sending an error report when a device driver requests additional software during installation
- System\Locale Services\Disallow user override of locale settings
- System\Logon\Do not process the legacy run list
- System\Logon\Always use custom logon background
- System\Logon\Do not display network selection UI
- System\Logon\Block user from showing account details on sign-in
- System\Logon\Turn off app notifications on the lock screen
- System\User Profiles\Establish timeout value for dialog boxes
- System\Enable Windows NTP Server\Windows Time Service\Enable Windows NTP Client

**Windows Components**

- Windows Components\ActiveX Installer Service\Approved Installation Sites for ActiveX Controls
- Windows Components\ActiveX Installer Service\Establish ActiveX installation policy for sites in Trusted zones
- Windows Components\Application Compatibility\Turn off Application Compatibility Engine
- Windows Components\Application Compatibility\Turn off Program Compatibility Assistant
- Windows Components\Application Compatibility\Turn off Program Compatibility Assistant
- Windows Components\Application Compatibility\Turn off Steps Recorder
- Windows Components\Attachment Manager\Notify antivirus programs when opening attachments
- Windows Components\Biometrics\Allow the use of biometrics
- Windows Components\NetMeeting\Disable Whiteboard
- Windows Components\Data Collection and Preview Builds\Configure the Commercial ID
- Windows Components\File Explorer\Display the menu bar in File Explorer
- Windows Components\File History\Turn off File History
- Windows Components\Internet Explorer\Internet Control Panel\Advanced Page\Play animations in web pages
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\Turn on Cross-Site Scripting Filter
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Internet Zone\Turn on Cross-Site Scripting Filter
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Internet Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Internet Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Intranet Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Intranet Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Intranet Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Local Machine Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Local Machine Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Local Machine Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Restricted Sites Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Restricted Sites Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Restricted Sites Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Restricted Sites Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Trusted Sites Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Trusted Sites Zone\Run ActiveX controls and plugins
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Trusted Sites Zone\Script ActiveX controls marked safe for scripting
- Windows Components\Internet Explorer\Accelerators\Restrict Accelerators to those deployed through Group Policy
- Windows Components\Internet Explorer\Compatibility View\Turn on Internet Explorer 7 Standards Mode
- Windows Components\Location and Sensors\Windows Location Provider\Turn off Windows Location Provider
- Windows Components\Microsoft Edge\Configure Autofill
- Windows Components\Microsoft Edge\Allow Developer Tools
- Windows Components\Microsoft Edge\Allow Developer Tools
- Windows Components\Microsoft Edge\Configure Do Not Track
- Windows Components\Microsoft Edge\Allow InPrivate browsing
- Windows Components\Microsoft Edge\Configure Password Manager
- Windows Components\Microsoft Edge\Configure Password Manager
- Windows Components\Microsoft Edge\Configure Pop-up Blocker
- Windows Components\Microsoft Edge\Configure Pop-up Blocker
- Windows Components\Microsoft Edge\Allow search engine customization
- Windows Components\Microsoft Edge\Allow search engine customization
- Windows Components\Microsoft Edge\Configure search suggestions in Address bar
- Windows Components\Microsoft Edge\Set default search engine
- Windows Components\Microsoft Edge\Configure additional search engines
- Windows Components\Microsoft Edge\Configure additional search engines
- Windows Components\Microsoft Edge\Configure the Enterprise Mode Site List
- Windows Components\Microsoft Edge\Configure the Enterprise Mode Site List
- Windows Components\Microsoft Edge\Prevent using Localhost IP address for WebRTC
- Windows Components\Microsoft Edge\Prevent using Localhost IP address for WebRTC
- Windows Components\Microsoft Edge\Configure Start pages
- Windows Components\Microsoft Edge\Configure Start pages
- Windows Components\Microsoft Edge\Disable lockdown of Start pages
- Windows Components\Microsoft Edge\Disable lockdown of Start pages
- Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites
- Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites
- Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files
- Windows Components\Microsoft Management Console\Restricted/Permitted snap-ins\.Net Framework Configuration
- Windows Components\Windows Installer\Prohibit use of Restart Manager
- Windows Components\Desktop Gadgets\Restrict unpacking and installation of gadgets that are not digitally signed.
- Windows Components\Desktop Gadgets\Turn Off user-installed desktop gadgets
- Windows Components\Desktop Gadgets\Turn Off user-installed desktop gadgets
- Windows Components\OneDrive\Prevent the usage of OneDrive for file storage
- Windows Components\OneDrive\Prevent the usage of OneDrive for file storage on Windows 8.1
- Windows Components\OneDrive\Prevent OneDrive files from syncing over metered connections
- Windows Components\OneDrive\Save documents to OneDrive by default
- Windows Components\Smart Card\Allow certificates with no extended key usage certificate attribute
- Windows Components\Smart Card\Turn on certificate propagation from smart card
- Windows Components\Tablet PC\Pen UX Behaviors\Prevent flicks
- Windows Components\BitLocker Drive Encryption\Choose drive encryption method and cipher strength (Windows 8, Windows Server 2012, Windows 8.1, Windows Server 2012 R2, Windows 10 [Version 1507])
- Windows Components\Windows Defender Antivirus\Real-time Protection\Turn on behavior monitoring
- Windows Components\Windows Defender Antivirus\Signature Updates\Define file shares for downloading definition updates
- Windows Components\Windows Defender Antivirus\Signature Updates\Turn on scan after signature update
- Windows Components\File Explorer\Display confirmation dialog when deleting files
- Windows Components\Internet Explorer\Internet Control Panel\Security Page\Locked-Down Restricted Sites Zone\Allow OpenSearch queries in File Explorer
- Windows Components\Windows Update\Remove access to use all Windows Update features
- Windows Components\Windows Update\Configure Automatic Updates
- Windows Components\Windows Update\Specify intranet Microsoft update service location
- Windows Components\Windows Update\Automatic Updates detection frequency
- Windows Components\Windows Update\Allow non-administrators to receive update notifications
- Windows Components\Windows Update\Allow Automatic Updates immediate installation
- Windows Components\Windows Update\Turn on recommended updates via Automatic Updates
- Windows Components\Shutdown Options\Turn off legacy remote shutdown interface


For a spreadsheet of Group Policy settings included in Windows 10 and Windows Server 2016, see [Group Policy Settings Reference for Windows and Windows Server](https://go.microsoft.com/fwlink/p/?LinkId=613627).

## New MDM policies


Mobile device management (MDM) for Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile includes settings from Windows Phone 8.1, plus new or enhanced settings for Windows 10, such as:

-   Defender (Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education only)

-   Enhanced Bluetooth policies

-   Passport and Hello

-   Device update

-   Hardware-based device health attestation

-   [Kiosk mode](/windows/configuration/set-up-a-device-for-anyone-to-use), start screen, start menu layout

-   Security

-   [VPN](https://go.microsoft.com/fwlink/p/?LinkId=623295) and enterprise Wi-Fi management

-   Certificate management

-   Windows Tips

-   Consumer experiences, such as suggested apps in Start and app tiles from Microsoft dynamically inserted in the default Start menu

Windows 10, version 1703, adds a number of [ADMX-backed policies to MDM](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-admx-backed).

If you use Microsoft Intune for MDM, you can [configure custom policies](https://go.microsoft.com/fwlink/p/?LinkId=616316) to deploy Open Mobile Alliance Uniform Resource Identifier (OMA-URI) settings that can be used to control features on Windows 10. For a list of OMA-URI settings, see [Custom URI settings for Windows 10 devices](https://go.microsoft.com/fwlink/p/?LinkId=616317).

No new [Exchange ActiveSync policies](https://go.microsoft.com/fwlink/p/?LinkId=613264). For more information, see the [ActiveSync configuration service provider](https://go.microsoft.com/fwlink/p/?LinkId=618944) technical reference.

## Related topics


[Manage corporate devices](manage-corporate-devices.md)

[Changes to Group Policy settings for Start in Windows 10](/windows/configuration/changes-to-start-policies-in-windows-10)

[Windows 10 Mobile and MDM](windows-10-mobile-and-mdm.md)

 

 





