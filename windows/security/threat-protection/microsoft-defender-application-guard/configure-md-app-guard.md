---
title: Configure the Group Policy settings for Microsoft Defender Application Guard (Windows 10)
description: Learn about the available Group Policy settings for Microsoft Defender Application Guard.
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 05/24/2021
ms.reviewer: 
manager: dansimp
ms.custom: asr
ms.technology: mde
---

# Configure Microsoft Defender Application Guard policy settings

**Applies to:**

- Windows 10

Microsoft Defender Application Guard (Application Guard) works with Group Policy to help you manage your organization's computer settings. By using Group Policy, you can configure a setting once, and then copy it onto many computers. For example, you can set up multiple security settings in a Group Policy Object, which is linked to a domain, and then apply all those settings to every endpoint in the domain.

Application Guard uses both network isolation and application-specific settings.

## Network isolation settings

These settings, located at `Computer Configuration\Administrative Templates\Network\Network Isolation`, help you define and manage your organization's network boundaries. Application Guard uses this information to automatically transfer any requests to access the non-corporate resources into the Application Guard container.

> [!NOTE]
> You must configure either the Enterprise resource domains hosted in the cloud or Private network ranges for apps settings on your employee devices to successfully turn on Application Guard using enterprise mode. Proxy servers must be a neutral resource listed in the "Domains categorized as both work and personal" policy.
 
