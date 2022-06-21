---
title: Enhanced Phishing Protection in Microsoft Defender SmartScreen 
description: Learn how Enhanced Phishing Protection for Microsoft Defender SmartScreen helps protect Microsoft school or work passwords against phishing and unsafe usage on sites and apps.
ms.prod: m365-security
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: v-mathavale
ms.author: v-mathavale
audience: IT Admin
ms.localizationpriority: medium
ms.date: 06/21/2022
ms.reviewer: 
manager: dansimp
ms.technology: windows-sec
adobe-target: true
---

# Enhanced Phishing Protection in Microsoft Defender SmartScreen  

**Applies to:**

- Windows 11

Concerned about your users accidentally typing passwords into a malicious site or app pretending to be safe? Enhanced Phishing Protection in Microsoft Defender SmartScreen helps protect Microsoft school or work passwords against phishing and unsafe usage on sites and apps connecting to those sites.    

Enhanced Phishing Protection works alongside Windows security protections and helps protect typed work or school passwords used to sign into Windows 11 in three ways:  

- If a user types their Microsoft account password on any browser into a site deemed malicious by Microsoft Defender SmartScreen, Enhanced Phishing Protection for Microsoft Defender SmartScreen will alert them. It will also prompt them to change their password so attackers can’t gain access to their account.  

- Reusing work or school passwords on other sites makes it easy for attackers who compromise user’s password to gain access to their other accounts. Enhanced Phishing Protection can warn users if they reuse their Microsoft account password on other sites or apps and prompt them to change their password.  

- Since it’s unsafe to store plaintext passwords in text editors, Enhanced Phishing Protection can warn users if they store their password in Notepad, Winword, or any M365 Office app and recommends them to delete their password from the file. 
  

## Benefits of Enhanced Phishing Protection in Microsoft Defender SmartScreen 

Enhanced Phishing Protection provides robust phishing protections for work or school passwords that are used to sign into Windows 11. Arm your users against credential phishing scams and enjoy: 

**Anti-phishing support:** Phishing attacks trick users through convincing imitations of safe content or through credential harvesting content hosted inside trusted sites and applications. Enhanced Phishing Protection helps protect users from reported phishing sites by evaluating a website’s URLs and other characteristics to determine if they’re known to distribute or host unsafe content.  
 
**Secure operating system integration:** Enhanced Phishing Protection is integrated directly into the Windows 11 operating system, so it can understand users’ password entry context (including process connections, URLs, certificate information, etc.) in any browser or app. Because Enhanced Phishing Protection has unparalleled insight into what is happening at the OS level, it can identify when users type their work or school password unsafely. If users do use their work or school password unsafely, the feature empowers users to change their password to minimize the chances of their compromised credential being weaponized against them.   
 
**Unparalleled telemetry shared throughout Microsoft’s security suite:** Enhanced Phishing Protection is constantly learning from phishing attacks seen throughout the entire Microsoft security stack and works alongside other Microsoft security products to provide a layered approach to password security. This solution is also a perfect way to protect lingering passwords while enterprises progress in their password less authentication journey. If your organization uses Microsoft Defender for Endpoint, you’ll be able to see valuable phishing sensors data in the M365D Portal. This enables you to view Enhanced Phishing Protection alerts and reports for unsafe password usage in your environment.  

**Easy management through Group Policy and Microsoft Intune:** Enhanced Phishing Protection works with Intune, Group Policy, and mobile device management (MDM) settings to help you manage your organization’s computer settings. Based on how you set up Enhanced Phishing Protection, you can customize which phishing protection scenarios will show users warning dialogs.    

## Configure Enhanced Phishing Protection for your organization 

### Group Policy settings 
Enhanced Phishing Protection uses registry-based Administrative Template policy settings supported only on Windows 11.   

|Setting   |Description   |
|---------|---------|
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Service Enabled |This policy setting determines whether Enhanced Phishing Protection is in audit mode or off. Users don't see any notifications for any protection scenarios when Enhanced Phishing Protection is in audit mode. When in audit mode Enhanced Phishing Protection captures unsafe password entry events and sends telemetry through Microsoft Defender.<br><br> If you enable this policy setting or don’t configure this setting, Enhanced Phishing Protection is enabled in audit mode and your users are unable to turn it off.<br><br> If you disable this policy setting, Enhanced Phishing Protection is off. When off, Enhanced Phishing Protection doesn't capture events, send telemetry, or notify users. Additionally, your users are unable to turn it on.|
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Notify Malicious|This policy setting determines whether Enhanced Phishing Protection warns your users if they type their work or school password into one of the following malicious scenarios: into a reported phishing site, into a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate.<br><br> If you enable this policy setting, Enhanced Phishing Protection warns your users if they type their work or school password into one of the malicious scenarios described above and encourages them to change their password. <br><br>If you disable or don’t configure this policy setting, Enhanced Phishing Protection won't warn your users if they type their work or school password into one of the malicious scenarios described above.|
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Notify Password Reuse |This policy setting determines whether Enhanced Phishing Protection warns your users if they reuse their work or school password.<br><br> If you enable this policy setting, Enhanced Phishing Protection warns users if they reuse their work or school password and encourages them to change it. <br><br> If you disable or don’t configure this policy setting, Enhanced Phishing Protection won't warn users if they reuse their work or school password.|
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Notify Unsafe App|This policy setting determines whether Enhanced Phishing Protection warns your users if they type their work or school passwords in text editor apps like OneNote, Word, Notepad, etc.<br><br> If you enable this policy setting, Enhanced Phishing Protection warns your users if they store their password in text editor apps.<br> <br> If you disable or don’t configure this policy setting, Enhanced Phishing Protection won't warn users if they store their password in text editor apps.|

