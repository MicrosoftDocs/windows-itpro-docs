---
title: Configure the Group Policy settings for Microsoft Defender Application Guard (Windows 10)
description: Learn about the available Group Policy settings for Microsoft Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 05/27/2020
ms.reviewer: 
manager: dansimp
ms.custom: asr
---

# Configure Microsoft Defender Application Guard policy settings

**Applies to:** 
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft Defender Application Guard (Application Guard) works with Group Policy to help you manage your organization's computer settings. By using Group Policy, you can configure a setting once, and then copy it onto many computers. For example, you can set up multiple security settings in a GPO, which is linked to a domain, and then apply all those settings to every computer in the domain.

Application Guard uses both network isolation and application-specific settings.

## Network isolation settings

These settings, located at **Computer Configuration\Administrative Templates\Network\Network Isolation**, help you define and manage your company's network boundaries. Application Guard uses this information to automatically transfer any requests to access the non-corporate resources into the Application Guard container.

>[!NOTE]
>You must configure either the Enterprise resource domains hosted in the cloud or Private network ranges for apps settings on your employee devices to successfully turn on Application Guard using enterprise mode. Proxy servers must be a neutral resource listed in the "Domains categorized as both work and personal" policy.


 
|Policy name|Supported versions|Description|
|-----------|------------------|-----------|
|Private network ranges for apps|At least Windows Server 2012, Windows 8, or Windows RT|A comma-separated list of IP address ranges that are in your corporate network. Included endpoints or endpoints that are included within a specified IP address range, are rendered using Microsoft Edge and won't be accessible from the Application Guard environment.|
|Enterprise resource domains hosted in the cloud|At least Windows Server 2012, Windows 8, or Windows RT|A pipe-separated (\|) list of your domain cloud resources. Included endpoints are rendered using Microsoft Edge and won't be accessible from the Application Guard environment. Note: This list supports the wildcards detailed in the [Network isolation settings wildcards](#network-isolation-settings-wildcards) table.|
|Domains categorized as both work and personal|At least Windows Server 2012, Windows 8, or Windows RT|A comma-separated list of domain names used as both work or personal resources. Included endpoints are rendered using Microsoft Edge and will be accessible from the Application Guard and regular Edge environment. Proxies should be added to this list. Note: This list supports the wildcards detailed in the [Network isolation settings wildcards](#network-isolation-settings-wildcards) table.|

## Network isolation settings wildcards

|Value|Number of dots to the left|Meaning|
|-----|--------------------------|-------|
|`contoso.com`|0|Trust only the literal value of `contoso.com`.|
|`www.contoso.com`|0|Trust only the literal value of `www.contoso.com`.|
|`.contoso.com`|1|Trust any domain that ends with the text `contoso.com`. Matching sites include `spearphishingcontoso.com`, `contoso.com`, and `www.contoso.com`.|
|`..contoso.com`|2|Trust all levels of the domain hierarchy that are to the left of the dot. Matching sites include `shop.contoso.com`, `us.shop.contoso.com`, `www.us.shop.contoso.com`, but NOT `contoso.com` itself.|

## Application-specific settings
These settings, located at **Computer Configuration\Administrative Templates\Windows Components\Windows Defender Application Guard**, can help you to manage your company's implementation of Application Guard.

|Name|Supported versions|Description|Options|
|-----------|------------------|-----------|-------|
|Configure Windows Defender Application Guard clipboard settings|Windows 10 Enterprise, 1709 or higher<br><br>Windows 10 Pro, 1803 or higher|Determines whether Application Guard can use the clipboard functionality.|**Enabled.** Turns On the clipboard functionality and lets you choose whether to additionally:<br/>-Disable the clipboard functionality completely when Virtualization Security is enabled.<br/>- Enable copying of certain content from Application Guard into Microsoft Edge.<br/>- Enable copying of certain content from Microsoft Edge into Application Guard. **Important:** Allowing copied content to go from Microsoft Edge into Application Guard can cause potential security risks and isn't recommended.<br/><br/>**Disabled or not configured.** Completely turns Off the clipboard functionality for Application Guard.|
|Configure Windows Defender Application Guard print settings|Windows 10 Enterprise, 1709 or higher<br><br>Windows 10 Pro, 1803 or higher|Determines whether Application Guard can use the print functionality.|**Enabled.** Turns On the print functionality and lets you choose whether to additionally:<br/>- Enable Application Guard to print into the XPS format.<br/>- Enable Application Guard to print into the PDF format.<br/>- Enable Application Guard to print to locally attached printers.<br/>- Enable Application Guard to print from previously connected network printers. Employees can't search for additional printers.<br/><br/>**Disabled or not configured.** Completely turns Off the print functionality for Application Guard.<br><br>**Note**<br>Network printers must be published by Active Directory to work in Application Guard.|
|Block enterprise websites to load non-enterprise content in IE and Edge|Windows 10 Enterprise, 1709 or higher|Determines whether to allow Internet access for apps not included on the **Allowed Apps** list.|**Enabled.** Prevents network traffic from both Internet Explorer and Microsoft Edge to non-enterprise sites that can't render in the Application Guard container. **Note:** This may also block assets cached by CDNs and references to analytics sites. Please add them to the trusted enterprise resources to avoid broken pages.<br><br>**Disabled or not configured.** Prevents Microsoft Edge to render network traffic to non-enterprise sites that can't render in Application Guard.<br><br>**Note**<br>This policy is no longer supported in the 2004 update and later.|
|Allow Persistence|Windows 10 Enterprise, 1709 or higher<br><br>Windows 10 Pro, 1803 or higher|Determines whether data persists across different sessions in Windows Defender Application Guard.|**Enabled.** Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.<br><br>**Disabled or not configured.** All user data within Application Guard is reset between sessions.<br><br>**Note**<br>If you later decide to stop supporting data persistence for your employees, you can use our Windows-provided utility to reset the container and to discard any personal data.<br><br>**To reset the container:**<br/>1. Open a command-line program and navigate to `Windows/System32`.<br/>2. Type `wdagtool.exe cleanup`. The container environment is reset, retaining only the employee-generated data.<br/>3. Type `wdagtool.exe cleanup RESET_PERSISTENCE_LAYER`. The container environment is reset, including discarding all employee-generated data.|
|Turn on Windows Defender Application Guard in Managed Mode|Windows 10 Enterprise, 1809 or higher|Determines whether to turn on Application Guard for Microsoft Edge and Microsoft Office.|**Enabled.** Turns on Application Guard for Microsoft Edge and/or Microsoft Office, honoring the network isolation settings, rendering non-enterprise domains in the Application Guard container. Be aware that Application Guard won't actually be turned On unless the required prerequisites and network isolation settings are already set on the device. Available options:<br/>- Enable Windows Defender Application Guard only for Microsoft Edge<br/>- Enable Windows Defender Application Guard only for Microsoft Office<br/>- Enable Windows Defender Application Guard for both Microsoft Edge and Microsoft Office<br/><br/>**Disabled.** Turns Off Application Guard, allowing all apps to run in Microsoft Edge and Microsoft Office.|
|Allow files to download to host operating system|Windows 10 Enterprise, 1803 or higher|Determines whether to save downloaded files to the host operating system from the Windows Defender Application Guard container.|**Enabled.** Allows users to save downloaded files from the Windows Defender Application Guard container to the host operating system.<br><br>**Disabled or not configured.** Users are not able to saved downloaded files from Application Guard to the host operating system.|
|Allow hardware-accelerated rendering for Windows Defender Application Guard|Windows 10 Enterprise, 1803 or higher<br><br>Windows 10 Pro, 1803 or higher|Determines whether Windows Defender Application Guard renders graphics using hardware or software acceleration.|**Enabled.** Windows Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Windows Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If this setting is enabled without connecting any high-security rendering graphics hardware, Windows Defender Application Guard will automatically revert to software-based (CPU) rendering. **Important:** Be aware that enabling this setting with potentially compromised graphics devices or drivers might pose a risk to the host device.<br><br>**Disabled or not configured.** Windows Defender Application Guard uses software-based (CPU) rendering and won’t load any third-party graphics drivers or interact with any connected graphics hardware.|
|Allow camera and microphone access in Windows Defender Application Guard|Windows 10 Enterprise, 1809 or higher<br><br>Windows 10 Pro, 1809 or higher|Determines whether to allow camera and microphone access inside Windows Defender Application Guard.|**Enabled.** Applications inside Windows Defender Application Guard are able to access the camera and microphone on the user's device. **Important:** Be aware that enabling this policy with a potentially compromised container could bypass camera and microphone permissions and access the camera and microphone without the user's knowledge.<br><br>**Disabled or not configured.** Applications inside Windows Defender Application Guard are unable to access the camera and microphone on the user's device.|
|Allow Windows Defender Application Guard to use Root Certificate Authorities from a user's device|Windows 10 Enterprise, 1809 or higher<br><br>Windows 10 Pro, 1809 or higher|Determines whether Root Certificates are shared with Windows Defender Application Guard.|**Enabled.** Certificates matching the specified thumbprint are transferred into the container. Use a comma to separate multiple certificates.<br><br>**Disabled or not configured.** Certificates are not shared with Windows Defender Application Guard.|
|Allow users to trust files that open in Windows Defender Application Guard|Windows 10 Enterprise, 1809 or higher|Determines whether users are able to manually trust untrusted files to open them on the host.|**Enabled.** Users are able to manually trust files or trust files after an antivirus check.<br><br>**Disabled or not configured.** Users are unable to manually trust files and files continue to open in Windows Defender Application Guard.|


