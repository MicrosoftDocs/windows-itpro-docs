---
title: WindowsDefenderApplicationGuard CSP
description: Configure the settings in Microsoft Defender Application Guard by using the WindowsDefenderApplicationGuard configuration service provider (CSP).
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 07/07/2020
ms.reviewer: 
manager: dansimp
---

# WindowsDefenderApplicationGuard CSP

The WindowsDefenderApplicationGuard configuration service provider (CSP) is used by the enterprise to configure the settings in Microsoft Defender Application Guard. This CSP was added in Windows 10, version 1709.

The following diagram shows the WindowsDefenderApplicationGuard configuration service provider in tree format.

![windowsdefenderapplicationguard csp](images/provisioning-csp-windowsdefenderapplicationguard.png)

<a href="" id="windowsdefenderapplicationguard"></a>**./Device/Vendor/MSFT/WindowsDefenderApplicationGuard**  
Root node. Supported operation is Get.

<a href="" id="settings"></a>**Settings**  
Interior node. Supported operation is Get.

<a href="" id="allowwindowsdefenderapplicationguard"></a>**Settings/AllowWindowsDefenderApplicationGuard**  
Turn on Microsoft Defender Application Guard in Enterprise Mode. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

The following list shows the supported values:
- 0 - Disable Microsoft Defender Application Guard
- 1 - Enable Microsoft Defender Application Guard for Microsoft Edge ONLY
- 2 - Enable Microsoft Defender Application Guard for isolated Windows environments ONLY
- 3 - Enable Microsoft Defender Application Guard for Microsoft Edge AND isolated Windows environments

<a href="" id="clipboardfiletype"></a>**Settings/ClipboardFileType**  
Determines the type of content that can be copied from the host to Application Guard environment and vice versa. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 1 - Allow text copying.
- 2 - Allow image copying.
- 3 - Allow text and image copying.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Configure Microsoft Defender Application Guard clipboard settings*
- GP name: *AppHVSIClipboardFileType*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="clipboardsettings"></a>**Settings/ClipboardSettings**  
This policy setting allows you to decide how the clipboard behaves while in Application Guard.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 0 (default) - Completely turns Off the clipboard functionality for the Application Guard.
- 1 - Turns On clipboard operation from an isolated session to the host.
- 2 - Turns On clipboard operation from the host to an isolated session.
- 3 - Turns On clipboard operation in both the directions.

> [!IMPORTANT]
> Allowing copied content to go from Microsoft Edge into Application Guard can cause potential security risks and isn't recommended. 

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Configure Microsoft Defender Application Guard clipboard settings*
- GP name: *AppHVSIClipboardSettings*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="printingsettings"></a>**Settings/PrintingSettings**  
This policy setting allows you to decide how the print functionality behaves while in Application Guard. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 0 (default) - Disables all print functionality.
- 1 - Enables only XPS printing.
- 2 - Enables only PDF printing.
- 3 - Enables both PDF and XPS printing.
- 4 - Enables only local printing.
- 5 - Enables both local and XPS printing.
- 6 - Enables both local and PDF printing.
- 7 - Enables local, PDF, and XPS printing.
- 8 - Enables only network printing.
- 9 - Enables both network and XPS printing.
- 10 - Enables both network and PDF printing.
- 11 - Enables network, PDF, and XPS printing.
- 12 - Enables both network and local printing.
- 13 - Enables network, local, and XPS printing.
- 14 - Enables network, local, and PDF printing.
- 15 - Enables all printing.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Configure Microsoft Defender Application Guard print settings*
- GP name: *AppHVSIPrintingSettings*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="blocknonenterprisecontent"></a>**Settings/BlockNonEnterpriseContent**  
This policy setting allows you to decide whether websites can load non-enterprise content in Microsoft Edge and Internet Explorer. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 0 (default) - Non-enterprise content embedded in enterprise sites is allowed to open outside of the Microsoft Defender Application Guard container, directly in Internet Explorer and Microsoft Edge.
- 1 - Non-enterprise content embedded on enterprise sites are stopped from opening in Internet Explorer or Microsoft Edge outside of Microsoft Defender Application Guard.

> [!NOTE]
> This policy setting is no longer supported in the new Microsoft Edge browser. The policy will be deprecated and removed in a future release. Webpages that contain mixed content, both enterprise and non-enterprise, may load incorrectly or fail completely if this feature is enabled.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Prevent enterprise websites from loading non-enterprise content in Microsoft Edge and Internet Explorer*
- GP name: *BlockNonEnterpriseContent*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="allowpersistence"></a>**Settings/AllowPersistence**  
This policy setting allows you to decide whether data should persist across different sessions in Application Guard. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 0 - Application Guard discards user-downloaded files and other items (such as, cookies, Favorites, and so on) during machine restart or user log-off.
- 1 - Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Allow data persistence for Microsoft Defender Application Guard*
- GP name: *AllowPersistence*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="allowvirtualgpu"></a>**Settings/AllowVirtualGPU**  
Added in Windows 10, version 1803. This policy setting allows you to determine whether Application Guard can use the virtual Graphics Processing Unit (GPU) to process graphics. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete.  

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

If you enable this setting, Microsoft Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Microsoft Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If you enable this setting without connecting any high-security rendering graphics hardware, Microsoft Defender Application Guard will automatically revert to software-based (CPU) rendering.

The following list shows the supported values:  
- 0 (default) - Cannot access the vGPU and uses the CPU to support rendering graphics. When the policy is not configured, it is the same as disabled (0).
- 1 - Turns on the functionality to access the vGPU offloading graphics rendering from the CPU. This can create a faster experience when working with graphics intense websites or watching video within the container. 

