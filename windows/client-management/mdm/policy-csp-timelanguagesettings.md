---
title: Policy CSP - TimeLanguageSettings
description: Policy CSP - TimeLanguageSettings
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - TimeLanguageSettings



<hr/>

<!--StartPolicies-->
## TimeLanguageSettings policies  

<dl>
  <dd>
    <a href="#timelanguagesettings-allowset24hourclock">TimeLanguageSettings/AllowSet24HourClock</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="timelanguagesettings-allowset24hourclock"></a>**TimeLanguageSettings/AllowSet24HourClock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows for the configuration of the default clock setting to be the 24 hour format. Selecting 'Set 24 hour Clock' enables this setting. Selecting 'Locale default setting' uses the default clock as prescribed by the current locale setting.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Locale default setting.
-   1 (default) – Set 24 hour clock.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>TimeLanguageSettings policies supported by Microsoft Surface Hub  

-   [TimeLanguageSettings/Set24HourClock](#timelanguagesettings-set24hourclock)  
-   [TimeLanguageSettings/SetCountry](#timelanguagesettings-setcountry)  
-   [TimeLanguageSettings/SetLanguage](#timelanguagesettings-setlanguage)  
<!--EndSurfaceHub-->

