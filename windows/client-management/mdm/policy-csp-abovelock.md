---
title: Policy CSP - AboveLock
description: Learn the various AboveLock Policy configuration service provider (CSP) for Windows editions of Home, Pro, Business, and more. 
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - AboveLock



<hr/>

<!--Policies-->
## AboveLock policies  

<dl>
  <dd>
    <a href="#abovelock-allowcortanaabovelock">AboveLock/AllowCortanaAboveLock</a>
  </dd>
  <dd>
    <a href="#abovelock-allowtoasts">AboveLock/AllowToasts</a>
  </dd>
</dl>


<hr/>


<!--Policy-->
<a href="" id="abovelock-allowcortanaabovelock"></a>**AboveLock/AllowCortanaAboveLock**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td><td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>

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
Added in Windows 10, version 1607. Specifies whether or not the user can interact with Cortana using speech while the system is locked. If you enable or don’t configure this setting, the user can interact with Cortana using speech while the system is locked. If you disable this setting, the system will need to be unlocked for the user to interact with Cortana using speech.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow Cortana above lock screen*
-   GP name: *AllowCortanaAboveLock*
-   GP path: *Windows Components/Search*
-   GP ADMX file name: *Search.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 (default) - Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="abovelock-allowtoasts"></a>**AboveLock/AllowToasts**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td><td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
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
Specifies whether to allow toast notifications above the device lock screen.

Most restricted value is 0.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Not allowed.
-   1 (default) - Allowed.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>


<!--/Policies-->

