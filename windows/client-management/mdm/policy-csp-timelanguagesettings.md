---
title: Policy CSP - TimeLanguageSettings
description: Learn to use the Policy CSP - TimeLanguageSettings setting to specify the time zone to be applied to the device.
ms.author: dansimp
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/28/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - TimeLanguageSettings



<hr/>

<!--Policies-->
## TimeLanguageSettings policies  

<dl>
  <dd>
    <a href="#timelanguagesettings-configuretimezone">TimeLanguageSettings/ConfigureTimeZone</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="timelanguagesettings-configuretimezone"></a>**TimeLanguageSettings/ConfigureTimeZone**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the time zone to be applied to the device. This is the standard Windows name for the target time zone.

> [!TIP]
> To get the list of available time zones, run `Get-TimeZone -ListAvailable` in PowerShell.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