### MDM settings  
If you manage your policies using Microsoft Intune, you’ll want to use these MDM policy settings. All settings support desktop computers running Windows 11, enrolled with Microsoft Intune. 

|Setting   |Details   |
|---------|---------|
|ServiceEnabled |<li>**URI full path:** ./Vendor/MSFT/Policy/Config/… <li> **Data Type:** Integer <li> **Allowed values:**<ul><li> **0**: Turns off Enhanced Phishing Protection. <li> **1**: Turns on Enhanced Phishing Protection in audit mode, which captures work or school password entry events and sends telemetry but doesn't show any notifications to your users.|
|NotifyMalicious |<li>**URI full path:** ./Vendor/MSFT/Policy/Config/…<li> **Data type:** Integer <li>**Allowed values:**<ul><li> **0**: Turns off Enhanced Phishing Protection notifications when users type their work or school password into one of the following malicious scenarios: a reported phishing site, a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate. <li> **1**: Turns on Enhanced Phishing Protection notifications when users type their work or school password into one of the previously described malicious scenarios and encourages them to change their password. |
|NotifyPasswordReuse  |<li> **URI full path:** ./Vendor/MSFT/Policy/Config/… <li> **Data type:** Integer <li> **Allowed values:** <ul><li> **0**: Turns off Enhanced Phishing Protection notifications when users reuse their work or school password.  <li> **1**: Turns on Enhanced Phishing Protection notifications when users reuse their work or school password and encourages them to change their password.|
|NotifyUnsafeApp  |<li>**URI full path:** ./Vendor/MSFT/Policy/Config/… <li> **Data type:** Integer <li> **Allowed values:** <ul><li> **0**: Turns off Enhanced Phishing Protection notifications when users type their work or school passwords in text editor apps like OneNote, Word, Notepad, etc. <li> **1**: Turns on Enhanced Phishing Protection notifications when users type their work or school passwords in text editor apps.|

### Recommended Group Policy and MDM settings for your organization 
By default Enhanced Phishing Protection is deployed on Windows 11 devices in audit mode, which means that users don't see any notifications for any protection scenarios. In audit mode, Enhanced Phishing Protection only captures unsafe password entry events and sends telemetry through Microsoft Defender. Unfortunately, this means that users aren't warned if they enter their work or school password into a phishing site, if they reuse their password, or if they unsafely store their password in apps. Because of this possibility, we strongly recommend that you set up Enhanced Phishing Protection to warn users during all protection scenarios.  

To better help you protect your organization, we recommend turning on and using these specific Microsoft Defender SmartScreen Group Policy and MDM settings. 

|Group Policy setting   |Recommendation  |
|---------|---------|
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Service Enabled  | **Enable**: Enhanced Phishing Protection is enabled in audit mode and your users are unable to turn it off. |
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Notify Malicious  |**Enable**: Enhanced Phishing Protection warns your users if they type their work or school password into one of the following malicious scenarios and encourages them to change their password: into a reported phishing site, into a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate.  |
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Notify Password Reuse |**Enable**: Enhanced Phishing Protection warns users if they reuse their work or school password and encourages them to change it.|
|Administrative Templates\Windows Components\Windows Defender SmartScreen\Enhanced Phishing Protection\Notify Unsafe App |**Enable**: Enhanced Phishing Protection warns users if they store their password in text editor apps.|
  
|MDM setting   |Recommendation   |
|---------|---------|
|ServiceEnabled  |**1**: Turns on Enhanced Phishing Protection in audit mode, which captures work or school password entry events and sends telemetry but doesn't show any notifications to your users.|
|NotifyMalicious |**1**: Turns on Enhanced Phishing Protection notifications when users type their work or school password into one of the previously described malicious scenarios and encourages them to change their password. |
|NotifyPasswordReuse |**1**: Turns on Enhanced Phishing Protection notifications when users reuse their work or school password and encourages them to change their password.|
|NotifyUnsafeApp |**1**: Turns on Enhanced Phishing Protection notifications when users type their work or school passwords in text editor apps.|

## Related articles
- [Microsoft Defender SmartScreen](microsoft-defender-smartscreen-overview.md)
- [SmartScreen Frequently Asked Questions](https://fb.smartscreen.microsoft.com/smartscreenfaq.aspx)
- [Threat protection](../index.md)
- [Available Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings](microsoft-defender-smartscreen-available-settings.md)
- [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference.md#configuration-service-provider-reference)