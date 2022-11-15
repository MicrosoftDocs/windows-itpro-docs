---
title: Policy CSP - Multitasking
description: Policy CSP - Multitasking
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 10/30/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Multitasking

<hr/>

<!--Policies-->
## Multitasking policies

<dl>
  <dd>
    <a href="#multitasking-browseralttabblowout">Multitasking/BrowserAltTabBlowout</a>
  </dd>
 </dl>

<hr/>

<!--Policy-->
<a href="" id="multitasking-browseralttabblowout"></a>**Multitasking/BrowserAltTabBlowout**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->

> [!Warning]
> This policy is currently in preview mode only and will be supported in future releases. It may be used for testing purposes, but should not be used in a production environment at this time.

This policy controls the inclusion of Edge tabs into Alt+Tab.

Enabling this policy restricts the number of Edge tabs that are allowed to appear in the Alt+Tab switcher. Alt+Tab can be configured to show all open Edge tabs, only the five most recent tabs, only the three most recent tabs, or no tabs. Setting the policy to no tabs configures the Alt+Tab switcher to show app windows only, which is the classic Alt+Tab behavior.

This policy only applies to the Alt+Tab switcher. When the policy isn't enabled, the feature respects the user's setting in the Settings app.
<!--/Description-->

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure the inclusion of Edge tabs into Alt-Tab*
-   GP name: *BrowserAltTabBlowout*
-   GP path: *Windows Components/Multitasking*
-   GP ADMX file name: *Multitasking.admx*

<!--/ADMXBacked-->

<!--SupportedValues-->
The following list shows the supported values:

- 1 - Open windows and all tabs in Edge.
- 2 - Open windows and five most recent tabs in Edge.
- 3 - Open windows and three most recent tabs in Edge.
- 4 - Open windows only.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)