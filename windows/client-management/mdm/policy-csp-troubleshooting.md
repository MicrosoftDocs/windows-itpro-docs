---
title: Policy CSP - Troubleshooting
description: The Policy CSP - Troubleshooting setting allows IT admins to configure how to apply recommended troubleshooting for known problems on the devices in their domains.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.localizationpriority: medium
ms.date: 09/27/2019
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

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting allows IT admins to configure how to apply recommended troubleshooting for known problems on the devices in their domains or IT environments.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Troubleshooting: Allow users to access recommended troubleshooting for known problems*
-   GP name: *TroubleshootingAllowRecommendations*
-   GP path: *Troubleshooting and Diagnostics/Microsoft Support Diagnostic Tool*
-   GP ADMX file name: *MSDT.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting is a numeric policy setting with merge algorithm (lowest value is the most secure) that uses the most restrictive settings for complex manageability scenarios.

Supported values:  
-   0 (default) - Turn off this feature.
-   1 - Turn off this feature but still apply critical troubleshooting.
-   2 - Notify users when recommended troubleshooting is available, then allow the user to run or ignore it.
-   3 - Run recommended troubleshooting automatically and notify the user after it ran successfully.
-   4 - Run recommended troubleshooting automatically without notifying the user.
-   5 - Allow the user to choose their own recommended troubleshooting settings.

By default, this policy isn't configured and the SKU based defaults are used for managed devices. Current policy values for SKUs are as follows:

|SKU|Unmanaged Default|Managed Default|
|--- |--- |--- |
|Home|Prompt (OOBE)|Off|
|Pro|Prompt (OOBE)|Off|
|Education|On (auto)|Off|
|Enterprise|Off|Off|
|Government|Off|Off|

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