|Policy name|Supported versions|Description|
|-----------|------------------|-----------|
|Private network ranges for apps | At least Windows Server 2012, Windows 8, or Windows RT| A comma-separated list of IP address ranges that are in your corporate network. Included endpoints or endpoints that are included within a specified IP address range, are rendered using Microsoft Edge and won't be accessible from the Application Guard environment.|
|Enterprise resource domains hosted in the cloud| At least Windows Server 2012, Windows 8, or Windows RT|A pipe-separated (\|) list of your domain cloud resources. Included endpoints are rendered using Microsoft Edge and won't be accessible from the Application Guard environment. <p>**NOTE**: This list supports the wildcards detailed in the [Network isolation settings wildcards](#network-isolation-settings-wildcards) table.|
|Domains categorized as both work and personal| At least Windows Server 2012, Windows 8, or Windows RT|A comma-separated list of domain names used as both work or personal resources. Included endpoints are rendered using Microsoft Edge and will be accessible from the Application Guard and regular Edge environment. <p>**NOTE**: This list supports the wildcards detailed in the [Network isolation settings wildcards](#network-isolation-settings-wildcards) table.|

## Network isolation settings wildcards

|Value|Number of dots to the left|Meaning|
|-----|--------------------------|-------|
|`contoso.com`|0|Trust only the literal value of `contoso.com`.|
|`www.contoso.com`|0|Trust only the literal value of `www.contoso.com`.|
|`.contoso.com`|1|Trust any domain that ends with the text `contoso.com`. Matching sites include `spearphishingcontoso.com`, `contoso.com`, and `www.contoso.com`.|
|`..contoso.com`|2|Trust all levels of the domain hierarchy that are to the left of the dot. Matching sites include `shop.contoso.com`, `us.shop.contoso.com`, `www.us.shop.contoso.com`, but NOT `contoso.com` itself.|

## Application-specific settings
These settings, located at `Computer Configuration\Administrative Templates\Windows Components\Microsoft Defender Application Guard`, can help you to manage your company's implementation of Application Guard.

|Name|Supported versions|Description|Options|
|-----------|------------------|-----------|-------|
|Configure Microsoft Defender Application Guard clipboard settings|Windows 10 Enterprise, 1709 or higher<p>Windows 10 Pro, 1803 or higher|Determines whether Application Guard can use the clipboard functionality.|**Enabled.** Turns On the clipboard functionality and lets you choose whether to additionally:<br/>- Disable the clipboard functionality completely when Virtualization Security is enabled.<br/>- Enable copying of certain content from Application Guard into Microsoft Edge.<br/>- Enable copying of certain content from Microsoft Edge into Application Guard. **Important:** Allowing copied content to go from Microsoft Edge into Application Guard can cause potential security risks and isn't recommended.<p>**Disabled or not configured.** Completely turns Off the clipboard functionality for Application Guard.|
|Configure Microsoft Defender Application Guard print settings|Windows 10 Enterprise, 1709 or higher<p>Windows 10 Pro, 1803 or higher|Determines whether Application Guard can use the print functionality.|**Enabled.** Turns On the print functionality and lets you choose whether to additionally:<br/>- Enable Application Guard to print into the XPS format.<br/>- Enable Application Guard to print into the PDF format.<br/>- Enable Application Guard to print to locally attached printers.<br/>- Enable Application Guard to print from previously connected network printers. Employees can't search for additional printers.<br/><br/>**Disabled or not configured.** Completely turns Off the print functionality for Application Guard.|
|Prevent enterprise websites from loading non-enterprise content in Microsoft Edge and Internet Explorer|Windows 10 Enterprise, 1709 or higher|Determines whether to allow Internet access for apps not included on the **Allowed Apps** list.|**Enabled.** Prevents network traffic from both Internet Explorer and Microsoft Edge to non-enterprise sites that can't render in the Application Guard container. <p>**NOTE**: This action might also block assets cached by CDNs and references to analytics sites. Add them to the trusted enterprise resources to avoid broken pages.<p>**Disabled or not configured.** Prevents Microsoft Edge to render network traffic to non-enterprise sites that can't render in Application Guard. |
|Allow Persistence|Windows 10 Enterprise, 1709 or higher<br><br>Windows 10 Pro, 1803 or higher|Determines whether data persists across different sessions in Microsoft Defender Application Guard.|**Enabled.** Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.<p>**Disabled or not configured.** All user data within Application Guard is reset between sessions.<p>**NOTE**: If you later decide to stop supporting data persistence for your employees, you can use our Windows-provided utility to reset the container and to discard any personal data.<p>**To reset the container:**<br/>1. Open a command-line program and navigate to `Windows/System32`.<br/>2. Type `wdagtool.exe cleanup`. The container environment is reset, retaining only the employee-generated data.<br/>3. Type `wdagtool.exe cleanup RESET_PERSISTENCE_LAYER`. The container environment is reset, including discarding all employee-generated data.|
|Turn on Microsoft Defender Application Guard in Managed Mode|Windows 10 Enterprise, 1809 or higher|Determines whether to turn on Application Guard for Microsoft Edge and Microsoft Office.|**Enabled.** Turns on Application Guard for Microsoft Edge and/or Microsoft Office, honoring the network isolation settings, rendering non-enterprise domains in the Application Guard container. Be aware that Application Guard won't actually be turned on unless the required prerequisites and network isolation settings are already set on the device. Available options:<br/>- Enable Microsoft Defender Application Guard only for Microsoft Edge<br/>- Enable Microsoft Defender Application Guard only for Microsoft Office<br/>- Enable Microsoft Defender Application Guard for both Microsoft Edge and Microsoft Office<br/><br/>**Disabled.** Turns off Application Guard, allowing all apps to run in Microsoft Edge and Microsoft Office.|
|Allow files to download to host operating system|Windows 10 Enterprise, 1803 or higher|Determines whether to save downloaded files to the host operating system from the Microsoft Defender Application Guard container.|**Enabled.** Allows users to save downloaded files from the Microsoft Defender Application Guard container to the host operating system. This action creates a share between the host and container that also allows for uploads from the host to the Application Guard container.<p>**Disabled or not configured.** Users are not able to save downloaded files from Application Guard to the host operating system.|
|Allow hardware-accelerated rendering for Microsoft Defender Application Guard|Windows 10 Enterprise, 1803 or higher<br><br>Windows 10 Pro, 1803 or higher|Determines whether Microsoft Defender Application Guard renders graphics using hardware or software acceleration.|**Enabled.** Microsoft Defender Application Guard uses Hyper-V to access supported, high-security rendering graphics hardware (GPUs). These GPUs improve rendering performance and battery life while using Microsoft Defender Application Guard, particularly for video playback and other graphics-intensive use cases. If this setting is enabled without connecting any high-security rendering graphics hardware, Microsoft Defender Application Guard will automatically revert to software-based (CPU) rendering. **Important:** Be aware that enabling this setting with potentially compromised graphics devices or drivers might pose a risk to the host device.<br><br>**Disabled or not configured.** Microsoft Defender Application Guard uses software-based (CPU) rendering and won’t load any third-party graphics drivers or interact with any connected graphics hardware.|
|Allow camera and microphone access in Microsoft Defender Application Guard|Windows 10 Enterprise, 1809 or higher<br><br>Windows 10 Pro, 1809 or higher|Determines whether to allow camera and microphone access inside Microsoft Defender Application Guard.|**Enabled.** Applications inside Microsoft Defender Application Guard are able to access the camera and microphone on the user's device. **Important:** Be aware that enabling this policy with a potentially compromised container could bypass camera and microphone permissions and access the camera and microphone without the user's knowledge.<p>**Disabled or not configured.** Applications inside Microsoft Defender Application Guard are unable to access the camera and microphone on the user's device.|
|Allow Microsoft Defender Application Guard to use Root Certificate Authorities from a user's device|Windows 10 Enterprise, 1809 or higher<br><br>Windows 10 Pro, 1809 or higher|Determines whether Root Certificates are shared with Microsoft Defender Application Guard.|**Enabled.** Certificates matching the specified thumbprint are transferred into the container. Use a comma to separate multiple certificates.<p>**Disabled or not configured.** Certificates are not shared with Microsoft Defender Application Guard.|
|Allow auditing events in Microsoft Defender Application Guard|Windows 10 Enterprise, 1809 or higher<br><br>Windows 10 Pro, 1809 or higher|This policy setting allows you to decide whether auditing events can be collected from Microsoft Defender Application Guard.|**Enabled.** Application Guard inherits auditing policies from your device and logs system events from the Application Guard container to your host.<p>**Disabled or not configured.** event logs aren't collected from your Application Guard container.|
