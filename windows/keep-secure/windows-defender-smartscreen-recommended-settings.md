---
title: Recommended settings using Windows Defender SmartScreen in your organization (Windows 10)
description: A list of the Windows Defender SmartScreen settings we recommend using within your organization.
keywords: SmartScreen Filter, Windows SmartScreen
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: eross-msft
localizationpriority: high
---

# Recommended settings using Windows Defender SmartScreen in your organization

**Applies to:**
- Windows 10, Version 1703
- Windows 10 Mobile

By default, Windows Defender SmartScreen lets employees bypass warnings. Unfortunately, this can let employees continue to an unsafe site or to continue to download an unsafe file, even after being warned. Because of this possibility, we strongly recommend that you set up Windows Defender SmartScreen to block high-risk interactions instead of providing just a warning.

To better help you protect your organization, we recommend using these Windows Defender SmartScreen Group Policy and mobile device management (MDM) settings.

<table>
    <tr>
        <th>Group Policy setting</th>
        <th>Recommendation</th>
    </tr>
    <tr>
        <td>Administrative Templates\Windows Components\Microsoft Edge\Configure Windows Defender SmartScreen</td>
        <td>Enable.<br>Turns on Windows Defender SmartScreen.</td>
    </tr>
    <tr>
        <td>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for sites</td>
        <td>Enable.<br>Stops employees from ignoring warning messages and continuing on to a potentially malicious website.</td>
    </tr>
    <tr>
        <td>Administrative Templates\Windows Components\Microsoft Edge\Prevent bypassing Windows Defender SmartScreen prompts for files</td>
        <td>Enable.<br>Stops employees from ingnoring warning messages and continuing to download potentially malicious files.</td>
    </tr>
    <tr>
        <td>Administrative Templates\Windows Components\File Explorer\Configure Windows Defender SmartScreen</td>
        <td>Enable with the Warn and prevent bypass option.<br>Stops employees from ignoring warning messages about malicious files downloaded from the Internet.</td>
    </tr>
</table>

<table>
    <tr>
        <th>MDM setting</th>
        <th>Recommendation</th>
    </tr>
    <tr>
        <td>Browser/AllowSmartScreen</td>
        <td>1.<br>Turns on Windows Defender SmartScreen.</td>
    </tr>
    <tr>
        <td>Browser/PreventSmartScreenPromptOverride</td>
        <td>1.<br>Stops employees from ignoring warning messages and continuing on to a potentially malicious website.</td>
    </tr>
    <tr>
        <td>Browser/PreventSmartScreenPromptOverrideForFiles</td>
        <td>1.<br>Stops employees from ingnoring warning messages and continuing to download potentially malicious files.</td>
    </tr>
    <tr>
        <td>SmartScreen/EnableSmartScreenInShell</td>
        <td>1. Turns on Windows Defender SmartScreen in Windows.<p>Requires at least Windows 10, Version 1703.</td>
    </tr>
    <tr>
        <td>SmartScreen/PreventOverrideForFilesInShell</td>
        <td>1.<br>Stops employees from ignoring warning messages about malicious files downloaded from the Internet.<p>Requires at least Windows 10, Version 1703.</td>
    </tr>
</table> 

## Related topics
- [Keep Windows 10 secure](https://technet.microsoft.com/itpro/windows/keep-secure/index)

- [Security technologies in Windows 10](https://technet.microsoft.com/itpro/windows/keep-secure/security-technologies)

- [Available Group Policy and Mobile Data Management (MDM) settings for Microsoft Edge](https://technet.microsoft.com/itpro/microsoft-edge/available-policies)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).