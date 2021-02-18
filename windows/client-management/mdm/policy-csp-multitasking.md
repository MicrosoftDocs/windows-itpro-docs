---
title: Policy CSP - Multitasking
description: Policy CSP - Multitasking
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/30/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Multitasking

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>9</sup></td>
</tr>
</table>

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

Enabling this policy restricts the number of Edge tabs that are allowed to appear in the Alt+Tab switcher. Alt+Tab can be configured to show all open Edge tabs, only the 5 most recent tabs, only the 3 most recent tabs, or no tabs. Setting the policy to no tabs configures the Alt+Tab switcher to show app windows only, which is the classic Alt+Tab behavior. 

This policy only applies to the Alt+Tab switcher. When the policy is not enabled, the feature respects the user's setting in the Settings app.
<!--/Description-->

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the inclusion of Edge tabs into Alt-Tab*
-   GP name: *BrowserAltTabBlowout*
-   GP path: *Windows Components/Multitasking*
-   GP ADMX file name: *Multitasking.admx*

<!--/ADMXBacked-->

<!--SupportedValues-->
The following list shows the supported values:

- 1 - Open windows and all tabs in Edge.
- 2 - Open windows and 5 most recent tabs in Edge.
- 3 - Open windows and 3 most recent tabs in Edge.
- 4 - Open windows only.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.
- 9 - Available in Windows 10, version 20H2.

<!--/Policies-->

