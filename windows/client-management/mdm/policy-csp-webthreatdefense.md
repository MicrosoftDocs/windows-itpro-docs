---
title: Policy CSP - WebThreatDefense
description: Learn about the Policy CSP - WebThreatDefense.
ms.author: v-aljupudi
ms.topic: article
ms.prod: w10
ms.technology: windows
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
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--Policy-->
<a href="" id="webthreatdefense-enableservice"></a>**WebThreatDefense/EnableService**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy protects user's password from being stolen or used unsafely in apps and web-sites. By enabling this feature, one can control "Phishing protection" on user machine:

- Enterprise admins to turn off the feature for all users.
- Enterprise admins to turn on the feature for all users.
- Enterprise admins to have Phishing Sensors show UX to end-users for password entry on malicious content (first checkbox).
- Enterprise admins to have Phishing Sensors show UX to end-users for password entry on malicious content AND unsafe password entry (first and second checkbox checked) - this is default for enterprise admins when the feature is on.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Configure Web Threat Defense*
-   GP name: *EnableWebThreatDefenseService*
-   GP path: *Windows Security\App & bowser control\Reputation-based protection\Phishing protections*
-   GP ADMX file name: *WebThreatDefense.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>