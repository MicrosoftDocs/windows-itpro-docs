---
title: Policy CSP - ADMX_IIS
description: Policy CSP - ADMX_IIS
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/17/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_IIS


<hr/>

<!--Policies-->
## ADMX_IIS policies  

<dl>
  <dd>
    <a href="#admx-iis-preventiisinstall">ADMX_IIS/PreventIISInstall</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-iis-preventiisinstall"></a>**ADMX_IIS/PreventIISInstall**  

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
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents installation of Internet Information Services (IIS) on this computer. 

- If you enable this policy setting, Internet Information Services (IIS) cannot be installed, and you will not be able to install Windows components or applications that require IIS. Users installing Windows components or applications that require IIS might not receive a warning that IIS cannot be installed because of this Group Policy setting. 

Enabling this setting will not have any effect on IIS if IIS is already installed on the computer. 

- If you disable or do not configure this policy setting, IIS can be installed, as well as all the programs and applications that require IIS to run."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent IIS installation*
-   GP name: *PreventIISInstall*
-   GP path: *Windows Components\Internet Information Services*
-   GP ADMX file name: *IIS.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>


<!--/Policies-->

