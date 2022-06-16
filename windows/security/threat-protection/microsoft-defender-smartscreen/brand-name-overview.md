---
title: [Phishing sensors] overview (Windows)
description: Learn how [Brand name] helps protect Microsoft school or work passwords against phishing and unsafe usage on sites and apps.
ms.prod: m365-security
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: vmathavale
ms.author: vmathavale
audience: IT Admin
ms.localizationpriority: medium
ms.date: 06/16/2022
ms.reviewer: 
manager: dansimp
ms.technology: windows-sec
adobe-target: true
---

# [Brand Name] 

**Applies to:**

- Windows 11

[Brand name] helps protect Microsoft school or work passwords against phishing and unsafe usage on sites and apps.   

**[Brand name] protects work or school passwords on Windows 11 by:**

- Analyzing visited webpages and apps connecting to URLs, looking for indications of suspicious behavior, and checking the visited sites against a dynamic list of reported phishing sites. If [brand name] determines that a page the user has just typed their password into is suspicious or matches an entry in the list, it shows a warning to let the user know that the site may be malicious and offers the user the opportunity to change their password. 

- Determining whether a user has reused their work or school password on a non-phishing site. If [brand name] determines a user has just reused their password, it shows a warning to let the user know that password reuse is dangerous and offers them the opportunity to change their password so that attackers cannot break into multiple accounts using one password. 
 
- Observing whether a user has typed their password into a text editor app like Word, Notepad, Office apps, etc. If [brand name] determines that a user has stored their password in a text editor app, it shows a warning to let the user know it’s unsafe to store their plaintext password and recommends the users to delete their password from the file. 

## Benefits of [Brand name]

[Brand name] provides robust phishing protections for work or school passwords that are used to sign into Windows 11. The primary benefits are: 

- **Anti-phishing support:** Phishing attacks can easily trick users through convincing imitations of safe content or credential harvesting content inside trusted applications like browsers and chat. [Brand name] helps to protect users from sites that are reported to host phishing attacks by evaluating a website’s URL and other characteristics to determine if they’re known to distribute or host unsafe content.  
 
- **Secure operating system integration:** [Brand name] is integrated directly into the Windows 11 operating system. Thus, it has insights into what is happening (including process connections, URLs, certificate information, etc.) when a user interacts with content, including first and third party browsers and applications. Because [brand name] has unparalleled insight into what is happening at the OS level, it can identify when users use their work or school password unsafely. Such an alert empowers users to protect themselves by changing their password before that compromised credential is weaponized against them.

- **Unparalleled telemetry working with other security suite:** [Brand name] is constantly learning from phishing attacks seen throughout the entire security suite, including sources like Microsoft SmartScreen and Microsoft Defender for Endpoint. [Brand name] stays up to date and works well with other Microsoft security products in a layered approach to password security, especially as an interim protection solution for enterprises transitioning to passwordless.  

- **Management through Group Policy and Microsoft Intune:** [Brand name] works with Intune, Group Policy, and mobile device management (MDM) settings to help you manage your organization’s computer settings. Based on how you set up [brand name], you can show employees a warning dialog for particular protection scenarios, for all protection scenarios, or for no protection scenarios.  

## Configure [brand name] for your organization

### Group Policy settings 
[Brand name] uses registry-based Administrative Template policy settings supported only on Windows 11.  


|Setting   |Description   |
|---------|---------|
|Administrative Templates\Windows Components\... (Service Enabled)|This policy setting determines whether [brand name] is in audit mode or off. Users do not see any notifications for any protection scenarios when [brand name] is in audit mode. When in audit mode [brand name] captures unsafe password entry events and sends telemetry through Microsoft Defender.<br><br>If you enable this policy setting or don’t configure this setting, [brand name] is enabled in audit mode and your users are unable to turn it off.<br><br> If you disable this policy setting, [brand name] is off. When off, [brand name] does not capture events, send telemetry, or notify users. Additionally, your users are unable to turn it on.|
|Administrative Templates\Windows Components\... (Notify Malicious) |This policy setting determines whether [brand name] warns your users if they type their work or school password into one of the following malicious scenarios: into a reported phishing site, into a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate.<br><br> If you enable this policy setting, [brand name] warns your users when they type their work or school password into one of the malicious scenarios described above and encourages them to change their password.<br><br> If you disable or don’t configure this policy setting, [brand name] will not warn your users if they type their work or school password into one of the malicious scenarios described above.|
|Administrative Templates\Windows Components\... (Notify Password Reuse) | This policy setting determines whether [brand name] warns your users if they reuse their work or school password.<br><br> If you enable this policy setting, [brand name] warns users if they reuse their work or school password and encourages them to change it.<br><br> If you disable or don’t configure this policy setting, [brand name] will not warn users if they reuse their work or school password.|
|Administrative Templates\Windows Components\... (Notify Unsafe App) |This policy setting determines whether [brand name] warns your users if they type their work or school passwords in text editor apps like OneNote, Word, Notepad, etc.<br><br> If you enable this policy setting, [brand name] warns your users if they store their password in text editor apps.<br><br> If you disable or don’t configure this policy setting, [brand name] will not warn users if they store their password in text editor apps. |

