---
title: Available Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings
description: A list of all available settings for Microsoft Defender SmartScreen using Group Policy and mobile device management (MDM) settings.
ms.prod: windows-client
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 05/31/2023
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.technology: itpro-security
ms.topic: reference
appliesto:
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
- ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---
# Available Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings

Microsoft Defender SmartScreen works with Intune, Group Policy, and mobile device management (MDM) settings to help you manage your organization's computer settings. Based on how you set up Microsoft Defender SmartScreen, you can show employees a warning page and let them continue to the site, or you can block the site entirely.

See [Windows 10 and Windows 11 settings to protect devices using Intune](/intune/endpoint-protection-windows-10#windows-defender-smartscreen-settings) for the controls you can use in Intune.

## Group Policy settings

SmartScreen uses registry-based Administrative Template policy settings.

Setting|Supported on|Description|
|--- |--- |--- |
|**Windows 10, version 2004:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure Windows Defender SmartScreen|**Windows 10, version 1703:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure Windows Defender SmartScreen<br/><br/>**Windows 10, Version 1607 and earlier:** Administrative Templates\Windows Components\File Explorer\Configure Windows SmartScreen<br/><br/>**At least Windows Server 2012, Windows 8 or Windows RT**|This policy setting turns on Microsoft Defender SmartScreen. <br/><br/>If you enable this setting, it turns on Microsoft Defender SmartScreen and your employees are unable to turn it off. Additionally, when enabling this feature, you must also pick whether Microsoft Defender SmartScreen should Warn your employees or Warn and prevent bypassing the message (effectively blocking the employee from the site).<br/><br/>If you disable this setting, it turns off Microsoft Defender SmartScreen and your employees are unable to turn it on. <br/><br/>If you don't configure this setting, your employees can decide whether to use Microsoft Defender SmartScreen.|
|**Windows 10, version 2004:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure App Install Control|**Windows 10, version 1703:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure App Install Control|This policy setting is intended to prevent malicious content from affecting your user's devices when downloading executable content from the internet.<br/><br/>This setting doesn't protect against malicious content from USB devices, network shares, or other non-internet sources.<br/><br/>**Important:**  Using a trustworthy browser helps ensure that these protections work as expected.|
|**Windows 10, version 2004:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Configure Windows Defender SmartScreen (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Configure Microsoft Defender SmartScreen (Microsoft Edge version 77 or later)<br/><br/>**Windows 10, version 1703:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Configure Windows Defender SmartScreen (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Configure Microsoft Defender SmartScreen (Microsoft Edge version 77 or later)<br/><br/>**Windows 10, Version 1607 and earlier:** Administrative Templates\Windows Components\Microsoft Edge\Configure Windows SmartScreen|Microsoft Edge on Windows 10 or Windows 11|This policy setting turns on Microsoft Defender SmartScreen. <br/><br/>If you enable this setting, it turns on Microsoft Defender SmartScreen and your employees are unable to turn it off.<br/><br/>If you disable this setting, it turns off Microsoft Defender SmartScreen and your employees are unable to turn it on. <br/><br/>If you don't configure this setting, your employees can decide whether to use Microsoft Defender SmartScreen.|
|**Windows 10, version 2004:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads (Microsoft Edge version 77 or later)<br/><br/>**Windows 10, version 1703:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads (Microsoft Edge version 77 or later)<br/><br/>**Windows 10, Version 1511 and 1607:** Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows SmartScreen prompts for files|Microsoft Edge on Windows 10, version 1511 or later|This policy setting stops employees from bypassing the Microsoft Defender SmartScreen warnings about potentially malicious files.<br/><br/>If you enable this setting, it stops employees from bypassing the warning, stopping the file download.<br/><br/>If you disable or don't configure this setting, your employees can bypass the warnings and continue to download potentially malicious files.|
|**Windows 10, version 2004:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Prevent bypassing Microsoft Defender SmartScreen prompts for sites (Microsoft Edge version 77 or later)<br/><br/>**Windows 10, version 1703:** Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Prevent bypassing Microsoft Defender SmartScreen prompts for sites (Microsoft Edge version 77 or later)<br/><br/>**Windows 10, Version 1511 and 1607:** Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows SmartScreen prompts for sites|Microsoft Edge on Windows 10, version 1511 or later|This policy setting stops employees from bypassing the Microsoft Defender SmartScreen warnings about potentially malicious sites.<br/><br/>If you enable this setting, it stops employees from bypassing the warning, stopping them from going to the site.<br/><br/>If you disable or don't configure this setting, your employees can bypass the warnings and continue to visit a potentially malicious site.|
|Administrative Templates\Windows Components\Internet Explorer\Prevent managing SmartScreen Filter|Internet Explorer 9 or later|This policy setting prevents the employee from managing Microsoft Defender SmartScreen.<br/><br/>If you enable this policy setting, the employee isn't prompted to turn on Microsoft Defender SmartScreen. All website addresses that aren't on the filter's allowlist are sent automatically to Microsoft without prompting the employee.<br/><br/>If you disable or don't configure this policy setting, the employee is prompted to decide whether to turn on Microsoft Defender SmartScreen during the first-run experience.|
|Administrative Templates\Windows Components\Internet Explorer\Prevent bypassing SmartScreen Filter warnings|Internet Explorer 8 or later|This policy setting determines whether an employee can bypass warnings from Microsoft Defender SmartScreen.<br/><br/>If you enable this policy setting, Microsoft Defender SmartScreen warnings block the employee.<br/><br/>If you disable or don't configure this policy setting, the employee can bypass Microsoft Defender SmartScreen warnings.|
|Administrative Templates\Windows Components\Internet Explorer\Prevent bypassing SmartScreen Filter warnings about files that aren't commonly downloaded from the Internet|Internet Explorer 9 or later|This policy setting determines whether the employee can bypass warnings from Microsoft Defender SmartScreen. Microsoft Defender SmartScreen warns the employee about executable files that Internet Explorer users don't commonly download from the Internet.<br/><br/>If you enable this policy setting, Microsoft Defender SmartScreen warnings block the employee.<br/><br/>If you disable or don't configure this policy setting, the employee can bypass Microsoft Defender SmartScreen warnings.|

## MDM settings

If you manage your policies using Microsoft Intune, use these MDM policy settings. All settings support desktop computers running Windows 10/11 Pro or Windows 10/11 Enterprise, enrolled with Microsoft Intune.

For Microsoft Defender SmartScreen Edge MDM policies, see [Policy CSP - Browser](/windows/client-management/mdm/policy-csp-browser).

|Setting|Supported versions|Details|
|--- |--- |--- |
|AllowSmartScreen|Windows 10|<li>**URI full path.**  ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen<li>**Data type.**  Integer<li>**Allowed values:**<ul><li>**0 .**  Turns off Microsoft Defender SmartScreen in Microsoft Edge.<li>**1.**  Turns on Microsoft Defender SmartScreen in Microsoft Edge.|
|EnableAppInstallControl|Windows 10, version 1703|<li>**URI full path.**  ./Vendor/MSFT/Policy/Config/SmartScreen/EnableAppInstallControl<li>**Data type.**  Integer<li>**Allowed values:**<ul><li>**0 .**  Turns off Application Installation Control, allowing users to download and install files from anywhere on the web.<li>**1.**  Turns on Application Installation Control, allowing users to install apps from the Microsoft Store only.|
|EnableSmartScreenInShell|Windows 10, version 1703|<li>**URI full path.**  ./Vendor/MSFT/Policy/Config/SmartScreen/EnableSmartScreenInShell<li>**Data type.**  Integer<li>**Allowed values:**<ul><li>**0 .**  Turns off Microsoft Defender SmartScreen in Windows for app and file execution.<li>**1.**  Turns on Microsoft Defender SmartScreen in Windows for app and file execution.|
|PreventOverrideForFilesInShell|Windows 10, version 1703|<li>**URI full path.**  ./Vendor/MSFT/Policy/Config/SmartScreen/PreventOverrideForFilesInShell<li>**Data type.**  Integer<li>**Allowed values:**<ul><li>**0 .**  Employees can ignore Microsoft Defender SmartScreen warnings and run malicious files.<li>**1.**  Employees can't ignore Microsoft Defender SmartScreen warnings and run malicious files.|
|PreventSmartScreenPromptOverride|Windows 10, Version 1511 and Windows 11|<li>**URI full path.**  ./Vendor/MSFT/Policy/Config/Browser/PreventSmartscreenPromptOverride<li>**Data type.**  Integer<li>**Allowed values:**<ul><li>**0 .**  Employees can ignore Microsoft Defender SmartScreen warnings.<li>**1.**  Employees can't ignore Microsoft Defender SmartScreen warnings.|
|PreventSmartScreenPromptOverrideForFiles|Windows 10, Version 1511 and Windows 11|<li>**URI full path.**  ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles<li>**Data type.**  Integer<li>**Allowed values:**<ul><li>**0 .**  Employees can ignore Microsoft Defender SmartScreen warnings for files.<li>**1.**  Employees can't ignore Microsoft Defender SmartScreen warnings for files.|

## Recommended Group Policy and MDM settings for your organization

By default, Microsoft Defender SmartScreen lets employees bypass warnings. Unfortunately, this feature can let employees continue to an unsafe site or to continue to download an unsafe file, even after being warned. Because of this possibility, we strongly recommend that you set up Microsoft Defender SmartScreen to block high-risk interactions instead of providing just a warning.

To better help you protect your organization, we recommend turning on and using these specific Microsoft Defender SmartScreen Group Policy and MDM settings.

|Group Policy setting|Recommendation|
|--- |--- |
|Administrative Templates\Windows Components\Microsoft Edge\Configure Windows Defender SmartScreen (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Configure Microsoft Defender SmartScreen (Microsoft Edge version 77 or later)|**Enable.**  Turns on Microsoft Defender SmartScreen.|
|Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Prevent bypassing Windows Defender SmartScreen prompts for sites (Microsoft Edge version 77 or later)|**Enable.**  Stops employees from ignoring warning messages and continuing to a potentially malicious website.|
|Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files (Microsoft Edge version 45 and earlier)<br/><br/>Administrative Templates\Microsoft Edge\SmartScreen settings\Prevent bypassing of Microsoft Defender SmartScreen warnings about downloads (Microsoft Edge version 77 or later)|**Enable.**  Stops employees from ignoring warning messages and continuing to download potentially malicious files.|
|Administrative Templates\Windows Components\File Explorer\Configure Windows Defender SmartScreen|**Enable with the Warn and prevent bypass option.**  Stops employees from ignoring warning messages about malicious files downloaded from the Internet.|

|MDM setting|Recommendation|
|--- |--- |
|Browser/AllowSmartScreen|**1.**  Turns on Microsoft Defender SmartScreen.|
|Browser/PreventSmartScreenPromptOverride|**1.**  Stops employees from ignoring warning messages and continuing to a potentially malicious website.|
|Browser/PreventSmartScreenPromptOverrideForFiles|**1.**  Stops employees from ignoring warning messages and continuing to download potentially malicious files.|
|SmartScreen/EnableSmartScreenInShell|**1.**  Turns on Microsoft Defender SmartScreen in Windows.<br/><br/>Requires at least Windows 10, version 1703.|
|SmartScreen/PreventOverrideForFilesInShell|**1.**  Stops employees from ignoring warning messages about malicious files downloaded from the Internet.<br/><br/>Requires at least Windows 10, version 1703.|

## Related articles

- [Available Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge](/microsoft-edge/deploy/available-policies)
