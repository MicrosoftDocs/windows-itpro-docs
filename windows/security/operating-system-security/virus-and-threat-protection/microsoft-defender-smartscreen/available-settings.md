---
title: Available Microsoft Defender SmartScreen settings
description: A list of all available settings for Microsoft Defender SmartScreen using Group Policy and mobile device management (MDM) settings.
ms.date: 07/10/2024
ms.topic: reference
---

# Available Microsoft Defender SmartScreen settings

Microsoft Defender SmartScreen works with Intune, Group Policy, and mobile device management (MDM) settings to help you manage your organization's computer settings. Based on how you set up Microsoft Defender SmartScreen, you can show users a warning page and let them continue to the site, or you can block the site entirely.

See [Windows settings to protect devices using Intune](/intune/endpoint-protection-windows-10#windows-defender-smartscreen-settings) for the controls you can use in Intune.

> [!NOTE]
> For a list of settings available for Enhanced phishing protection, see [Enhanced phishing protection](enhanced-phishing-protection.md#configure-enhanced-phishing-protection-for-your-organization).

## Group Policy settings

SmartScreen uses registry-based Administrative Template policy settings.

|Setting|Description|
|---|--- |
|Administrative Templates > Windows Components > Windows Defender SmartScreen > Explorer > Configure Windows Defender SmartScreen | This policy setting turns on Microsoft Defender SmartScreen. <br/><br/>If you enable this setting, it turns on Microsoft Defender SmartScreen and your users are unable to turn it off. Additionally, when enabling this feature, you must also pick whether Microsoft Defender SmartScreen should Warn your users or Warn and prevent bypassing the message (effectively blocking the user from the site).<br/><br/>If you disable this setting, it turns off Microsoft Defender SmartScreen and your users are unable to turn it on. <br/><br/>If you don't configure this setting, your users can decide whether to use Microsoft Defender SmartScreen.|
|Administrative Templates > Windows Components > Windows Defender SmartScreen > Explorer > Configure App Install Control| This policy setting is intended to prevent malicious content from affecting your user's devices when downloading executable content from the internet.<br/><br/>This setting doesn't protect against malicious content from USB devices, network shares, or other non-internet sources.<br/><br/>**Important:**  Using a trustworthy browser helps ensure that these protections work as expected.|
|Administrative Templates > Windows Components > Windows Defender SmartScreen > Microsoft Edge > Configure Windows Defender SmartScreen | This policy setting lets you configure whether to turn on Windows Defender SmartScreen. Windows Defender SmartScreen provides warning messages to help protect your users from potential phishing scams and malicious software. By default, Windows Defender SmartScreen is turned on. <br><br>If you enable this setting, Windows Defender SmartScreen is turned on, and users can't turn it off. <br><br>If you disable this setting, Windows Defender SmartScreen is turned off, and users can't turn it on. <br><br>If you don't configure this setting, users can choose whether to use Windows Defender SmartScreen. |
|Administrative Templates > Windows Components > Windows Defender SmartScreen > Microsoft Edge > Prevent bypassing Windows Defender SmartScreen prompts for sites | This policy setting lets you decide whether users can override the Windows Defender SmartScreen warnings about potentially malicious websites. <br><br>If you enable this setting, users can't ignore Windows Defender SmartScreen warnings and they're blocked from continuing to the site. <br><br>If you disable or don't configure this setting, users can ignore Windows Defender SmartScreen warnings and continue to the site. |

## MDM settings

If you manage your policies using Microsoft Intune, use these MDM policy settings. All settings support desktop computers running Windows 10/11 Pro or Windows 10/11 Enterprise, enrolled with Microsoft Intune.

- [AllowSmartScreen](/windows/client-management/mdm/policy-csp-browser#allowsmartscreen)
- [EnableAppInstallControl](/windows/client-management/mdm/policy-csp-smartscreen#enableappinstallcontrol)
- [EnableSmartScreenInShell](/windows/client-management/mdm/policy-csp-smartscreen#enablesmartscreeninshell)
- [PreventOverrideForFilesInShell](/windows/client-management/mdm/policy-csp-smartscreen#preventoverrideforfilesinshell)
- [PreventSmartScreenPromptOverride](/windows/client-management/mdm/policy-csp-browser#preventsmartscreenpromptoverride)
- [PreventSmartScreenPromptOverrideForFiles](/windows/client-management/mdm/policy-csp-browser#preventsmartscreenpromptoverrideforfiles)

## Recommended Group Policy and MDM settings for your organization

By default, Microsoft Defender SmartScreen lets users bypass warnings. Unfortunately, this feature can let users continue to an unsafe site or to continue to download an unsafe file, even after being warned. Because of this possibility, we strongly recommend that you set up Microsoft Defender SmartScreen to block high-risk interactions instead of providing just a warning.

To better help you protect your organization, we recommend turning on and using these specific Microsoft Defender SmartScreen Group Policy and MDM settings.

|Group Policy setting|Recommendation|
|--- |--- |
|Administrative Templates > Windows Components > Microsoft Edge > Configure Windows Defender SmartScreen|**Enable.**  Turns on Microsoft Defender SmartScreen.|
|Administrative Templates > Windows Components > Microsoft Edge > Prevent bypassing Windows Defender SmartScreen prompts for sites|**Enable.**  Stops users from ignoring warning messages and continuing to a potentially malicious website.|
|Administrative Templates > Windows Components > Explorer > Configure Windows Defender SmartScreen|**Enable with the Warn and prevent bypass option.**  Stops users from ignoring warning messages about malicious files downloaded from the Internet.|

|MDM setting|Recommendation|
|--- |--- |
|Browser/AllowSmartScreen|**1.**  Turns on Microsoft Defender SmartScreen.|
|Browser/PreventSmartScreenPromptOverride|**1.**  Stops users from ignoring warning messages and continuing to a potentially malicious website.|
|Browser/PreventSmartScreenPromptOverrideForFiles|**1.**  Stops users from ignoring warning messages and continuing to download potentially malicious files.|
|SmartScreen/EnableSmartScreenInShell|**1.**  Turns on Microsoft Defender SmartScreen in Windows.<br/><br/>Requires at least Windows 10, version 1703.|
|SmartScreen/PreventOverrideForFilesInShell|**1.**  Stops users from ignoring warning messages about malicious files downloaded from the Internet.<br/><br/>Requires at least Windows 10, version 1703.|
