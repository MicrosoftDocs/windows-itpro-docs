---
title: Policy CSP - Troubleshooting
description: Policy CSP - Troubleshooting
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.date: 05/21/2019
---

# Policy CSP - Troubleshooting


<hr/>

<!--Policies-->
## Troubleshooting policies  

<dl>
  <dd>
    <a href="#troubleshooting-allowrecommendations">Troubleshooting/AllowRecommendations</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="troubleshooting-allowrecommendations"></a>**Troubleshooting/AllowRecommendations**  

<!--SupportedSKUs-->
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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
    <td></td>
    <td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows IT admins to configure how to apply recommended troubleshooting for known problems on the devices in their domains or IT environments.

<!--/Description-->

<!--SupportedValues-->
This is a numeric policy setting with merge algorithm (lowest value is the most secure) that uses the most restrictive settings for complex manageability scenarios.

Supported values:  
-   0 (default) - Turn this feature off.
-   1 - Turn this feature off but still apply critical troubleshooting.
-   2 - Notify users when recommended troubleshooting is available, then allow the user to run or ignore it.
-   3 - Run recommended troubleshooting automatically and notify the user after it ran successfully.
-   4 - Run recommended troubleshooting automatically without notifying the user.
-   5 - Allow the user to choose their own recommended troubleshooting settings.

By default, this policy is not configured and the SKU based defaults are used for managed devices. Current policy values for SKU's are as follows:
<table>
<tr>
    <th>SKU</th>
    <th>Unmanaged Default</th>
    <th>Managed Default</th>
</tr>
<tr>
    <td>Home</td>
    <td>Prompt (OOBE)</td>
    <td>Off</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Prompt (OOBE)</td>
    <td>Off</td>
</tr>
<tr>
    <td>Education</td>
    <td>On (auto)</td>
    <td>Off</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Off</td>
    <td>Off</td>
</tr>
<tr>
    <td>Government</td>
    <td>Off</td>
    <td>Off</td>
</tr>
</table>

<!--/SupportedValues-->
<!--ADMXMapped-->
ADMX Info:<br/>-   GP English name: <em>Troubleshooting: Allow users to access recommended troubleshooting for known problems</em>
-   GP name: <em>TroubleshootingAllowRecommendations</em>
-   GP path: <em>Troubleshooting and Diagnostics/Microsoft Support Diagnostic Tool</em>
-   GP ADMX file name: <em>MSDT.admx</em>

<!--/ADMXMapped-->

<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.
<!--/Policies-->
