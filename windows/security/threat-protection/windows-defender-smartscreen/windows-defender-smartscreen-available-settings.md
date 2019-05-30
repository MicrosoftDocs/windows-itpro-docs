---
title: Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings (Windows 10)
description: A list of all available setttings for Windows Defender SmartScreen using Group Policy and mobile device management (MDM) settings.
keywords: SmartScreen Filter, Windows SmartScreen
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: dansimp
ms.localizationpriority: medium
ms.date: 1/26/2018
---
# Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings
**Applies to:**

- Windows 10
- Windows 10 Mobile

Windows Defender SmartScreen works with Intune, Group Policy, and mobile device management (MDM) settings to help you manage your organization's computer settings. Based on how you set up Windows Defender SmartScreen, you can show employees a warning page and let them continue to the site, or you can block the site entirely.

See [Windows 10 (and later) settings to protect devices using Intune](https://docs.microsoft.com/en-us/intune/endpoint-protection-windows-10#windows-defender-smartscreen-settings) for the controls you can use in Intune.


## Group Policy settings
SmartScreen uses registry-based Administrative Template policy settings. For more info about Group Policy, see the [Group Policy TechCenter](https://go.microsoft.com/fwlink/p/?LinkId=214514). This site provides links to the latest technical documentation, videos, and downloads for Group Policy.
<table>
<tr>
<th align="left">Setting</th>
<th align="left">Supported on</th>
<th align="left">Description</th>
</tr>
<tr>
<td><strong>Windows 10, version 1703:</strong><br>Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure Windows Defender SmartScreen<p><strong>Windows 10, Version 1607 and earlier:</strong><br>Administrative Templates\Windows Components\File Explorer\Configure Windows SmartScreen</td>
<td>At least Windows Server 2012, Windows 8 or Windows RT</td>
<td>This policy setting turns on Windows Defender SmartScreen.<p>If you enable this setting, it turns on Windows Defender SmartScreen and your employees are unable to turn it off. Additionally, when enabling this feature, you must also pick whether SmartScreen should Warn your employees or Warn and prevent bypassing the message (effectively blocking the employee from the site).<p>If you disable this setting, it turns off Windows Defender SmartScreen and your employees are unable to turn it on.<p>If you don't configure this setting, your employees can decide whether to use Windows Defender SmartScreen.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure App Install Control</td>
<td>Windows 10, version 1703</td>
<td>This setting helps protect PCs by allowing users to install apps only from the Microsoft Store. SmartScreen must be enabled for this feature to work properly.<p>If you enable this setting, your employees can only install apps from the Microsoft Store.<p>If you disable this setting, your employees can install apps from anywhere, including as a download from the Internet.<p>If you don't configure this setting, your employees can choose whether they can install from anywhere or only from Microsoft Store.</td>
</tr>
<tr>
<td><strong>Windows 10, version 1703:</strong><br>Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Configure Windows Defender SmartScreen<p><strong>Windows 10, Version 1607 and earlier:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Configure Windows SmartScreen</td>
<td>Microsoft Edge on Windows 10 or later</td>
<td>This policy setting turns on Windows Defender SmartScreen.<p>If you enable this setting, it turns on Windows Defender SmartScreen and your employees are unable to turn it off.<p>If you disable this setting, it turns off Windows Defender SmartScreen and your employees are unable to turn it on.<p>If you don't configure this setting, your employees can decide whether to use Windows Defender SmartScreen.</td>
</tr>
<tr>
<td><strong>Windows 10, version 1703:</strong><br>Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files<p><strong>Windows 10, Version 1511 and 1607:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows SmartScreen prompts for files</td>
<td>Microsoft Edge on Windows 10, version 1511 or later</td>
<td>This policy setting stops employees from bypassing the Windows Defender SmartScreen warnings about potentially malicious files.<p>If you enable this setting, it stops employees from bypassing the warning, stopping the file download.<p>If you disable or don't configure this setting, your employees can bypass the warnings and continue to download potentially malicious files.</td>
</tr>
<tr>
<td><strong>Windows 10, version 1703:</strong><br>Administrative Templates\Windows Components\Windows Defender SmartScreen\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites<p><strong>Windows 10, Version 1511 and 1607:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows SmartScreen prompts for sites</td>
<td>Microsoft Edge on Windows 10, version 1511 or later</td>
<td>This policy setting stops employees from bypassing the Windows Defender SmartScreen warnings about potentially malicious sites.<p>If you enable this setting, it stops employees from bypassing the warning, stopping them from going to the site.<p>If you disable or don't configure this setting, your employees can bypass the warnings and continue to visit a potentially malicious site.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Internet Explorer\Prevent managing SmartScreen Filter</td>
<td>Internet Explorer 9 or later</td>
<td>This policy setting prevents the employee from managing SmartScreen Filter.<p>If you enable this policy setting, the employee isn't prompted to turn on SmartScreen Filter. All website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the employee.<p>If you disable or don't configure this policy setting, the employee is prompted to decide whether to turn on SmartScreen Filter during the first-run experience.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Internet Explorer\Prevent bypassing SmartScreen Filter warnings</td>
<td>Internet Explorer 8 or later</td>
<td>This policy setting determines whether an employee can bypass warnings from SmartScreen Filter.<p>If you enable this policy setting, SmartScreen Filter warnings block the employee.<p>If you disable or don't configure this policy setting, the employee can bypass SmartScreen Filter warnings.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Internet Explorer\Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet</td>
<td>Internet Explorer 9 or later</td>
<td>This policy setting determines whether the employee can bypass warnings from SmartScreen Filter. SmartScreen Filter warns the employee about executable files that Internet Explorer users do not commonly download from the Internet.<p>If you enable this policy setting, SmartScreen Filter warnings block the employee.<p>If you disable or don't configure this policy setting, the employee can bypass SmartScreen Filter warnings.</td>
</tr>
</table>

## MDM settings
If you manage your policies using Microsoft Intune, you'll want to use these MDM policy settings. All settings support both desktop computers (running Windows 10 Pro or Windows 10 Enterprise, enrolled with Microsoft Intune) and Windows 10 Mobile devices.  <br><br> 
For SmartScreen Internet Explorer MDM policies, see [Policy CSP - InternetExplorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer).
<table>
<tr>
<th align="left">Setting</th>
<th align="left">Supported versions</th>
<th align="left">Details</th>
</tr>
<tr>
<td>AllowSmartScreen</td>
<td>Windows 10</td>
<td>
<ul>
<li><strong>URI full path.</strong> ./Vendor/MSFT/Policy/Config/Browser/AllowSmartScreen</li>
<li><strong>Data type.</strong> Integer</li>
<li><strong>Allowed values:</strong><ul>
<li><strong>0 .</strong> Turns off Windows Defender SmartScreen in Edge.</li>
<li><strong>1.</strong> Turns on Windows Defender SmartScreen in Edge.</li></ul></li></ul>
</td>
</tr>
<tr>
<td>EnableAppInstallControl</td>
<td>Windows 10, version 1703</td>
<td>
<ul>
<li><strong>URI full path.</strong> ./Vendor/MSFT/Policy/Config/SmartScreen/EnableAppInstallControl</li>
<li><strong>Data type.</strong> Integer</li>
<li><strong>Allowed values:</strong><ul>
<li><strong>0 .</strong> Turns off Application Installation Control, allowing users to download and install files from anywhere on the web.</li>
<li><strong>1.</strong> Turns on Application Installation Control, allowing users to install apps from the Microsoft Store only.</li></ul></li></ul>
</td>
</tr>
<tr>
<td>EnableSmartScreenInShell</td>
<td>Windows 10, version 1703</td>
<td>
<ul>
<li><strong>URI full path.</strong> ./Vendor/MSFT/Policy/Config/SmartScreen/EnableSmartScreenInShell</li>
<li><strong>Data type.</strong> Integer</li>
<li><strong>Allowed values:</strong><ul>
<li><strong>0 .</strong> Turns off SmartScreen in Windows for app and file execution.</li>
<li><strong>1.</strong> Turns on SmartScreen in Windows for app and file execution.</li></ul></li></ul>
</td>
</tr>
<tr>
<td>PreventOverrideForFilesInShell</td>
<td>Windows 10, version 1703</td>
<td>
<ul>
<li><strong>URI full path.</strong> ./Vendor/MSFT/Policy/Config/SmartScreen/PreventOverrideForFilesInShell</li>
<li><strong>Data type.</strong> Integer</li>
<li><strong>Allowed values:</strong><ul>
<li><strong>0 .</strong> Employees can ignore SmartScreen warnings and run malicious files.</li>
<li><strong>1.</strong> Employees can't ignore SmartScreen warnings and run malicious files.</li></ul></li></ul>
</td>
</tr>
<tr>
<td>PreventSmartScreenPromptOverride</td>
<td>Windows 10, Version 1511 and later</td>
<td>
<ul>
<li><strong>URI full path.</strong> ./Vendor/MSFT/Policy/Config/Browser/PreventSmartscreenPromptOverride</li>
<li><strong>Data type.</strong> Integer</li>
<li><strong>Allowed values:</strong><ul>
<li><strong>0 .</strong> Employees can ignore SmartScreen warnings.</li>
<li><strong>1.</strong> Employees can't ignore SmartScreen warnings.</li></ul></li></ul>
</td>
</tr>
<tr>
<td>PreventSmartScreenPromptOverrideForFiles</td>
<td>Windows 10, Version 1511 and later</td>
<td>
<ul>
<li><strong>URI full path.</strong> ./Vendor/MSFT/Policy/Config/Browser/PreventSmartScreenPromptOverrideForFiles</li>
<li><strong>Data type.</strong> Integer</li>
<li><strong>Allowed values:</strong><ul>
<li><strong>0 .</strong> Employees can ignore SmartScreen warnings for files.</li>
<li><strong>1.</strong> Employees can't ignore SmartScreen warnings for files.</li></ul></li></ul>
</td>
</tr>
</table>

## Recommended Group Policy and MDM settings for your organization
By default, Windows Defender SmartScreen lets employees bypass warnings. Unfortunately, this can let employees continue to an unsafe site or to continue to download an unsafe file, even after being warned. Because of this possibility, we strongly recommend that you set up Windows Defender SmartScreen to block high-risk interactions instead of providing just a warning.

To better help you protect your organization, we recommend turning on and using these specific Windows Defender SmartScreen Group Policy and MDM settings.
<table>
<tr>
<th align="left">Group Policy setting</th>
<th align="left">Recommendation</th>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Microsoft Edge\Configure Windows Defender SmartScreen</td>
<td><strong>Enable.</strong> Turns on Windows Defender SmartScreen.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites</td>
<td><strong>Enable.</strong> Stops employees from ignoring warning messages and continuing to a potentially malicious website.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files</td>
<td><strong>Enable.</strong> Stops employees from ingnoring warning messages and continuing to download potentially malicious files.</td>
</tr>
<tr>
<td>Administrative Templates\Windows Components\File Explorer\Configure Windows Defender SmartScreen</td>
<td><strong>Enable with the Warn and prevent bypass option.</strong> Stops employees from ignoring warning messages about malicious files downloaded from the Internet.</td>
</tr>
</table>
<p>
<table>
<tr>
<th align="left">MDM setting</th>
<th align="left">Recommendation</th>
</tr>
<tr>
<td>Browser/AllowSmartScreen</td>
<td><strong>1.</strong> Turns on Windows Defender SmartScreen.</td>
</tr>
<tr>
<td>Browser/PreventSmartScreenPromptOverride</td>
<td><strong>1.</strong> Stops employees from ignoring warning messages and continuing to a potentially malicious website.</td>
</tr>
<tr>
<td>Browser/PreventSmartScreenPromptOverrideForFiles</td>
<td><strong>1.</strong> Stops employees from ingnoring warning messages and continuing to download potentially malicious files.</td>
</tr>
<tr>
<td>SmartScreen/EnableSmartScreenInShell</td>
<td><strong>1.</strong> Turns on Windows Defender SmartScreen in Windows.<p>Requires at least Windows 10, version 1703.</td>
</tr>
<tr>
<td>SmartScreen/PreventOverrideForFilesInShell</td>
<td><strong>1.</strong> Stops employees from ignoring warning messages about malicious files downloaded from the Internet.<p>Requires at least Windows 10, version 1703.</td>
</tr>
</table> 

## Related topics
- [Threat protection](../index.md)

- [Windows Defender SmartScreen overview](windows-defender-smartscreen-overview.md)

- [Available Group Policy and Mobile Device Management (MDM) settings for Microsoft Edge](/microsoft-edge/deploy/available-policies)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
