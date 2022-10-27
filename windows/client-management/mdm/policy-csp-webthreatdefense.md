---
title: Policy CSP - WebThreatDefense
description: Learn about the Policy CSP - WebThreatDefense.
ms.author: v-aljupudi
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: alekyaj
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - WebThreatDefense


<hr/>

<!--Policies-->
## WebThreatDefense policies

<dl>
  <dd>
    <a href="#webthreatdefense-enableservice">WebThreatDefense/EnableService</a>
  </dd>
  <dd>
    <a href="#webthreatdefense-notifymalicious">WebThreatDefense/NotifyMalicious</a>
  </dd>
  <dd>
    <a href="#webthreatdefense-notifypasswordreuse">WebThreatDefense/NotifyPasswordReuse</a>
  </dd>
  <dd>
    <a href="#webthreatdefense-notifyunsafeapp">WebThreatDefense/NotifyUnsafeApp</a>
  </dd>
</dl>

>[!NOTE]
>In Microsoft Intune, this CSP is under the “Enhanced Phishing Protection” category.

<!--Policy-->
<a href="" id="webthreatdefense-enableservice"></a>**WebThreatDefense/EnableService**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|Yes|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting determines whether Enhanced Phishing Protection is in audit mode or off. Users don't see any notifications for any protection scenarios when Enhanced Phishing Protection is in audit mode. When in audit mode, Enhanced Phishing Protection captures unsafe password entry events and sends telemetry through Microsoft Defender.

If you enable this policy setting or don’t configure this setting, Enhanced Phishing Protection is enabled in audit mode, and your users are unable to turn it off.

If you disable this policy setting, Enhanced Phishing Protection is off. When off, Enhanced Phishing Protection doesn't capture events, send telemetry, or notify users. Additionally, your users are unable to turn it on.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Web Threat Defense*
-   GP name: *EnableWebThreatDefenseService*
-   GP path: *Windows Security\App & browser control\Reputation-based protection\Phishing protections*
-   GP ADMX file name: *WebThreatDefense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-	0: Turns off Enhanced Phishing Protection.
-	1: Turns on Enhanced Phishing Protection in audit mode, which captures work or school password entry events and sends telemetry but doesn't show any notifications to your users.


<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="webthreatdefense-notifymalicious"></a>**WebThreatDefense/NotifyMalicious**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|Yes|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting determines whether Enhanced Phishing Protection warns your users if they type their work or school password into one of the following malicious scenarios: into a reported phishing site, into a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate.

If you enable this policy setting, Enhanced Phishing Protection warns your users if they type their work or school password into one of the malicious scenarios described above, and encourages them to change their password.

If you disable or don’t configure this policy setting, Enhanced Phishing Protection won't warn your users if they type their work or school password into one of the malicious scenarios described above.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-	0: Turns off Enhanced Phishing Protection notifications when users type their work or school password into one of the following malicious scenarios: a reported phishing site, a login URL with an invalid certificate, or into an application connecting to either a reported phishing site or a login URL with an invalid certificate.
-	1: Turns on Enhanced Phishing Protection notifications when users type their work or school password into one of the previously described malicious scenarios and encourages them to change their password.
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="webthreatdefense-notifypasswordreuse"></a>**WebThreatDefense/NotifyPasswordReuse**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|Yes|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting determines whether Enhanced Phishing Protection warns your users if they reuse their work or school password.

If you enable this policy setting, Enhanced Phishing Protection warns users if they reuse their work or school password and encourages them to change it.

If you disable or don’t configure this policy setting, Enhanced Phishing Protection won't warn users if they reuse their work or school password.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-	0: Turns off Enhanced Phishing Protection notifications when users reuse their work or school password.
-	1: Turns on Enhanced Phishing Protection notifications when users reuse their work or school password and encourages them to change their password.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="webthreatdefense-notifyunsafeapp"></a>**WebThreatDefense/NotifyUnsafeApp**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|Yes|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting determines whether Enhanced Phishing Protection warns your users if they type their work or school passwords in text editor apps like OneNote, Word, Notepad, etc.

If you enable this policy setting, Enhanced Phishing Protection warns your users if they store their password in text editor apps.

If you disable or don’t configure this policy setting, Enhanced Phishing Protection won't warn users if they store their password in text editor apps.
<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-	0: Turns off Enhanced Phishing Protection notifications when users type their work or school passwords in text editor apps like OneNote, Word, Notepad, etc.
-	1: Turns on Enhanced Phishing Protection notifications when users type their work or school passwords in text editor apps.
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)