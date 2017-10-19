---
title: Configure the Group Policy settings for Windows Defender Application Guard (Windows 10)
description: Learn about the available Group Policy settings for Windows Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: eross-msft
ms.author: lizross
ms.date: 08/11/2017
---

# Configure Windows Defender Application Guard policy settings

**Applies to:**
- Windows 10 Enterpise edition, version 1709

Windows Defender Application Guard (Application Guard) works with Group Policy to help you manage your organization's computer settings. By using Group Policy, you can configure a setting once, and then copy it onto many computers. For example, you can set up multiple security settings in a GPO, which is linked to a domain, and then apply all those settings to every computer in the domain.

Application Guard uses both network isolation and application-specific settings.

### Network isolation settings
These settings, located at **Computer Configuration\Administrative Templates\Network\Network Isolation**, help you define and manage your company's network boundaries. Application Guard uses this information to automatically transfer any requests to access the non-corporate resources into the Application Guard container.

>[!NOTE]
>You must configure either the Enterprise resource domains hosted in the cloud or Private network ranges for apps settings on your employee devices to successfully turn on Application Guard using enterprise mode.


|Policy name|Supported versions|Description|
|-----------|------------------|-----------|
|Private network ranges for apps|At least Windows Server 2012, Windows 8, or Windows RT|A comma-separated list of IP address ranges that are in your corporate network. Included endpoints or endpoints that are included within a specified IP address range, are rendered using Microsoft Edge and won't be accessible from the Application Guard environment.|
|Enterprise resource domains hosted in the cloud|At least Windows Server 2012, Windows 8, or Windows RT|A pipe-separated (\|) list of your domain cloud resources. Included endpoints are rendered using Microsoft Edge and won't be accessible from the Application Guard environment.|
|Domains categorized as both work and personal|At least Windows Server 2012, Windows 8, or Windows RT|A comma-separated list of domain names used as both work or personal resources. Included endpoints are rendered using Microsoft Edge and won't be accessible from the Application Guard environment.|

### Application-specific settings
These settings, located at **Computer Configuration\Administrative Templates\Windows Components\Windows Defender Application Guard**, can help you to manage your company's implementation of Application Guard.

|Name|Supported versions|Description|Options|
|-----------|------------------|-----------|-------|
|Configure Windows Defender Application Guard clipboard settings|At least Windows 10 Enterprise|Determines whether Application Guard can use the clipboard functionality.|**Enabled.** Turns On the clipboard functionality and lets you choose whether to additionally:<ul><li>Disable the clipboard functionality completely when Virtualization Security is enabled.</li><li>Enable copying of certain content from Application Guard into Microsoft Edge.</li><li>Enable copying of certain content from Microsoft Edge into Application Guard.<br><br>**Important**<br>Allowing copied content to go from Microsoft Edge into Application Guard can cause potential security risks and isn't recommended.</li></ul>**Disabled or not configured.** Completely turns Off the clipboard functionality for Application Guard.|
|Configure Windows Defender Application Guard print settings|At least Windows 10 Enterprise|Determines whether Application Guard can use the print functionality.|**Enabled.** Turns On the print functionality and lets you choose whether to additionally:<ul><li>Enable Application Guard to print into the XPS format.</li><li>Enable Application Guard to print into the PDF format.</li><li>Enable Application Guard to print to locally attached printers.</li><li>Enable Application Guard to print from previously connected network printers. Employees can't search for additional printers.</ul>**Disabled or not configured.** Completely turns Off the print functionality for Application Guard.|
|Block enterprise websites to load non-enterprise content in IE and Edge|At least Windows 10 Enterprise|Determines whether to allow Internet access for apps not included on the **Allowed Apps** list.|**Enabled.** Prevents network traffic from both Internet Explorer and Microsoft Edge to non-enterprise sites that can't render in the Application Guard container.**Note** This may also block assets cached by CDNs and references to analytics sites. Please add them to the trusted enterprise resources to avoid broken pages.<br><br>**Disabled or not configured.** Allows Microsoft Edge to render network traffic to non-enterprise sites that can't render in Application Guard. |
|Allow Persistence|At least Windows 10 Enterprise|Determines whether data persists across different sessions in Windows Defender Application Guard.|**Enabled.** Application Guard saves user-downloaded files and other items (such as, cookies, Favorites, and so on) for use in future Application Guard sessions.<br><br>**Disabled or not configured.** All user data within Application Guard is reset between sessions.<br><br>**Note**<br>If you later decide to stop supporting data persistence for your employees, you can use our Windows-provided utility to reset the container and to discard any personal data.<br>**To reset the container:**<ol><li>Open a command-line program and navigate to Windows/System32.</li><li>Type `wdagtool.exe cleanup`.<br>The container environment is reset, retaining only the employee-generated data.</li><li>Type `wdagtool.exe cleanup RESET_PERSISTENCE_LAYER`.<br>The container environment is reset, including discarding all employee-generated data.</li></ol>|
|Turn on Windows Defender Application Guard in Enterprise Mode|At least Windows 10 Enterprise|Determines whether to turn on Application Guard for Microsoft Edge.|**Enabled.** Turns on Application Guard for Microsoft Edge, honoring the network isolation settings, rendering non-enterprise domains in the Application Guard container. Be aware that Application Guard won't actually be turned On unless the required prerequisites and network isolation settings are already set on the device.<br><br>**Disabled.** Turns Off Application Guard, allowing all apps to run in Microsoft Edge.|