> [!WARNING]
> Enabling this setting with potentially compromised graphics devices or drivers might pose a risk to the host device.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Allow hardware-accelerated rendering for Microsoft Defender Application Guard*
- GP name: *AllowVirtualGPU*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="savefilestohost"></a>**Settings/SaveFilesToHost**  
Added in Windows 10, version 1803. This policy setting allows you to determine whether users can elect to download files from Edge in the container and persist files them from container to the host operating system. 

Value type is integer. Supported operations are Add, Get, Replace, and Delete. 

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 0 (default) - The user cannot download files from Edge in the container to the host file system. When the policy is not configured, it is the same as disabled (0).
- 1 - Turns on the functionality to allow users to download files from Edge in the container to the host file system.  

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Allow files to download and save to the host operating system from Microsoft Defender Application Guard*
- GP name: *SaveFilesToHost*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="certificatethumbprints"></a>**Settings/CertificateThumbprints**  
Added in Windows 10, version 1809. This policy setting allows certain device level Root Certificates to be shared with the Microsoft Defender Application Guard container. 

Value type is string. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

If you enable this setting, certificates with a thumbprint matching the ones specified will be transferred into the container. Multiple certificates can be specified by using a comma to separate the thumbprints for each certificate you want to transfer.

Here's an example:  
b4e72779a8a362c860c36a6461f31e3aa7e58c14,1b1d49f06d2a697a544a1059bd59a7b058cda924

If you disable or don’t configure this setting, certificates are not shared with the Microsoft Defender Application Guard container.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Allow Microsoft Defender Application Guard to use Root Certificate Authorities from the user's device*
- GP name: *CertificateThumbprints*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

> [!NOTE]
> To enforce this policy, device restart or user logon/logoff is required. 

<a href="" id="allowcameramicrophoneredirection"></a>**Settings/AllowCameraMicrophoneRedirection**  
Added in Windows 10, version 1809. This policy setting allows you to determine whether applications inside Microsoft Defender Application Guard can access the device’s camera and microphone when these settings are enabled on the user’s device.

Value type is integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Microsoft Edge on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

If you enable this policy setting, applications inside Microsoft Defender Application Guard will be able to access the camera and microphone on the user’s device.

If you disable or don't configure this policy setting, applications inside Microsoft Defender Application Guard will be unable to access the camera and microphone on the user’s device.

The following list shows the supported values:  
- 0 (default) - Microsoft Defender Application Guard cannot access the device’s camera and microphone. When the policy is not configured, it is the same as disabled (0).
- 1 - Turns on the functionality to allow Microsoft Defender Application Guard to access the device’s camera and microphone.

> [!IMPORTANT]
> If you turn on this policy setting, a compromised container could bypass camera and microphone permissions and access the camera and microphone without the user's knowledge. To prevent unauthorized access, we recommend that camera and microphone privacy settings be turned off on the user's device when they are not needed.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Allow camera and microphone access in Microsoft Defender Application Guard*
- GP name: *AllowCameraMicrophoneRedirection*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->

<a href="" id="status"></a>**Status**  
Returns bitmask that indicates status of Application Guard installation and pre-requisites on the device. 

Value type is integer. Supported operation is Get.

- Bit 0 - Set to 1 when	Application Guard is enabled into enterprise manage mode.
- Bit 1	- Set to 1 when	the client machine is Hyper-V capable.
- Bit 2	- Set to 1 when	the client machine has a valid OS license and SKU.
- Bit 3	- Set to 1 when	Application Guard installed on the client machine.
- Bit 4	- Set to 1 when	required Network Isolation Policies are configured.
- Bit 5	- Set to 1 when the client machine meets minimum hardware requirements.
- Bit 6 - Set to 1 when system reboot is required.

<a href="" id="platformstatus"></a>**PlatformStatus**  
Returns bitmask that indicates status of Application Guard platform installation and prerequisites on the device. 

Value type is integer. Supported operation is Get.

- Bit 0 - Set to 1 when Application Guard is enabled into enterprise manage mode.
- Bit 1 - Set to 1 when the client machine is Hyper-V capable.
- Bit 2 - Reserved for Microsoft.
- Bit 3 - Set to 1 when Application Guard is installed on the client machine.
- Bit 4 - Reserved for Microsoft.
- Bit 5 - Set to 1 when the client machine meets minimum hardware requirements.

<a href="" id="installwindowsdefenderapplicationguard"></a>**InstallWindowsDefenderApplicationGuard**  
Initiates remote installation of Application Guard feature. 

Supported operations are Get and Execute.

The following list shows the supported values: 
- Install - Will initiate feature install.
- Uninstall - Will initiate feature uninstall.

<a href="" id="audit"></a>**Audit**  
Interior node. Supported operation is Get.

<a href="" id="auditapplicationguard"></a>**Audit/AuditApplicationGuard**  
This policy setting allows you to decide whether auditing events can be collected from Application Guard. 

Value type in integer. Supported operations are Add, Get, Replace, and Delete.

This policy setting is supported on Windows 10 Enterprise or Windows 10 Education with Microsoft Defender Application Guard in Enterprise mode.

The following list shows the supported values:  
- 0 (default) - Audit event logs aren't collected for Application Guard.
- 1 - Application Guard inherits its auditing policies from system and starts to audit security events for Application Guard container.

<!--ADMXMapped-->
ADMX Info:  
- GP English name: *Allow auditing events in Microsoft Defender Application Guard*
- GP name: *AuditApplicationGuard*
- GP path: *Windows Components/Microsoft Defender Application Guard*
- GP ADMX file name: *AppHVSI.admx*
<!--/ADMXMapped-->