### MDM settings  
If you manage your policies using Microsoft Intune, you’ll want to use these MDM policy settings. All settings support desktop computers running Windows 11, enrolled with Microsoft Intune. 

|Setting   |Details   |
|---------|---------|
|ServiceEnabled |<li>**URI full path:** ./Vendor/MSFT/Policy/Config/… <li> **Data Type:** Integer <li> **Allowed values:**<ul><li> **0**: Turns off [brand name].<li> **1**: Turns on [brand name] in audit mode, which captures work or school password entry events and sends telemetry but does not show any notifications to your users. |
|NotifyMalicious |<li>**URI full path:** ./Vendor/MSFT/Policy/Config/…<li> **Data type:** Integer <li>**Allowed values:**<ul><li> **0**: Turns off [brand name] notifications when users type their work or school password into one of the following malicious scenarios: a reported phishing site, a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate.<li> **1**: Turns on [brand name] notifications when users type their work or school password into one of the previously described malicious scenarios and encourages them to change their password. |
|NotifyPasswordReuse  |<li> **URI full path:** ./Vendor/MSFT/Policy/Config/… <li> **Data type:** Integer <li> **Allowed values:** <ul><li> **0**: Turns off [brand name] notifications when users reuse their work or school password. <li> **1**: Turns on [brand name] notifications when users reuse their work or school password and encourages them to change their password. |
|NotifyUnsafeApp  |<li>**URI full path:** ./Vendor/MSFT/Policy/Config/… <li> **Data type:** Integer <li> **Allowed values:** <ul><li> **0**: Turns off [brand name] notifications when users type their work or school passwords in text editor apps like OneNote, Word, Notepad, etc. <li> **1**: Turns on [brand name] notifications when users type their work or school passwords in text editor apps. |

### Recommended Group Policy and MDM settings for your organization 
By default [brand name] is deployed on Windows 11 devices in audit mode, which means that users do not see any notifications for any protection scenarios. In audit mode, [brand name] only captures unsafe password entry events and sends telemetry through Microsoft Defender. Unfortunately, this means that users are not warned if they enter their work or school password into a phishing site, if they reuse their password, or if they unsafely store their password in apps. Because of this possibility, we strongly recommend that you set up [brand name] to warn users during all protection scenarios.  

To better help you protect your organization, we recommend turning on and using the following specific Microsoft Defender SmartScreen Group Policy and MDM settings:

|Group Policy setting   |Recommendation  |
|---------|---------|
|Administrative Templates\Windows Components\... (Service Enabled) | **Enable**: [Brand name] is enabled in audit mode and your users are unable to turn it off. |
|Administrative Templates\Windows Components\... (Notify Malicious) |**Enable**: [Brand name] warns your users if they type their work or school password into one of the following malicious scenarios and encourages them to change their password: into a reported phishing site, into a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate. |
|Administrative Templates\Windows Components\... (Password Reuse) |**Enable**: [Brand name] warns users if they reuse their work or school password and encourages them to change it. |
|Administrative Templates\Windows Components\... (Notify Unsafe App) |**Enable**: [Brand name] warns your users if they store their password in text editor apps. |
  
|MDM setting   |Recommendation   |
|---------|---------|
|ServiceEnabled |**1**: Turns on [brand name] in audit mode, which captures work or school password entry events and sends telemetry but does not show any notifications to your users. |
|NotifyMalicious |**1**: Turns on [brand name] notifications when users type their work or school password into one of the previously described malicious scenarios and encourages them to change their password. |
|NotifyPasswordReuse |**1**: Turns on [brand name] notifications when users reuse their work or school password and encourages them to change their password. |
|NotifyUnsafeApp |**1**: Turns on [brand name] notifications when users type their work or school passwords in text editor apps.|

## Related topics
- [Microsoft Defender SmartScreen](microsoft-defender-smartscreen-overview.md)
- [SmartScreen Frequently Asked Questions](https://fb.smartscreen.microsoft.com/smartscreenfaq.aspx)
- [Threat protection](../index.md)
- [Available Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings](/windows/security/threat-protection/windows-defender-smartscreen/windows-defender-smartscreen-available-settings)
- [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference.md#configuration-service-provider-reference)