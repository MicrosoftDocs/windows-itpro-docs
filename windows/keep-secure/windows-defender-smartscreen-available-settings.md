---
title: Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings (Windows 10)
description: A list of all available setttings for Windows Defender SmartScreen using Group Policy and mobile device management (MDM) settings.
keywords: SmartScreen Filter, Windows SmartScreen
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
localizationpriority: high
---

# Available Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings
**Applies to:**

- Windows 10
- Windows 10 Mobile

You can use Group Policy or mobile device management (MDM) settings to set up and manage Windows Defender SmartScreen in your organization.

>[!NOTE]
>To apply your Group Policy setting to all users of a computer, you should use the setting in the Computer Configuration policy. To apply your Group Policy setting to specific users, you should use the setting in the User Configuration policy.

<table>
    <tr>
        <th>Setting</th>
        <th>Supported on</th>
        <th>Description</th>
    </tr>
    <tr>
        <td><strong>Windows 10, Version 1703:</strong><br>Administrative Templates\Windows Components\File Explorer\Configure Windows Defender SmartScreen<p><strong>Windows 10, Version 1607 and earlier:</strong><br>Administrative Templates\Windows Components\File Explorer\Configure Windows SmartScreen</td>
        <td>Windows 10</td>        
        <td>This policy setting turns on Windows Defender SmartScreen.<p>If you enable this setting, it turns on Windows Defender SmartScreen and your employees are unable to turn it off. Additionally when enabling this feature, you must also pick whether SmartScreen should Warn your employees or Warn and prevent bypassing the message (effectively blocking the employee from the site).<p>If you disable this setting, it turns off Windows Defender SmartScreen and your employees are unable to turn it on.<p>If you don't configure this setting (default), your employees can decide whether to use Windows Defender SmartScreen.</td>
    </tr>
    <tr>
        <td>Administrative Templates\Windows Components\Windows Defender SmartScreen\Explorer\Configure App Install Control</td>
        <td>Windows 10, Version 1703</td>        
        <td>This setting helps protect PCs by allowing users to install apps only from the Windows Store. SmartScreen must be enabled for this feature to work properly.<p>If you enable this setting, your employees can only install apps from the Windows Store.<p>If you disable this setting, your employees can install apps from anywhere, including as a download from the Internet.<p>If you don't configure this setting, your employees can choose whether they can install from anywhere or only from Windows Store.</td>
    </tr>
    <tr>
        <td><strong>Windows 10, Version 1703:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Configure Windows Defender SmartScreen<p><strong>Windows 10, Version 1607 and earlier:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Configure Windows SmartScreen</td>
        <td>Windows 10</td>
        <td>This policy setting turns on Windows Defender SmartScreen.<p>If you enable this setting, it turns on Windows Defender SmartScreen and your employees are unable to turn it off.<p>If you disable this setting, it turns off Windows Defender SmartScreen and your employees are unable to turn it on.<p>If you don't configure this setting (default), your employees can decide whether to use Windows Defender SmartScreen.</td>
    </tr>
    <tr>
        <td><strong>Windows 10, Version 1703:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files<p><strong>Windows 10, Version 1511 and 1607:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows SmartScreen prompts for files</td>
        <td>Windows 10</td>
        <td>This policy setting stops employees from bypassing the Windows Defender SmartScreen warnings about potentially malicious files.<p>If you enable this setting, it stops employees from bypassing the warning, stopping the file download.<p>If you disable or don't configure this setting (default), your employees can bypass the warnings and continue to download potentially malicious files.</td>
    </tr>
    <tr>
        <td><strong>Windows 10, Version 1703:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites<p><strong>Windows 10, Version 1511 and 1607:</strong><br>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows SmartScreen prompts for sites</td>
        <td>Windows 10</td>
        <td>This policy setting stops employees from bypassing the Windows Defender SmartScreen warnings about potentially malicious sites.<p>If you enable this setting, it stops employees from bypassing the warning, stopping them from going to the site.<p>If you disable or don't configure this setting (default), your employees can bypass the warnings and continue to visit a potentially malicious site.</td>
    </tr>
    <tr>
        <td><strong>Administrative Templates\Windows Components\Internet Explorer\Prevent managing SmartScreen Filter</td>
        <td>Windows 10</td>
        <td>This policy setting prevents the employee from managing SmartScreen Filter.<p>If you enable this policy setting, the employee isn't prompted to turn on SmartScreen Filter. All website addresses that are not on the filter's allow list are sent automatically to Microsoft without prompting the employee.<p>If you disable or don't configure this policy setting (default), the employee is prompted to decide whether to turn on SmartScreen Filter during the first-run experience.</td>
    </tr>
    <tr>
        <td><td><strong>Administrative Templates\Windows Components\Internet Explorer\Prevent bypassing SmartScreen Filter warnings</td>
        <td>Windows 10</td>
        <td>This policy setting determines whether an employee can bypass warnings from SmartScreen Filter.<p>If you enable this policy setting, SmartScreen Filter warnings block the employee.<p>If you disable or don't configure this policy setting (default), the employee can bypass SmartScreen Filter warnings.</td>
    </tr>
    <tr>
        <td><strong>Administrative Templates\Windows Components\Internet Explorer\Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet</td>
        <td>Windows 10</td>
        <td>This policy setting determines whether the employee can bypass warnings from SmartScreen Filter. SmartScreen Filter warns the employee about executable files that Internet Explorer users do not commonly download from the Internet.<p>If you enable this policy setting, SmartScreen Filter warnings block the employee.<p>If you disable or don't configure this policy setting (default), the employee can bypass SmartScreen Filter warnings.</td>
    </tr>
</table>







 




>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).